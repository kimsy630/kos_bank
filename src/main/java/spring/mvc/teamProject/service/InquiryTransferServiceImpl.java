package spring.mvc.teamProject.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Base64.Decoder;
import java.util.Base64.Encoder;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Date;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.InetAddress;
import java.net.Socket;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.teamProject.persistence.InquiryTransferDAOImpl;
import spring.mvc.teamProject.persistence.FinancialProductsDAO;
import spring.mvc.teamProject.persistence.InquiryTransferDAO;
import spring.mvc.teamProject.persistence.RegisterReleaseDAO;
import spring.mvc.teamProject.vo.AccountTransferVO;
import spring.mvc.teamProject.vo.AccountVO;
import spring.mvc.teamProject.vo.Fixed_depositVO;
import spring.mvc.teamProject.vo.LoansVO;
import spring.mvc.teamProject.vo.TransferVO;
import spring.mvc.teamProject.vo.fundVO;
import spring.mvc.teamProject.vo.installment_savingsVO;


@Service
public class InquiryTransferServiceImpl implements InquiryTransferService{
	
	@Autowired
	InquiryTransferDAO IDAO;
	
	@Autowired
	RegisterReleaseDAO RDAO;
	
	@Autowired
	FinancialProductsDAO FDAO;
	
	@Override
	public void transferTable(HttpServletRequest req, Model model) {
		TransferVO vo = new TransferVO();
		vo.setAccount(req.getParameter("account"));
		vo.setSender_account(req.getParameter("sender_account"));
		System.out.println(req.getParameter("money"));
		vo.setMoney(Integer.parseInt(req.getParameter("money")));
		vo.setSender_name(req.getParameter("sender_name"));
		vo.setOut_comment(req.getParameter("out_comment"));
		vo.setIn_comment(req.getParameter("in_comment"));
		System.out.println("vo : "+vo);
		
		model.addAttribute("vo",vo);
		
	}
	// 김소림
	// 계좌이체 실행
	@Override
	public void transferAction(HttpServletRequest req, Model model) {
		String strId = (String)req.getSession().getAttribute("id");
		
		List<AccountVO> list= new ArrayList();
		list = RDAO.selectById(strId);
		System.out.println("list : "+list);
		TransferVO vo = new TransferVO();
		AccountVO vo2 = new AccountVO();
		vo.setAccount(req.getParameter("account"));
		vo.setSender_account(req.getParameter("sender_account"));
		System.out.println("money : "+req.getParameter("money"));
		vo.setMoney(Integer.parseInt(req.getParameter("money")));
		vo.setSender_name(req.getParameter("sender_name"));
		System.out.println("sender_name : "+req.getParameter("sender_name"));
		vo.setOut_comment(req.getParameter("out_comment"));
		vo.setIn_comment(req.getParameter("in_comment"));
		
		//-------------------------------------------
		// pwd Chk
		vo2.setAccount(req.getParameter("account"));
		vo2.setAccountPW(Integer.parseInt(req.getParameter("accountPW")));
		String account = req.getParameter("account");
		int money = Integer.parseInt(req.getParameter("money"));
		String sender_account = req.getParameter("sender_account");
		
		
		int insertCnt= FDAO.checkPwd(vo2);
		System.out.println("insertCnt : "+ insertCnt);
		
		if(insertCnt == 1){
			
			insertCnt = 2;
			// 내 계좌 이체내역
			int mylog = IDAO.addMyLog(vo);
			// 상대 계좌 입금내역
			int yourlog = IDAO.addYourLog(vo);
			// 잔액 감소
			IDAO.withdrawal(vo);
			// 상대 잔액 추가
			IDAO.deposit(vo);
			
			System.out.println("mylog : "+mylog);
			System.out.println("yourlog : "+yourlog);
			System.out.println("vo2"+vo);
			model.addAttribute("vo",vo);
			model.addAttribute("insertCnt",insertCnt);
			// 6. 자동이체 완료시 문자알림 전송
			String charsetType = "UTF-8"; // EUC-KR 또는 UTF-8
			
			System.out.println("check in service");
			String action = "go";
			
			try {
				if (action.equals("go")) {

					String sms_url = "";
					sms_url = "https://sslsms.cafe24.com/sms_sender.php"; // SMS 전송요청 URL
					String user_id = base64Encode("kimsolim77"); // SMS아이디
					String secure = base64Encode("05a9390b0d3d70d5ddaa879f77878edf");// 인증키

					//문자 발송용 당일 날짜 출력(DD값만)
					Date date = new Date();
					SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd");
					String setDate = dateFormat.format(date); // 오늘 일자
					
					// 전화번호 설정부분
					String msg = base64Encode("[코스뱅크] 고객님, " + "\n" + setDate +"에 코스뱅크 계좌 [" + account + "]에서 " + money +" 원이 ["+ sender_account +"] 으로 자동이체 되었습니다. 자동이체 변경/조회를 원하시면 홈페이지를 방문해주세요.");		// 메시지 작성부분
					String rphone = base64Encode("010-2777-3521");	// 수신번호
					String sphone1 = base64Encode("010");			// 발신번호1
					String sphone2 = base64Encode("2777");			// 발신번호2
					String sphone3 = base64Encode("3521");			// 발신번호3
					String rdate = base64Encode("");				// 예약일자
					String rtime = base64Encode("");				// 예약시간
					String mode = base64Encode("1");				
					String subject = "";
					String testflag = base64Encode("");
					String destination = base64Encode("");
					String repeatFlag = base64Encode("");
					String repeatNum = base64Encode("");
					String repeatTime = base64Encode("");
					String returnurl = "";
					String nointeractive = "";
					String smsType = base64Encode("L");				// 단문/장문 문자 설정(L 기본값 설정)

					String[] host_info = sms_url.split("/");
					String host = host_info[2];
					String path = "/" + host_info[3];
					int port = 80;

					// 데이터 맵핑 변수 정의
					String arrKey[] = new String[] { "user_id", "secure", "msg", "rphone", "sphone1", "sphone2", "sphone3",
							"rdate", "rtime", "mode", "testflag", "destination", "repeatFlag", "repeatNum", "repeatTime",
							"smsType", "subject" };
					String valKey[] = new String[arrKey.length];
					valKey[0] = user_id;
					valKey[1] = secure;
					valKey[2] = msg;
					valKey[3] = rphone;
					valKey[4] = sphone1;
					valKey[5] = sphone2;
					valKey[6] = sphone3;
					valKey[7] = rdate;
					valKey[8] = rtime;
					valKey[9] = mode;
					valKey[10] = testflag;
					valKey[11] = destination;
					valKey[12] = repeatFlag;
					valKey[13] = repeatNum;
					valKey[14] = repeatTime;
					valKey[15] = smsType;
					valKey[16] = subject;

					String boundary = "";
					Random rnd = new Random();
					String rndKey = Integer.toString(rnd.nextInt(32000));
					MessageDigest md = MessageDigest.getInstance("MD5");
					byte[] bytData = rndKey.getBytes();
					md.update(bytData);
					byte[] digest = md.digest();
					for (int j = 0; j < digest.length; j++) {
						boundary = boundary + Integer.toHexString(digest[j] & 0xFF);
					}
					boundary = "---------------------" + boundary.substring(0, 11);

					// 본문 생성
					String data = "";
					String index = "";
					String value = "";
					for (int j = 0; j < arrKey.length; j++) {
						index = arrKey[j];
						value = valKey[j];
						data += "--" + boundary + "\r\n";
						data += "Content-Disposition: form-data; name=\"" + index + "\"\r\n";
						data += "\r\n" + value + "\r\n";
						data += "--" + boundary + "\r\n";
					}
				
				// out.println(data);
				System.out.println("data check : " + data);

				InetAddress addr = InetAddress.getByName(host);
				Socket socket = new Socket(host, port);
				// 헤더 전송
				BufferedWriter wr = new BufferedWriter(new OutputStreamWriter(socket.getOutputStream(), charsetType));
				wr.write("POST " + path + " HTTP/1.0\r\n");
				wr.write("Content-Length: " + data.length() + "\r\n");
				wr.write("Content-type: multipart/form-data, boundary=" + boundary + "\r\n");
				wr.write("\r\n");

				// 데이터 전송
				wr.write(data);
				wr.flush();

				// 결과값 얻기
				BufferedReader rd = new BufferedReader(new InputStreamReader(socket.getInputStream(), charsetType));
				String line;
				String alert = "";
				ArrayList<String> tmpArr = new ArrayList<String>();
				while ((line = rd.readLine()) != null) {
					tmpArr.add(line);
				}
				wr.close();
				rd.close();

				String tmpMsg = (String) tmpArr.get(tmpArr.size() - 1);
				String[] rMsg = tmpMsg.split(",");
				String Result = rMsg[0]; // 발송결과
				String Count = ""; // 잔여건수
				if (rMsg.length > 1) {
					Count = rMsg[1];
				}

					// 발송결과 알림
					if (Result.equals("success")) {
						System.out.println("성공적으로 발송하였습니다.");
						System.out.println(" 잔여건수는 " + Count + "건 입니다.");
					} else if (Result.equals("reserved")) {
						System.out.println("성공적으로 예약되었습니다");
						System.out.println(" 잔여건수는 " + Count + "건 입니다.");
					} else if (Result.equals("3205")) {
						System.out.println("잘못된 번호형식입니다.");
					} else {
						System.out.println("[Error]" + Result);
					} 
				} 
				
			}catch(Exception e){
				e.printStackTrace();
			}
			return;
		}
			
		
		 else {
			insertCnt = 0;
			model.addAttribute("insertCnt",insertCnt);
			return;
		}
	}

/**
	 * BASE64 Encoder
	 * 
	 * @param str
	 * @return
	 */
	public static String base64Encode(String str) throws java.io.IOException {
		Encoder encoder = Base64.getEncoder();
		byte[] strByte = str.getBytes("UTF-8");
		String result = encoder.encodeToString(strByte);
		return result;
	}

	/**
	 * BASE64 Decoder
	 * 
	 * @param str
	 * @return
	 */
	public static String base64Decode(String str) throws java.io.IOException {
		Decoder decoder = Base64.getDecoder();
		byte[] strByte = decoder.decode

		(str);
		String result = new String(strByte);
		return result;
	}
	

	@Autowired
	InquiryTransferDAOImpl InquiryTransferDAO;
	
	//입출금 계좌조회 (정하늘)
	@Override  
	public void AccountTable(HttpServletRequest req, Model model) {
		String strId = (String)req.getSession().getAttribute("id");
		
		List<AccountTransferVO> list = InquiryTransferDAO.AccountTable(strId);
		System.out.println(list);
		model.addAttribute("list", list);
	}
	//대출 조회 (정하늘)
	@Override
	public void LoansTable(HttpServletRequest req, Model model) {
		String strId = (String)req.getSession().getAttribute("id");
		
		List<LoansVO> list = InquiryTransferDAO.LoansTable(strId);
		System.out.println(list.size());
		
		model.addAttribute("list", list);
	}
	//적금조회 (정하늘)
	@Override
	public void IS_Table(HttpServletRequest req, Model model) {
		String strId = (String)req.getSession().getAttribute("id");
		
		List<installment_savingsVO> list = InquiryTransferDAO.IS_Table(strId);
		System.out.println("list => " + list);
		
		model.addAttribute("list", list);
	}
	//펀드조회(정하늘)
	@Override
	public void fund_Table(HttpServletRequest req, Model model) {
		String strId = (String)req.getSession().getAttribute("id");
		
		List<fundVO> list = InquiryTransferDAO.fund_Table(strId);
		System.out.println("list => " + list);
		
		model.addAttribute("list", list);
		
	}
	//예금조회 (정하늘)
	@Override
	public void DepositTable(HttpServletRequest req, Model model) {
		String strId = (String)req.getSession().getAttribute("id");
		
		List<Fixed_depositVO> list = InquiryTransferDAO.DepositTable(strId);
		System.out.println("list => " + list);
		
		model.addAttribute("list", list);
		
	}
	//정지/휴면조회  (정하늘)
	@Override 
	public void StopSleepTable(HttpServletRequest req, Model model) {
		String strId = (String)req.getSession().getAttribute("id");
		
		List<AccountTransferVO> list = InquiryTransferDAO.StopSleepTable(strId);
		System.out.println("list => " + list);
		
		model.addAttribute("list", list);
	}
	//전체조회
	@Override
	public void AllTable(HttpServletRequest req, Model model) {
		String strId = (String)req.getSession().getAttribute("id");
		
		List<AccountTransferVO> list1 = InquiryTransferDAO.AccountTable(strId); //입출금조회
		List<LoansVO> list2 = InquiryTransferDAO.LoansTable(strId);///대출조회
		List<installment_savingsVO> list3 = InquiryTransferDAO.IS_Table(strId);	//적금조회
		List<fundVO> list4 = InquiryTransferDAO.fund_Table(strId);//펀드조회
		List<Fixed_depositVO> list5 = InquiryTransferDAO.DepositTable(strId);//예금조회
		List<AccountTransferVO> list6 = InquiryTransferDAO.StopSleepTable(strId);//정지/휴면
		
		model.addAttribute("list1", list1);
		model.addAttribute("list2", list2);
		model.addAttribute("list3", list3);
		model.addAttribute("list4", list4);
		model.addAttribute("list5", list5);
		model.addAttribute("list6", list6);
		
	}
	//이체내역 조회
	@Override
	public void TransactionDetails(HttpServletRequest req, Model model) {
		String strId = (String)req.getSession().getAttribute("id");
		
		List<AccountVO> accList = InquiryTransferDAO.TransactionDetails(strId);
		
		model.addAttribute("accList", accList);
	}
	//이체내역 조회 - ALL
	@Override
	public void TransactionDetails_Table(HttpServletRequest req, Model model) {
		String view_AccountNum = req.getParameter("view_AccountNum");
		String start_date = req.getParameter("start_date");
		String end_date = req.getParameter("end_date");
		
		
		// 3단계. 화면으로 입력받은 값을 받아온다.
	      // 페이징
	      int pageSize = 10;      // 한 페이지당 출력할 글 갯수
	      int pageBlock = 3;      // 한 블럭당 페이지 갯수
	      
	      int cnt = 0;         // 글갯수
	      int start = 0;         // 현재 페이지 시작 글번호
	      int end = 0;         // 현재 페이지 마지막 글번호
	      int number = 0;         // 출력용 글번호
	      String pageNum = "";    // 페이지 번호
	      int currentPage = 0;   // 현재 페이지
	      
	      int pageCount = 0;      // 페이지 갯수
	      int startPage = 0;      // 시작페이지
	      int endPage = 0;      // 마지막 페이지
	      
	      Map<String,Object> map2 = new HashMap<String,Object>();
	      map2.put("start_date", start_date);
	      map2.put("end_date", end_date);
	      map2.put("view_AccountNum", view_AccountNum);
	      
	      cnt = InquiryTransferDAO.get_transferCnt(map2);
	      System.out.println("cnt => " + cnt);
	      
	      
	      pageNum = req.getParameter("pageNum");
	      
	      if(pageNum == null) {
	         pageNum = "1";   // 첫페이지를 1페이지로 지정
	      }
	      // 글 30건 기준
	      currentPage = Integer.parseInt(pageNum);   // 현재페이지 : 1
	      System.out.println("currentPage : " + currentPage);
	      
	      // 페이지 갯수 6 = (30 / 5) + (0)
	      pageCount = (cnt / pageSize) + (cnt % pageSize > 0 ? 1 : 0);  // 페이지갯수 + 나머지 있으면 1페이지 
	      
	      // 현재페이지 시작 글번호(페이지별)
	      // 1 = (1 - 1) * 5 + 1
	      start = (currentPage - 1) * pageSize + 1;
	      
	      // 현재페이지 마지막 글번호(페이지별)
	      // 5 = 1  + 5 - 1;
	      end = start + pageSize - 1;
	      
	      System.out.println("start : " + start);
	      System.out.println("end : " + end);
	      
	      // 출력용 글번호 / 최종 페이지 => 30번 / 1페이지 
	      // 30 = 30 - (1 - 1) * 5;
	      number = cnt - (currentPage - 1) * pageSize;
	      System.out.println("number : " + number);
	      System.out.println("pageSize : " + pageSize);
	      
	      // 시작페이지
	      // 1 = (1 / 3) * 3 + 1;
	      startPage = (currentPage / pageBlock) * pageBlock + 1;
	      if(currentPage % pageBlock == 0) startPage -= pageBlock;
	      
	      System.out.println("startPage : " + startPage);
	      
	      // 마지막페이지
	      endPage = startPage + pageBlock - 1;
	      if(endPage > pageCount) endPage = pageCount;
	      
	      System.out.println("endPage : " + endPage);
	      
	      System.out.println("==========================");
	      
	      if(cnt > 0) {
		
		Map<String,Object> map = new HashMap<String,Object>();
		map.put("start", start);
   	 	map.put("end", end);
		map.put("view_AccountNum", view_AccountNum);
		map.put("start_date", start_date);
		map.put("end_date", end_date);
		List<AccountTransferVO> list = InquiryTransferDAO.TransactionDetails_Table_ALL(map);
		
		Map<String,Object> outTran = InquiryTransferDAO.outTran(map);
		System.out.println(outTran.toString());
		Map<String,Object> inTran = InquiryTransferDAO.inTran(map);
		System.out.println(inTran.toString());
		
		  model.addAttribute("list", list);	//입출금내역 리스트
		  
		  model.addAttribute("outTran", outTran); //출금 갯수(거래요금)
		  
		  model.addAttribute("inTran", inTran);		//입금 갯수(거래요금)
		  
		
		  model.addAttribute("cnt", cnt);           // 글갯수
	      model.addAttribute("number", number);      // 출력용 글번호
	      model.addAttribute("pageNum", pageNum);    // 페이지 번호
	      model.addAttribute("startPage", startPage);    // 시작페이지
    	  model.addAttribute("endPage", endPage);      // 마지막페이지
    	  model.addAttribute("pageBlock", pageBlock);   // 한 블럭당 페이지 갯수
    	  model.addAttribute("pageCount", pageCount);   // 페이지 갯수
    	  model.addAttribute("currentPage", currentPage);// 현재페이지
	      }
		
		//View_Content
		
		
	}

}

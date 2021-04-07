package spring.mvc.teamProject.service;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.net.InetAddress;
import java.net.Socket;
import java.security.MessageDigest;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Base64.Decoder;
import java.util.Base64.Encoder;

import javax.servlet.http.HttpServletRequest;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.teamProject.persistence.AutoTransferDAO;
import spring.mvc.teamProject.vo.AutoTransferVO;

@Service
public class AutoTransferServiceImpl implements AutoTransferService {
	
	@Autowired
	AutoTransferDAO aDAO;
	
	// 김소림
	// 자동이체 조회
	@Override
	public void AutoTransferList(HttpServletRequest req, Model model) {
		String account = req.getParameter("account");
		
		List<AutoTransferVO> list = aDAO.AutoTransferList(account);
		
		System.out.println("Autolist : "+list);
		
		model.addAttribute("list", list);
		
	}
	
	// 김소림
	// 자동이체 등록
	@Override
	public void AutoTransferAdd(HttpServletRequest req, Model model) {
		AutoTransferVO vo = new AutoTransferVO();
		vo.setAccount(req.getParameter("account"));
		vo.setJd_autoMoney(Integer.parseInt(req.getParameter("jd_autoMoney")));
		vo.setJd_account(req.getParameter("jd_account"));
		vo.setJd_outCycle(req.getParameter("jd_outCycle"));
		vo.setJd_expirationDate(req.getParameter("jd_expirationDate"));
		vo.setJd_registDate(req.getParameter("jd_registDate"));
		vo.setJd_outDate(req.getParameter("jd_outDate"));
		vo.setJd_inPlace(req.getParameter("jd_inPlace"));
		System.out.println("vo : "+vo);
		int insertCnt = aDAO.AutoTransferAdd(vo);
		
		model.addAttribute("vo", vo);
		model.addAttribute("insertCnt", insertCnt);
	}
	
	// 김소림
		// 자동이체 실행
		@Override
		public void AutoTransferPractice() {
			
			// 날짜포멧 - 지정일 이체를 위해 오늘 일자만 리턴
			SimpleDateFormat format = new SimpleDateFormat("dd");
			Date date = new Date();
			
			// 자동이체용 당일 날짜 출력 (day값만)
			String day = format.format(date);
			System.out.println("testDate : "+day);
			
			// 자동이체 조건 쿼리
			int jd_key=0;
			String account="";
			String jd_account="";
			int jd_autoMoney=0;
			String jd_inPlace = "";
			String jd_status = "";
			System.out.println(Integer.toString(Integer.parseInt(day)));
			int num = Integer.parseInt(day);
			day= Integer.toString(num);
			List<AutoTransferVO> transferInfo = aDAO.selectByDate(day);
			
			System.out.println("자동이체 할 객체 Chk : "+ transferInfo);
			
			// 자동이체 실행
			if(transferInfo != null) {
					int i = 0;
					while(i < transferInfo.size()) {
						AutoTransferVO vo = new AutoTransferVO();
						
						// UPDATE 실행
						jd_key = transferInfo.get(i).getJd_key();
						account = transferInfo.get(i).getAccount();
						jd_account = transferInfo.get(i).getJd_account();
						jd_autoMoney = transferInfo.get(i).getJd_autoMoney();
						jd_inPlace = transferInfo.get(i).getJd_inPlace();
						jd_status = transferInfo.get(i).getJd_status();
						
						vo.setJd_key(jd_key);
						vo.setAccount(account);
						vo.setJd_account(jd_account);
						vo.setJd_autoMoney(jd_autoMoney);
						vo.setJd_inPlace(jd_inPlace);
						vo.setJd_status(jd_status);
						
						System.out.println("vo : "+ vo);
						// 출금 UPDATE
						aDAO.AutoWithdrawal(vo);
						
						// 입금 UPDATE
						aDAO.AutoDeposit(vo);
						
						// 최근거래내역 UPDATE
						aDAO.lastRunDate(vo);
						
						// 계좌이체 테이블 로그(출금)
						aDAO.TransferMyLog(vo);
						
						// 계좌이체 테이블 로그(입금)
						aDAO.TransferYourLog(vo);				
						
						// 자동이체내역 로그(출금)
						//aDAO.sendAutoTrans(vo);
						
						// 자동이체내역 로그(입금)
						//aDAO.receiveAutoTrans(vo);
						
						/*
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
								SimpleDateFormat dateFormat = new SimpleDateFormat("MM/dd");
								String setDate = dateFormat.format(date); // 오늘 일자
								
								// 전화번호 설정부분
								String msg = base64Encode("[코스뱅크] 고객님, " + "\n" + setDate +"에 코스뱅크 계좌 [" + account + "]에서 " + jd_autoMoney +" 원이 ["+ jd_account +"] 으로 자동이체 되었습니다. 자동이체 변경/조회를 원하시면 홈페이지를 방문해주세요.");		// 메시지 작성부분
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
						*/
					i++;
				}
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
	
	// 자동이체 해지 리스트
	@Override
	public void AutoTransferDeleteList(HttpServletRequest req, Model model) {
		int key = Integer.parseInt(req.getParameter("jd_key"));
		List<AutoTransferVO> list = aDAO.AutoTransferDeleteList(key);
		System.out.println("Deletelist : "+list);
		model.addAttribute("list", list);
	}
	
	@Override
	// 자동이체 해지
	public void AutoTransferDeleteChk(HttpServletRequest req, Model model) {
		String account = req.getParameter("account");
		int accountPW = (Integer.parseInt(req.getParameter("accountPW")));
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("account", account);
		map.put("accountPW", accountPW);
		System.out.println("account : "+account);
		System.out.println("accountPW : "+accountPW);
		int deleteCnt = aDAO.AutoTransferDeleteChk(map);
		
		if(deleteCnt == 1) {
			int insertCnt = aDAO.AutoTransferDelete(account);
			System.out.println("insertCnt : "+insertCnt);
			model.addAttribute("insertCnt",insertCnt);
		} 
		
		
	}

	
}

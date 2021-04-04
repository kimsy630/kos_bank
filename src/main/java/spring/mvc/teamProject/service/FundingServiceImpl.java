package spring.mvc.teamProject.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import spring.mvc.teamProject.persistence.FundingDAOImpl;
import spring.mvc.teamProject.vo.FundingVO;
import spring.mvc.teamProject.vo.FundCommentVO;
import spring.mvc.teamProject.vo.FundInvestorVO;
import spring.mvc.teamProject.vo.MembersVO;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.text.ParseException;
import java.text.SimpleDateFormat;

@Service
public class FundingServiceImpl implements FundingService{

	@Autowired
	FundingDAOImpl FundingDAO;
	
	// 고객상담 글목록 조회
	@Override  
	public void getFundingInfo(HttpServletRequest req, Model model) {
		String f_category = req.getParameter("f_category");
		
		if(f_category.equals("전체")) {
			
			try {
				List<FundingVO> list = FundingDAO.getFundingAllInfo();
				int cnt = list.size();
				for(int i = 0; i< cnt; i++) {
					
					String str_end_date = list.get(i).getF_end_date();
					SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
					Date end_date = transFormat.parse(str_end_date);
					Date today = new Date();
					int compare = end_date.compareTo(today);
					if(compare < 0) {
						list.remove(i);
					}
				}
				model.addAttribute("list", list);
			} 
			catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else {
			try {
				List<FundingVO> list = FundingDAO.getFundingCategoryInfo(f_category);
				int cnt = list.size();
				for(int i = 0; i< cnt; i++) {
					
					String str_end_date = list.get(i).getF_end_date();
					SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd");
					Date end_date = transFormat.parse(str_end_date);
					Date today = new Date();
					int compare = end_date.compareTo(today);
					if(compare < 0) {
						list.remove(i);
					}
				}
				model.addAttribute("list", list);
			} 
			catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
	}
	
	// 펀드 상세내용 조회 
	@Override  
	public void getFundingContent(HttpServletRequest req, Model model) {
		int f_num = Integer.parseInt(req.getParameter("f_num"));
		
		List<FundingVO> list_content = FundingDAO.getFundingContent(f_num);
		List<FundCommentVO> list_comment = FundingDAO.readComment(f_num);
		List<FundInvestorVO> list_investor = FundingDAO.getFundInvestorInfo(f_num);
		//펀딩금액
		int f_money = 0;
		for(int i = 0; i < list_investor.size(); i++) {
			f_money += list_investor.get(i).getF_money();
		}
		
		//펀딩인원
		int investor_count = list_investor.size();
		//댓글수
		int comment_count = list_comment.size();
		//남은일수
		try {
			Calendar end_day = Calendar.getInstance();
			FundingVO vo = list_content.get(0);
			String str = vo.getF_end_date();
			SimpleDateFormat fm = new SimpleDateFormat("yyyy-MM-dd");
			Date to = fm.parse(str);
			end_day.setTime(to);
			
			Calendar today = Calendar.getInstance();
			
			long l_endday = end_day.getTimeInMillis() / (24*60*60*1000);
			long l_today = today.getTimeInMillis() / (24*60*60*1000);
			int d_day = (int)(l_endday - l_today);
			
			model.addAttribute("d_day", d_day);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		model.addAttribute("f_money", f_money);
		model.addAttribute("investor_count", investor_count);
		model.addAttribute("comment_count", comment_count);
		model.addAttribute("f_num", f_num);
		model.addAttribute("list_comment", list_comment);
		model.addAttribute("list_content", list_content);
	}
	
	// 펀드 댓글 작성
	@Override  
	public void writeComment(HttpServletRequest req, Model model) {
		int f_num = Integer.parseInt(req.getParameter("f_num"));
		String c_title = req.getParameter("c_title");
		String c_content = req.getParameter("c_content");
		String c_name = req.getParameter("c_name");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("f_num", f_num);
		map.put("c_title", c_title);
		map.put("c_content", c_content);
		map.put("c_name", c_name);
		
		int deleteCnt = FundingDAO.writeComment(map);
		
		model.addAttribute("deleteCnt",deleteCnt);
	}
	
	// 펀드 구매
	@Override  
	public void buyFund(HttpServletRequest req, Model model) {
		int f_num = Integer.parseInt(req.getParameter("f_num"));
		String agree1 = req.getParameter("agree1");
		String agree2 = req.getParameter("agree2");
		String agree3 = req.getParameter("agree3");
		
		int deleteCnt0 = 0;
		if(agree1.equals("no") || agree2.equals("no") || agree3.equals("no")) {
			deleteCnt0 = -1;
			return;
		}
		
		String id = req.getParameter("id");
		String f_account = req.getParameter("f_account");
		int f_money = Integer.parseInt(req.getParameter("f_money"));
		
		List<MembersVO> list_member = FundingDAO.getMemberInfo(id);
		MembersVO vo = list_member.get(0);
		String m_email = vo.getEmail();
		String m_name = vo.getName();
		String m_phone = vo.getPhone();
		String m_address = vo.getAddress();
		String m_postnum = vo.getPostnum();
		
		List<FundingVO> list_content = FundingDAO.getFundingContent(f_num);
		FundingVO vo2 = list_content.get(0);
		String account = vo2.getAccount();
		String f_name = vo2.getF_name(); 
		String f_title = vo2.getF_title(); 
		
		// 펀드 구매(참자가 정보 등록)
		Map<String, Object> map1 = new HashMap<String, Object>();
		map1.put("id", id);
		map1.put("f_num", f_num);
		map1.put("account", account);
		map1.put("f_account", f_account);
		map1.put("f_money", f_money);
		int deleteCnt1 = FundingDAO.registerInvestor(map1);
		// 펀드 구매(참가자 계좌에서 출금)
		Map<String, Object> map2 = new HashMap<String, Object>();
		map2.put("f_money", f_money);
		map2.put("f_account", f_account);
		int deleteCnt2 = FundingDAO.withdrawInvestorAccount(map2);
		// 펀드 구매(등록자 계좌에 입금)
		Map<String, Object> map3 = new HashMap<String, Object>();
		map3.put("f_money", f_money);
		map3.put("account", account);
		int deleteCnt3 = FundingDAO.depositRegistrantAccount(map3);
		// 펀드 구매(등록자 계좌에서 출금-수수료)
		int fees = (int)(f_money * 0.1);
		Map<String, Object> map4 = new HashMap<String, Object>();
		map4.put("f_money", fees);
		map4.put("f_account", account);
		int deleteCnt4 = FundingDAO.withdrawInvestorAccount(map4);
		// 펀드 구매(은행 계좌에 입금-수수료)
		Map<String, Object> map5 = new HashMap<String, Object>();
		map5.put("f_money", fees);
		map5.put("account", "33-09-0000001");	//은행계좌 33-09-0000001
		int deleteCnt5 = FundingDAO.depositRegistrantAccount(map5);
		// 펀드 구매(등록자 입금에 대한 이체 history 작성)
		Map<String, Object> map6 = new HashMap<String, Object>();
		map6.put("f_account", f_account);
		map6.put("account", account);
		map6.put("f_money", f_money);
		map6.put("f_name", f_name);
		int deleteCnt6 = FundingDAO.depositAccountTransfer(map6);
		// 펀드 구매(참자가 출금에 대한 history 작성)
		Map<String, Object> map7 = new HashMap<String, Object>();
		map7.put("account", account);
		map7.put("f_account", f_account);
		map7.put("f_money", f_money);
		map7.put("id", id);
		int deleteCnt7 = FundingDAO.withdrawAccountTransfer(map7);
		// 펀드 구매(은행 입금에 대한 이체 history 작성-수수료)
		Map<String, Object> map8 = new HashMap<String, Object>();
		map8.put("f_account", "33-09-0000001");
		map8.put("account", account);
		map8.put("f_money", fees);
		map8.put("f_name", f_name);
		int deleteCnt8 = FundingDAO.depositAccountTransfer(map8);
		// 펀드 구매(등록자 출금에 대한 history 작성-수수료)
		Map<String, Object> map9 = new HashMap<String, Object>();
		map9.put("account", account);
		map9.put("f_account", "33-09-0000001");
		map9.put("f_money", fees);
		map9.put("id", id);
		int deleteCnt9 = FundingDAO.withdrawAccountTransfer(map9);
		
		
		model.addAttribute("deleteCnt1",deleteCnt0);
		model.addAttribute("deleteCnt2",deleteCnt1);
		model.addAttribute("deleteCnt3",deleteCnt2);
		model.addAttribute("deleteCnt4",deleteCnt3);
		model.addAttribute("deleteCnt5",deleteCnt4);
		model.addAttribute("deleteCnt6",deleteCnt5);
		model.addAttribute("deleteCnt7",deleteCnt6);
		model.addAttribute("deleteCnt8",deleteCnt7);
		model.addAttribute("deleteCnt9",deleteCnt8);
		model.addAttribute("deleteCnt10",deleteCnt9);
		
		//카카오페이 정보
		System.out.println(f_title + f_money + m_email + m_name + m_phone + m_address + m_postnum);
		model.addAttribute("f_title",f_title);
		model.addAttribute("f_money",f_money);
		model.addAttribute("m_email",m_email);
		model.addAttribute("m_name",m_name);
		model.addAttribute("m_phone",m_phone);
		model.addAttribute("m_address",m_address);
		model.addAttribute("m_postnum",m_postnum);
	}
	
	// 키 가져오기
	@Override  
	public void getKey(HttpServletRequest req, Model model) {
		int f_num = Integer.parseInt(req.getParameter("f_num"));
		
		model.addAttribute("f_num", f_num);
	}
	
	// 키 가져오기
	@Override  
	public void addFund(MultipartHttpServletRequest  req, Model model) {
		String[] p_image = new String[3];
		String strFileName = "";
	      
         MultipartFile f_filename = req.getFile("f_filename");
         String saveDir = req.getRealPath("/resources/images/");
         String realDir = req.getRealPath("/images/");
         try {
        	 f_filename.transferTo(new File(saveDir + f_filename.getOriginalFilename()));
            
            FileInputStream fis = new FileInputStream(saveDir + f_filename.getOriginalFilename());
            FileOutputStream fos = new FileOutputStream(realDir + f_filename.getOriginalFilename());
               
            int data = 0;
            while((data = fis.read()) != -1) {
               fos.write(data);
            }
            fis.close();
            fos.close();
         }catch (Exception e) {
            e.getStackTrace();
         }
         
         strFileName = f_filename.getOriginalFilename();
	      

	      
		String id = req.getParameter("id");
		String account = req.getParameter("account");
		String f_content = req.getParameter("f_content");
		String f_start_date = req.getParameter("f_start_date");
		String f_end_date = req.getParameter("f_end_date");
		String f_target_money = req.getParameter("f_target_money");
		String f_category = req.getParameter("f_category");
		String f_name = req.getParameter("f_name");
		String f_phone = req.getParameter("f_phone");
		String f_Email = req.getParameter("f_Email");
		String f_title = req.getParameter("f_title");
		
		System.out.println(id + account + f_content + f_start_date + f_end_date + f_target_money + f_category + f_name + f_phone + f_Email + strFileName + f_title);
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id", id);
		map.put("account", account);
		map.put("f_content", f_content);
		map.put("f_start_date", f_start_date);
		map.put("f_end_date", f_end_date);
		map.put("f_target_money", f_target_money);
		map.put("f_category", f_category);
		map.put("f_name", f_name);
		map.put("f_phone", f_phone);
		map.put("f_Email", f_Email);
		map.put("f_filename", strFileName);
		map.put("f_title", f_title);
		
		int deleteCnt = FundingDAO.addFund(map);
		model.addAttribute("deleteCnt",deleteCnt);
	}
	
	
}

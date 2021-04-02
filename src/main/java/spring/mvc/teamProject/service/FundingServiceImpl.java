package spring.mvc.teamProject.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.teamProject.persistence.FundingDAOImpl;
import spring.mvc.teamProject.vo.FundingVO;
import spring.mvc.teamProject.vo.FundCommentVO;
import spring.mvc.teamProject.vo.FundInvestorVO;

import java.util.Calendar;
import java.util.Date;
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
			List<FundingVO> list = FundingDAO.getFundingAllInfo();
			model.addAttribute("list", list);
		}
		else {
			List<FundingVO> list = FundingDAO.getFundingCategoryInfo(f_category);
			model.addAttribute("list", list);
		}
	}
	
	// 펀드 상세내용 조회 
	@Override  
	public void getFundingContent(HttpServletRequest req, Model model) {
		int f_num = Integer.parseInt(req.getParameter("f_num"));
		
		List<FundingVO> list_content = FundingDAO.getFundingContent(f_num);
		List<FundCommentVO> list_comment = FundingDAO.readComment(f_num);
		//펀딩금액
		//펀딩인원
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
		
		int deleteCnt1 = 0;
		if(agree1.equals("no") || agree2.equals("no") || agree3.equals("no")) {
			deleteCnt1 = -1;
			return;
		}
		
		String id = req.getParameter("id");
		String f_account = req.getParameter("f_account");
		int f_money = Integer.parseInt(req.getParameter("f_money"));
		
		List<FundingVO> list_content = FundingDAO.getFundingContent(f_num);
		FundingVO vo = list_content.get(0);
		String account = vo.getAccount();
		String f_name = vo.getF_name();

		System.out.println(account);
		System.out.println(f_name);
		
		// 펀드 구매(참자가 정보 등록)
		Map<String, Object> map1 = new HashMap<String, Object>();
		map1.put("id", id);
		map1.put("f_num", f_num);
		map1.put("account", account);
		map1.put("f_account", f_account);
		map1.put("f_money", f_money);
		int deleteCnt2 = FundingDAO.registerInvestor(map1);
		// 펀드 구매(참가자 계좌에서 출금)
		Map<String, Object> map2 = new HashMap<String, Object>();
		map2.put("f_money", f_money);
		map2.put("f_account", f_account);
		int deleteCnt3 = FundingDAO.withdrawInvestorAccount(map2);
		// 펀드 구매(등록자 계좌에 입금)
		Map<String, Object> map3 = new HashMap<String, Object>();
		map3.put("f_money", f_money);
		map3.put("account", account);
		int deleteCnt4 = FundingDAO.depositRegistrantAccount(map3);
		// 펀드 구매(입금에 대한 이체 history 작성)
		Map<String, Object> map4 = new HashMap<String, Object>();
		map4.put("f_account", f_account);
		map4.put("account", account);
		map4.put("f_money", f_money);
		map4.put("f_name", f_name);
		int deleteCnt5 = FundingDAO.depositAccountTransfer(map4);
		// 펀드 구매(출금에 대한 history 작성)
		Map<String, Object> map5 = new HashMap<String, Object>();
		map5.put("account", account);
		map5.put("f_account", f_account);
		map5.put("f_money", f_money);
		map5.put("id", id);
		int deleteCnt6 = FundingDAO.withdrawAccountTransfer(map5);
		
		model.addAttribute("deleteCnt1",deleteCnt1);
		model.addAttribute("deleteCnt2",deleteCnt2);
		model.addAttribute("deleteCnt3",deleteCnt3);
		model.addAttribute("deleteCnt4",deleteCnt4);
		model.addAttribute("deleteCnt5",deleteCnt5);
		model.addAttribute("deleteCnt6",deleteCnt6);
	}
	
	// 펀드 구매
		@Override  
		public void getKey(HttpServletRequest req, Model model) {
			int f_num = Integer.parseInt(req.getParameter("f_num"));
			
			model.addAttribute("f_num",f_num);
		}
	
	
}

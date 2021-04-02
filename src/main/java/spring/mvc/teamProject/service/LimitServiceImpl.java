package spring.mvc.teamProject.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.teamProject.persistence.LimitDAO;
import spring.mvc.teamProject.vo.AccountVO;
import spring.mvc.teamProject.vo.LimitVO;

@Service
public class LimitServiceImpl implements LimitService{
	
	@Autowired
	LimitDAO dao;

	@Override
	public void AccountLimitInfo(HttpServletRequest req, Model model) {
		String id= (String)req.getSession().getAttribute("id");
		List<String>list = dao.getAccount(id);
		model.addAttribute("list", list);
	}

	@Override
	public void AccountLimitSearch(HttpServletRequest req, Model model) {
		String account = req.getParameter("account");
		AccountVO vo=dao.AccountLimitSearch(account);
		model.addAttribute("vo", vo);
	}

	@Override
	public void AccountLimitAction(HttpServletRequest req, Model model) {
		String account = req.getParameter("account");
		String l_date = req.getParameter("l_date");
		String l_money = req.getParameter("l_money");
		String pwd = req.getParameter("pwd");
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("account",account);
		map.put("pwd",pwd);
		map.put("l_money",l_money);
		map.put("l_date",l_date);
		int insertCnt=dao.AccountPwdCheck(map);
		if(insertCnt==1) {
			insertCnt = dao.insertLimit(map);
		}else {
			insertCnt=-1;
		}
		model.addAttribute("insertCnt", insertCnt);
	}
	
}

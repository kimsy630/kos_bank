package spring.mvc.teamProject.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;


import spring.mvc.teamProject.persistence.LoanCenterDAOImpl;
import spring.mvc.teamProject.vo.LoansVO;

@Service
public class LoanCenterServiceImpl implements LoanCenterService {

	@Autowired
	LoanCenterDAOImpl dao;
	
	// ============================================================================
	// 박서하
	@Override
	public void LoanAccountCheck(HttpServletRequest req, Model model) { // 대출계좌 조회
		String id = "hong";//(String)req.getSession().getAttribute("id");
		
		List<LoansVO> list = dao.getLoanAccountList(id);

		model.addAttribute("list", list);
	}

	@Override
	public void LoanAccountDetail(HttpServletRequest req, Model model) { // 대출계좌 상세조회
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id","hong"); //(String)req.getSession().getAttribute("id");
		map.put("d_name", req.getParameter("d_name"));
		
		LoansVO vo = dao.getLoanAccountDetail(map);
		
		model.addAttribute("vo", vo);
	}

	@Override
	public void LoanCloseCheck(HttpServletRequest req, Model model) { // 대출해지현황 조회
		String id = "hong";//(String)req.getSession().getAttribute("id");
		
		List<LoansVO> list = dao.getLoanCloseList(id);
		
		model.addAttribute("list", list);
	}

	@Override
	public void LoanCloseDetail(HttpServletRequest req, Model model) { // 대출해지현황 상세조회
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("id","hong"); //(String)req.getSession().getAttribute("id");
		map.put("d_name", req.getParameter("d_name"));
		
		LoansVO vo = dao.getLoanCloseDetail(map);
		
		model.addAttribute("vo", vo);
	}

	@Override
	public void LoanRateCheck(HttpServletRequest req, Model model) { // 대출이자 조회
		String id = "hong";//(String)req.getSession().getAttribute("id");
		
		List<LoansVO> list = dao.getLoanAccountList(id);
		
		model.addAttribute("list", list);
	}

	@Override
	public void LoanPrincipalCheck(HttpServletRequest req, Model model) { // 대출원금 조회
		String id = "hong";//(String)req.getSession().getAttribute("id");
		
		List<LoansVO> list = dao.getLoanAccountList(id);
		
		model.addAttribute("list", list);
	} 
	// ============================================================================
}

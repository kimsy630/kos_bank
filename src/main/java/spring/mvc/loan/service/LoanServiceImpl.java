package spring.mvc.loan.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.loan.persistence.LoanDAOImpl;
import spring.mvc.loan.vo.LoanVO;

@Service
public class LoanServiceImpl implements LoanService {

	@Autowired
	LoanDAOImpl dao;
	
	// FinancialProductsController
	@Override
	public void loanProductsList(HttpServletRequest req, Model model) { // 대출상품 조회
		int count = dao.getLoanCount();
		
		List<LoanVO> list = dao.getLoanList();
		
		model.addAttribute("count", count);
		model.addAttribute("list", list);		
	}

	@Override
	public void loanProductDetail(HttpServletRequest req, Model model) { // 대출상품 상세조회
		String d_name = req.getParameter("d_name");
		
		LoanVO vo = dao.getLoanDetail(d_name);
		
		model.addAttribute("vo", vo);		
	}

	// ============================================================================
	// LoanCenterController
	@Override
	public void LoanAccountCheck(HttpServletRequest req, Model model) { // 대출계좌 조회
		String id = "hong";//(String)req.getSession().getAttribute("id");
		
		int count = dao.getLoanAccountCount(id);
		
		List<LoanVO> list = dao.getLoanAccountList(id);

		model.addAttribute("count", count);
		model.addAttribute("list", list);
	}

	@Override
	public void LoanAccountDetail(HttpServletRequest req, Model model) { // 대출계좌 상세조회
		LoanVO vo = new LoanVO();
		
		vo.setId("hong"); //(String)req.getSession().getAttribute("id");
		vo.setD_name(req.getParameter("d_name"));
		
		vo = dao.getLoanAccountDetail(vo);
		
		model.addAttribute("vo", vo);
	}

	@Override
	public void LoanCloseCheck(HttpServletRequest req, Model model) { // 대출해지현황 조회
		String id = "hong";//(String)req.getSession().getAttribute("id");
		
		int count = dao.getLoanCloseCount(id);
		
		List<LoanVO> list = dao.getLoanCloseList(id);

		model.addAttribute("count", count);
		model.addAttribute("list", list);
	}

	@Override
	public void LoanCloseDetail(HttpServletRequest req, Model model) { // 대출해지현황 상세조회
		LoanVO vo = new LoanVO();
		
		vo.setId("hong"); //(String)req.getSession().getAttribute("id");
		vo.setD_name(req.getParameter("d_name"));
		
		vo = dao.getLoanCloseDetail(vo);
		
		model.addAttribute("vo", vo);
	}

	@Override
	public void LoanRateCheck(HttpServletRequest req, Model model) { // 대출이자 조회
		String id = "hong";//(String)req.getSession().getAttribute("id");
		
		List<LoanVO> list = dao.getLoanAccountList(id);
		
		model.addAttribute("list", list);
	}

	@Override
	public void LoanPrincipalCheck(HttpServletRequest req, Model model) { // 대출원금 조회
		String id = "hong";//(String)req.getSession().getAttribute("id");
		
		List<LoanVO> list = dao.getLoanAccountList(id);
		
		model.addAttribute("list", list);
	} 
	
}

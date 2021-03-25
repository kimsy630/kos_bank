package spring.mvc.teamProject.service;

import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.teamProject.persistence.FinancialProductsDAO;
import spring.mvc.teamProject.persistence.FinancialProductsDAOImpl;
import spring.mvc.teamProject.persistence.MembersDAOImpl;
import spring.mvc.teamProject.vo.AccountVO;
import spring.mvc.teamProject.vo.DepositVO;
import spring.mvc.teamProject.vo.Loans_productVO;
import spring.mvc.teamProject.vo.MembersVO;
import spring.mvc.teamProject.vo.SavingsVO;



@Service
public class FinancialProductsServiceImpl implements FinancialProductsService{
	
	@Autowired
	FinancialProductsDAO dao;
	
	// ============================================================================
	// 박서하
	@Override
	public void loanProductsList(HttpServletRequest req, Model model) { // 대출상품 조회
		int count = dao.getLoanCount();
		
		List<Loans_productVO> list = dao.getLoanList();
		
		model.addAttribute("count", count);
		model.addAttribute("list", list);		
	}

	@Override
	public void loanProductDetail(HttpServletRequest req, Model model) { // 대출상품 상세조회
		String d_name = req.getParameter("d_name");
		
		Loans_productVO vo = dao.getLoanDetail(d_name);
		
		model.addAttribute("vo", vo);		
	}
	// ============================================================================
	
	@Override
	public void AccountList(HttpServletRequest req, Model model) {
		
		String strId = (String)req.getSession().getAttribute("id");
		
        List<AccountVO> list = dao.selectById(strId);
        
        model.addAttribute("list", list);

	}
	
	@Override
	public void SavingsList(HttpServletRequest req, Model model) {
		
		List<SavingsVO> list = dao.getSavingsList();
		
		model.addAttribute("list", list);
	}

	@Override
	public void DepositList(HttpServletRequest req, Model model) {
		
		List<DepositVO> list = dao.getDepositList();
		
		model.addAttribute("list", list);	
	}

	@Override
	public void SavingsDetail(HttpServletRequest req, Model model) {
		
		String j_name = (String)req.getAttribute("j_name");
		
		SavingsVO vo = dao.getSavingsDetail(j_name);
		
		model.addAttribute("vo", vo);
	}

	@Override
	public void DepositDetail(HttpServletRequest req, Model model) {
		
		String y_name = (String)req.getAttribute("y_name");
		
		SavingsVO vo = dao.getSavingsDetail(y_name);
		
		model.addAttribute("vo", vo);
		
	}

	@Override
	public void SavingsAction(HttpServletRequest req, Model model) {
		
		
		
	}

	@Override
	public void DepositAction(HttpServletRequest req, Model model) {
		
		
		
	}

	
	

}

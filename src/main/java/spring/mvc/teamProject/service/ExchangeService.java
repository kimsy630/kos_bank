package spring.mvc.teamProject.service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

public interface ExchangeService {
	//환전
	public void exchange(HttpServletRequest req, Model model);
	
	//환율정보
	public void exchangeList(HttpServletRequest req, Model model);

	//김세엽
	//환율계산기
	public void DepositList(HttpServletRequest req, Model model);
	
	
	public void exchangeCalculatorData(HttpServletRequest req, Model model);

	public void exchangeCalculatorResult(HttpServletRequest req, Model model);
	
}

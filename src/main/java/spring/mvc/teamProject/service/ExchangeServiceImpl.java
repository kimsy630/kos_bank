package spring.mvc.teamProject.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.poi.EncryptedDocumentException;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.teamProject.vo.ExchangeVO;

@Service
public class ExchangeServiceImpl implements ExchangeService{

	@Override
	public void exchange(HttpServletRequest req, Model model) {
	}

	@Override
	public void exchangeList(HttpServletRequest req, Model model) {
		// TODO Auto-generated method stub
	}

	@Override
	public void DepositList(HttpServletRequest req, Model model) {
		try {
			List<ExchangeVO> list = ExcelImport.getStudentList();

			model.addAttribute("ex",list.get(0));
			model.addAttribute("list",list);
			List<String>list2 = new ArrayList<String>();
			for(int i=0;i<list.size();i++) {
				list2.add(list.get(i).getCountry_name());
			}
			model.addAttribute("list2",list);
		} catch (EncryptedDocumentException | IOException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void exchangeCalculatorData(HttpServletRequest req, Model model) {
		try {
			String country_name=req.getParameter("country_name");
			List<ExchangeVO> list = ExcelImport.getStudentList();
			System.out.println(country_name);
			for(int i=0;i<list.size();i++) {
				if(country_name.equals(list.get(i).getCountry_name())) {
					model.addAttribute("ex",list.get(i));
					return ;
				}
			}
		} catch (EncryptedDocumentException | IOException e) {
			e.printStackTrace();
		}
	}

	@Override
	public void exchangeCalculatorResult(HttpServletRequest req, Model model) {
		try {
			String country_name=req.getParameter("country_name");
			String changeType=req.getParameter("changeType");
			int money=Integer.parseInt(req.getParameter("money"));
			
			List<ExchangeVO> list = ExcelImport.getStudentList();
			
			ExchangeVO ex = null;
			System.out.println(country_name);
			System.out.println(changeType);
			for(int i=0;i<list.size();i++) {
				if(country_name.equals(list.get(i).getCountry_name())) {
					ex = list.get(i);
					float changeMoney= 0;
					if(changeType.equals("buy")) {//살때
						changeMoney=ex.exchangeCalculatorBuy(money);
					}else {//팔때 
						changeMoney=ex.exchangeCalculatorSell(money);
					}

					model.addAttribute("changeType", changeType);
					model.addAttribute("money", money);
					model.addAttribute("changeMoney", changeMoney);
					model.addAttribute("ex", ex);
					return;
				}
			}
		} catch (EncryptedDocumentException | IOException e) {
			e.printStackTrace();
		}
	}
}

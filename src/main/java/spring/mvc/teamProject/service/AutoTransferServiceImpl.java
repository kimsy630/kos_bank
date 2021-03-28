package spring.mvc.teamProject.service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

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
	
	// 자동이체 실행
	@Override
	public void AutoTransferPractice() {
		
		// 날짜포멧 - 지정일 이체를 위해 오늘 일자만 리턴
		SimpleDateFormat format = new SimpleDateFormat("dd");
		Date date = new Date();
		
		// 자동이체용 당일 날짜 출력 (day값만)
		String systemDate = format.format(date);
		System.out.println("testDate : "+systemDate);
		
		// 자동이체 조건 쿼리
		int jd_key=0;
		String account="";
		String jd_account="";
		int jd_autoMoney=0;
		String jd_inPlace = "";
		String jd_status = "";
		
		List<AutoTransferVO> transferInfo = aDAO.selectByDate();
		
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
				
				// 거래내역 로그(출금)
				aDAO.sendAutoTrans(vo);
				
				// 거래내역 로그(입금)
				aDAO.receiveAutoTrans(vo);
				
				i++;
			}
		}
	}
}

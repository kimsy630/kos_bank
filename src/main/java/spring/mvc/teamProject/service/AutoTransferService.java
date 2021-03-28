package spring.mvc.teamProject.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public interface AutoTransferService {
	// 자동이체 테이블 등록
	public void AutoTransferAdd(HttpServletRequest req, Model model);
	
	// 자동이체 실행
	public void AutoTransferPractice();
	
}

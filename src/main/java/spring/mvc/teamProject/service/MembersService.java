package spring.mvc.teamProject.service;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

@Service
public interface MembersService {
	public void signUpAction(HttpServletRequest req,Model model);
	public void idChk(HttpServletRequest req,Model model);
	
}

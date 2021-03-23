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

import spring.mvc.teamProject.persistence.MembersDAOImpl;
import spring.mvc.teamProject.vo.MembersVO;

@Service
public class MembersServiceImpl implements MembersService{

	@Autowired
	MembersDAOImpl memberDAO;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;

	@Override
	public void signUpAction(HttpServletRequest req, Model model) {
		System.out.println("??");
		MembersVO vo = new MembersVO();
		vo.setId(req.getParameter("id"));
		vo.setPw(passwordEncoder.encode(req.getParameter("pw")));
		vo.setName(req.getParameter("name"));
		vo.setJumin(req.getParameter("jumin"));
		vo.setPhone(req.getParameter("phone"));
		vo.setEmail(req.getParameter("email"));
		vo.setAddress(req.getParameter("address1")); ;//도로명주소
		req.getParameter("address2");//지번주소
		vo.setD_address(req.getParameter("address3"));
		vo.setPostnum(req.getParameter("postnum"));
		vo.setJob(req.getParameter("job"));
		vo.setAuthority("ROLE_USER");
		
		int insertCnt = memberDAO.insertMember(vo);
		model.addAttribute("insertCnt",insertCnt);
	}

	@Override
	public void idChk(HttpServletRequest req, Model model) {
		String id= req.getParameter("id");
		int selectCnt = memberDAO.idCheck(id);
		if(selectCnt==0) {
			model.addAttribute("msg","사용가능한 아이디 입니다.");
		}else {
			model.addAttribute("msg","이미 존재하는 아이디 입니다.");
		}
	}
	
	

}

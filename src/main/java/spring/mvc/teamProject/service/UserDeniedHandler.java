package spring.mvc.teamProject.service;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.web.access.AccessDeniedHandler;
import org.springframework.stereotype.Service;


@Service
public class UserDeniedHandler implements AccessDeniedHandler{
	private static final Logger logger = LoggerFactory.getLogger(UserDeniedHandler.class);
	
	@Override
	public void handle(HttpServletRequest req, HttpServletResponse res,
			AccessDeniedException accessDeniedException) throws IOException, ServletException {
        req.setAttribute("errMsg", "접근권한 없는 사용자입니다.");
		req.getRequestDispatcher("/WEB-INF/views/denied.jsp").forward(req, res);
	}
}
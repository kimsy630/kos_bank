package spring.mvc.teamProject.service;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.ui.Model;

import spring.mvc.teamProject.persistence.MembersDAO;
import spring.mvc.teamProject.vo.MembersVO;
import spring.mvc.teamProject.vo.UserVO;


public class UserLoginSuccessHandler implements AuthenticationSuccessHandler{

	@Autowired
	SqlSessionTemplate sqlSession;

	
	public UserLoginSuccessHandler(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	
	// 로그인이 성공한 경우에 실행한 코드
	@Override
	public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
			Authentication authentication) throws IOException, ServletException {
		
		UserVO vo = (UserVO)authentication.getPrincipal();
		System.out.println("UserVO==> " + vo);
		
		System.out.println("아이디 ==> " + authentication.getName());

		String grade = ((MembersVO)sqlSession.selectOne("spring.mvc.teamProject.persistence.MembersDAO.getMemberInfo", authentication.getName())).getAuthority();
		int authority=0;
		//관리자  사업자   일반회원
		if(grade.equals("ROLE_USER")) {
			authority=0;
		}else if(grade.equals("ROLE_MANAGER")){
			authority=1;
		}else if(grade.equals("ROLE_ADMIN")){
			authority=2;
		}
		request.getSession().setAttribute("id", authentication.getName());
		request.getSession().setAttribute("authority", authority);
		
		RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/views/common/index.jsp");

		//List<CategorysVo> menu =categoryDao.categoryView(null);
		//request.setAttribute("menu", menu);
		
		rd.forward(request, response);
	}

}

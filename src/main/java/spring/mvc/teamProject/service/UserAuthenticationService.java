package spring.mvc.teamProject.service;

import java.util.ArrayList;
import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import spring.mvc.teamProject.vo.MembersVO;



// UserDetailService : 스프링 프레임웍에 내장된 인터페이스
// UserDetailService : users 테이블의 정보를 가지고 인증처리를 위해 사용자 상세정보를 제공하는 인터페이스 

public class UserAuthenticationService implements UserDetailsService{
	
	@Autowired
	SqlSessionTemplate sqlSession;
	
	@Autowired
	BCryptPasswordEncoder PasswordEncoder;
	
	public UserAuthenticationService(SqlSessionTemplate sqlSession) {
		this.sqlSession = sqlSession;
	}
	// 핵심코드
	/*
	 * 로그인 인증을 처리하는 코드
	 * 매개변수가 userid뿐이지만 패스워드까지 전달된다.(username => userid로 수정)
	 * 매개변수가 userid에 해당하는 테이블의 레코드를 읽어옴
	 * 정보가 없으면 예외를 발생시키고, 있으면 map으로 리턴
	 * 
	 */
	@Override
	public UserDetails loadUserByUsername(String id) throws UsernameNotFoundException {
		
		MembersVO vo = sqlSession.selectOne("spring.mvc.teamProject.persistence.MembersDAO.getMemberInfo",id);
		System.out.println("로그인 체크 == >" + vo);
		
		// 인증 실패시 인위적으로 예외 발생
		if(vo == null)  throw new UsernameNotFoundException(id);
		
		// List나 ArrayList 먼저 import하고 GrantedAuthority import
		List<GrantedAuthority> authority = new ArrayList<GrantedAuthority>();
		
		authority.add(new SimpleGrantedAuthority(vo.getAuthority()));
		/*
		 * 오라클에서는 필드명을 대문자로 취급
		 * 사용자가 입력한 값과 테이블의 USERNAME(=id), PASSWORD(아래)를 비교해서
		 * 비밀번호가 불일치시 LoginFailure, 일치시 LoginSuccess
		 * 테이블의 암호화된 비밀번호와 사용자가 입력한 비밀번호를 내부로직으로 비교처리
		 */
		//
		return new spring.mvc.teamProject.vo.UserVO(vo.getId(),vo.getPw(),vo.getEnabled().equals("1"), true,true,true,authority);
	}

}

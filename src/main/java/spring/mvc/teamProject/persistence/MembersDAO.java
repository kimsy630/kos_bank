package spring.mvc.teamProject.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import spring.mvc.teamProject.vo.MembersVO;



public interface MembersDAO{
	public int insertMember(MembersVO vo);

	public MembersVO getMemberInfo(String id);

	@Select("SELECT COUNT(*) FROM members WHERE id=#{id}")
	public int idCheck(String id);
	/*
	public void sendMail(String toEmail, String key);
	//회원정보 상세 페이지
	@Select("SELECT * FROM members where mb_id=#{strId}")
	public MembersVO getMemberInfo(String strId);
	
	//회원가입 처리
	public int insertClient(MembersVO vo);
	
	//중복확인 처리
	
	@Select("SELECT COUNT(*) FROM members WHERE mb_key=#{key} ")
	public int emailChk(String key);
	
	@Update("UPDATE members SET mb_enabled=1 WHERE mb_key=#{key}")
	public int updateEnabled(String key);
	
	@Select("SELECT mb_pwd FROM members WHERE mb_id = #{mb_id}")
	public String pwdCheck(String mb_id);

	@Select("SELECT mb_authority FROM members WHERE mb_id = #{mb_id}")
	public String getAuthority(String mb_id);
	
	//회원정보 수정 처리
	public int updateMember(MembersVO vo);

	@Update("UPDATE members SET mb_point=mb_point+#{point}  WHERE mb_id=#{mb_id}")
	public void memberPointUpdate(Map<String, Object>map);//String mb_id,int point
	
	@Update("UPDATE members SET mb_point=mb_point+#{point} ,mb_rank_point=mb_rank_point+#{point} WHERE mb_id=#{mb_id}")
	public void memberBuyPointUpdate(Map<String, Object>map);
	
	@Select("SELECT COUNT(*) cnt FROM members WHERE mb_id=#{mb_id} AND mb_pwd = #{mb_pwd}")
	public int PwdChk(Map<String, Object>map);
	
	@Select("SELECT * FROM members WHERE mb_authority!='ROLE_ADMIN' ")
	public List<MembersVO> membersInfo();
	
	@Delete("DELETE members WHERE mb_id=#{mb_id}")
	public int deleteMember(String mb_id);
	
		//로그인 처리
		public String idPwdChk(String strId,String strPwd);
		
		//회원정보 삭제 처리
	*/
}

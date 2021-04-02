package spring.mvc.teamProject.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.teamProject.vo.CounselingVO;

@Repository
public class CounselingDAOImpl implements CounselingDAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	// 고객상담 글목록 조회
	@Override
	public List<CounselingVO> getCounselingInfo() {
		CounselingDAO dao = sqlSession.getMapper(CounselingDAO.class);
		
		return dao.getCounselingInfo();
	}
	
	// 고객상담 글상세내용 조회
	@Override
	public List<CounselingVO> getCounselingContent(int b_num) {
		CounselingDAO dao = sqlSession.getMapper(CounselingDAO.class);
		
		return dao.getCounselingContent(b_num);
	}
	
	// 고객상담 글작성
	@Override
	public int writeCounselingPost(Map<String, Object> map) {
		return sqlSession.getMapper(CounselingDAO.class).writeCounselingPost(map);
	}
	
	// 고객상담 수정 조회
	@Override
	public List<CounselingVO> getCounselingModify(int b_num) {
		CounselingDAO dao = sqlSession.getMapper(CounselingDAO.class);
		
		return dao.getCounselingModify(b_num);
	}
	
	// 고객상담 답변작성
	@Override
	public int setCounselingModify(Map<String, Object> map) {
		return sqlSession.getMapper(CounselingDAO.class).setCounselingModify(map);
	}
	
	// 고객상담 답변삭제
	@Override
	public int setCounselingDelete(int b_num) {
		return sqlSession.getMapper(CounselingDAO.class).setCounselingDelete(b_num);
	}
	
}

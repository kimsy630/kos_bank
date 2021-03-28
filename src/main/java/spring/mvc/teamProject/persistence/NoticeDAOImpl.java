package spring.mvc.teamProject.persistence;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import spring.mvc.teamProject.vo.NoticeVO;

@Repository
public class NoticeDAOImpl implements NoticeDAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	// 공지사항 글목록 조회
	@Override
	public List<NoticeVO> getNoticeInfo() {
		NoticeDAO dao = sqlSession.getMapper(NoticeDAO.class);
		return dao.getNoticeInfo();
	}
	
	// 공지사항 글상세내용 조회
	@Override
	public List<NoticeVO> getContent(int n_num) {
		NoticeDAO dao = sqlSession.getMapper(NoticeDAO.class);
		
		return dao.getContent(n_num);
	}
	
	// 공지사항 글확인시 조회수 증가
	@Override
	public void setViews(int n_num) {
		sqlSession.getMapper(NoticeDAO.class).setViews(n_num);
	}
	
}

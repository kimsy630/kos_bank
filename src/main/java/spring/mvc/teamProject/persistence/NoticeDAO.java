package spring.mvc.teamProject.persistence;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import spring.mvc.teamProject.vo.NoticeVO;

@Repository
public interface NoticeDAO {
	// 공지사항 글목록 조회
	public List<NoticeVO> getNoticeInfo();
	
	// 공지사항 글상세내용 조회
	public List<NoticeVO> getContent(int n_num);
		
	// 공지사항 글확인시 조회수 증가
	public void setViews(int n_num);
	
	
}

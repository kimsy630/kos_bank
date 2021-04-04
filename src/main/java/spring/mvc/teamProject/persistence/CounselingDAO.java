package spring.mvc.teamProject.persistence;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import spring.mvc.teamProject.vo.CounselingVO;

@Repository
public interface CounselingDAO {
	// 고객상담 글목록 조회
	public List<CounselingVO> getCounselingInfo();
	
	// 고객상담 글상세내용 조회 
	public List<CounselingVO> getCounselingContent(int b_num);
		
	// 고객상담 글작성
	public int writeCounselingPost(Map<String, Object> map);
	
	// 고객상담 수정 조회
	public List<CounselingVO> getCounselingModify(int b_num);
	
	// 고객상담 답변작성
	public int setCounselingModify(Map<String, Object> map);
		
	// 고객상담 답변삭제
	public int setCounselingDelete(int b_num);	
	
	
	
}

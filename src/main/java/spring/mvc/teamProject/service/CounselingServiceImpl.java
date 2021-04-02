package spring.mvc.teamProject.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import spring.mvc.teamProject.persistence.CounselingDAOImpl;
import spring.mvc.teamProject.vo.CounselingVO;
import java.util.Date;
import java.text.SimpleDateFormat;

@Service
public class CounselingServiceImpl implements CounselingService{

	@Autowired
	CounselingDAOImpl CounselingDAO;
	
	// 고객상담 글목록 조회
	@Override  
	public void getCounselingInfo(HttpServletRequest req, Model model) {
		List<CounselingVO> list = CounselingDAO.getCounselingInfo();
		
		model.addAttribute("list", list);
	}
	
	// 고객상담 글상세내용 조회 
	@Override  
	public void getCounselingContent(HttpServletRequest req, Model model) {
		int b_num = Integer.parseInt(req.getParameter("b_num"));
		
		List<CounselingVO> list = CounselingDAO.getCounselingContent(b_num);
		
		model.addAttribute("list", list);
	}
	
	// 고객상담 글작성
	@Override  
	public void writeCounselingPost(HttpServletRequest req, Model model) {
		String b_title = req.getParameter("b_title");
		String b_category = req.getParameter("b_category");
		String b_content = req.getParameter("b_content");
		
		Map<String, Object> map = new HashMap<String, Object>();
		Date nowTime = new Date();
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		sf.format(nowTime);
		map.put("b_date", sf.format(nowTime));
		map.put("ID", (String)req.getSession().getAttribute("id"));
		
		map.put("b_title", b_title);
		map.put("b_category", b_category);
		map.put("b_content", b_content);
		
		int deleteCnt = CounselingDAO.writeCounselingPost(map);
		
		model.addAttribute("deleteCnt",deleteCnt);
	}
	
	// 고객상담 수정 조회
	@Override  
	public void getCounselingModify(HttpServletRequest req, Model model) {
		int b_num = Integer.parseInt(req.getParameter("b_num"));
		
		List<CounselingVO> list = CounselingDAO.getCounselingModify(b_num);
		
		model.addAttribute("list", list);
	}
	
	// 고객상담 글수정
	@Override  
	public void setCounselingModify(HttpServletRequest req, Model model) {
		int b_num = Integer.parseInt(req.getParameter("b_num"));
		String b_title = req.getParameter("b_title");
		String b_category = req.getParameter("b_category");
		String b_content = req.getParameter("b_content");
		
		Map<String, Object> map = new HashMap<String, Object>();
		Date nowTime = new Date();
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd");
		sf.format(nowTime);
		map.put("b_date", sf.format(nowTime));
		map.put("b_num", b_num);
		map.put("b_title", b_title);
		map.put("b_category", b_category);
		map.put("b_content", b_content);
		
		System.out.println(map);
		
		int deleteCnt = CounselingDAO.setCounselingModify(map);
		
		model.addAttribute("deleteCnt",deleteCnt);
	}
	
	// 고객상담 글삭제
	@Override  
	public void setCounselingDelete(HttpServletRequest req, Model model) {
		int b_num = Integer.parseInt(req.getParameter("b_num"));
		
		int deleteCnt = CounselingDAO.setCounselingDelete(b_num);
		
		model.addAttribute("deleteCnt",deleteCnt);
	}
}

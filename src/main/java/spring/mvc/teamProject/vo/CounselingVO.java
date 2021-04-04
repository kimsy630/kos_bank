package spring.mvc.teamProject.vo;

public class CounselingVO {

	private int b_num;					//글번호
	private String ID;					//회원아이디
	private String b_title;				//글제목
	private String b_content;			//글내용 
	private String b_category;			//카테고리
	private String b_date;				//작성일
	private String b_answer_date;		//답변일
	private String b_answer_content;	//답변내용
	private String b_name;				//답변자이름
	private int b_state;				//답변상태(0:미답변 / 1:답변)
	
	public CounselingVO() {}

	public CounselingVO(int b_num, String ID, String b_title, String b_content, String b_category, String b_date,
			String b_answer_date, String b_answer_content, String b_name, int b_state) {
		super();
		this.b_num = b_num;
		this.ID = ID;
		this.b_title = b_title;
		this.b_content = b_content;
		this.b_category = b_category;
		this.b_date = b_date;
		this.b_answer_date = b_answer_date;
		this.b_answer_content = b_answer_content;
		this.b_name = b_name;
		this.b_state = b_state;
	}

	public int getB_num() {
		return b_num;
	}

	public void setB_num(int b_num) {
		this.b_num = b_num;
	}

	public String getID() {
		return ID;
	}

	public void setID(String ID) {
		this.ID = ID;
	}

	public String getB_title() {
		return b_title;
	}

	public void setB_title(String b_title) {
		this.b_title = b_title;
	}

	public String getB_content() {
		return b_content;
	}

	public void setB_content(String b_content) {
		this.b_content = b_content;
	}

	public String getB_category() {
		return b_category;
	}

	public void setB_category(String b_category) {
		this.b_category = b_category;
	}

	public String getB_date() {
		return b_date;
	}

	public void setB_date(String b_date) {
		this.b_date = b_date;
	}

	public String getB_answer_date() {
		return b_answer_date;
	}

	public void setB_answer_date(String b_answer_date) {
		this.b_answer_date = b_answer_date;
	}

	public String getB_answer_content() {
		return b_answer_content;
	}

	public void setB_answer_content(String b_answer_content) {
		this.b_answer_content = b_answer_content;
	}

	public String getB_name() {
		return b_name;
	}

	public void setB_name(String b_name) {
		this.b_name = b_name;
	}

	public int getB_state() {
		return b_state;
	}

	public void setB_state(int b_state) {
		this.b_state = b_state;
	}

	@Override
	public String toString() {
		return "CounselingVO [b_num=" + b_num + ", ID=" + ID + ", b_title=" + b_title + ", b_content=" + b_content
				+ ", b_category=" + b_category + ", b_date=" + b_date + ", b_answer_date=" + b_answer_date
				+ ", b_answer_content=" + b_answer_content + ", b_name=" + b_name + ", b_state=" + b_state + "]";
	}

	
	
}
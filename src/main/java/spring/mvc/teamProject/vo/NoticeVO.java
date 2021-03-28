package spring.mvc.teamProject.vo;

import java.sql.Timestamp;

public class NoticeVO {

	private int n_num;			//글번호
	private String n_title;		//글제목
	private String n_name;		//작성자
	private String n_date;		//작성일
	private int n_views;		//조회수
	private String n_content;	//글내용
	
	public NoticeVO() {}

	public NoticeVO(int n_num, String n_title, String n_name, String n_date, int n_views, String n_content) {
		super();
		this.n_num = n_num;
		this.n_title = n_title;
		this.n_name = n_name;
		this.n_date = n_date;
		this.n_views = n_views;
		this.n_content = n_content;
	}

	public int getN_num() {
		return n_num;
	}

	public void setN_num(int n_num) {
		this.n_num = n_num;
	}

	public String getN_title() {
		return n_title;
	}

	public void setN_title(String n_title) {
		this.n_title = n_title;
	}

	public String getN_name() {
		return n_name;
	}

	public void setN_name(String n_name) {
		this.n_name = n_name;
	}

	public String getN_date() {
		return n_date;
	}

	public void setN_date(String n_date) {
		this.n_date = n_date;
	}

	public int getN_views() {
		return n_views;
	}

	public void setN_views(int n_views) {
		this.n_views = n_views;
	}

	public String getN_content() {
		return n_content;
	}

	public void setN_content(String n_content) {
		this.n_content = n_content;
	}

	@Override
	public String toString() {
		return "NoticeVO [n_num=" + n_num + ", n_title=" + n_title + ", n_name=" + n_name + ", n_date=" + n_date
				+ ", n_views=" + n_views + ", n_content=" + n_content + "]";
	}
	
}
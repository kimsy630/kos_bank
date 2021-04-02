package spring.mvc.teamProject.vo;

import java.sql.Timestamp;

public class FundCommentVO {
   private int f_num;
   private String c_title;
   private String c_content;
   private Timestamp c_date;
   private String c_name;
	
   public FundCommentVO() {}

   public FundCommentVO(int f_num, String c_title, String c_content, Timestamp c_date, String c_name) {
		super();
		this.f_num = f_num;
		this.c_title = c_title;
		this.c_content = c_content;
		this.c_date = c_date;
		this.c_name = c_name;
   }

	public int getF_num() {
		return f_num;
	}
	
	public void setF_num(int f_num) {
		this.f_num = f_num;
	}
	
	public String getC_title() {
		return c_title;
	}
	
	public void setC_title(String c_title) {
		this.c_title = c_title;
	}
	
	public String getC_content() {
		return c_content;
	}
	
	public void setC_content(String c_content) {
		this.c_content = c_content;
	}
	
	public Timestamp getC_date() {
		return c_date;
	}
	
	public void setC_date(Timestamp c_date) {
		this.c_date = c_date;
	}
	
	public String getC_name() {
		return c_name;
	}
	
	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	@Override
	public String toString() {
		return "FundCommentVO [f_num=" + f_num + ", c_title=" + c_title + ", c_content=" + c_content + ", c_date="
				+ c_date + ", c_name=" + c_name + "]";
	}
   
   
   
   
   
   
   
}
package spring.mvc.teamProject.vo;

import java.sql.Timestamp;

public class fundVO {
	private int f_Key;
	private String f_ID;
	private String f_Email;
	private String f_phone;
	private String f_title;
	private String f_content;
	private String f_plan;
	private Timestamp f_startdate;
	private Timestamp f_enddate;
	private int f_target_Amount;
	private int f_state;
	private int f_scale;
	private String f_list;
	private String f_account;
	private int f_approve;
	
	public int getF_Key() {
		return f_Key;
	}
	public void setF_Key(int f_Key) {
		this.f_Key = f_Key;
	}
	public String getF_ID() {
		return f_ID;
	}
	public void setF_ID(String f_ID) {
		this.f_ID = f_ID;
	}
	public String getF_Email() {
		return f_Email;
	}
	public void setF_Email(String f_Email) {
		this.f_Email = f_Email;
	}
	public String getF_phone() {
		return f_phone;
	}
	public void setF_phone(String f_phone) {
		this.f_phone = f_phone;
	}
	public String getF_title() {
		return f_title;
	}
	public void setF_title(String f_title) {
		this.f_title = f_title;
	}
	public String getF_content() {
		return f_content;
	}
	public void setF_content(String f_content) {
		this.f_content = f_content;
	}
	public String getF_plan() {
		return f_plan;
	}
	public void setF_plan(String f_plan) {
		this.f_plan = f_plan;
	}
	public Timestamp getF_startdate() {
		return f_startdate;
	}
	public void setF_startdate(Timestamp f_startdate) {
		this.f_startdate = f_startdate;
	}
	public Timestamp getF_enddate() {
		return f_enddate;
	}
	public void setF_enddate(Timestamp f_enddate) {
		this.f_enddate = f_enddate;
	}
	public int getF_target_Amount() {
		return f_target_Amount;
	}
	public void setF_target_Amount(int f_target_Amount) {
		this.f_target_Amount = f_target_Amount;
	}
	public int getF_state() {
		return f_state;
	}
	public void setF_state(int f_state) {
		this.f_state = f_state;
	}
	public int getF_scale() {
		return f_scale;
	}
	public void setF_scale(int f_scale) {
		this.f_scale = f_scale;
	}
	public String getF_list() {
		return f_list;
	}
	public void setF_list(String f_list) {
		this.f_list = f_list;
	}
	public String getF_account() {
		return f_account;
	}
	public void setF_account(String f_account) {
		this.f_account = f_account;
	}
	public int getF_approve() {
		return f_approve;
	}
	public void setF_approve(int f_approve) {
		this.f_approve = f_approve;
	}
	
	
	@Override
	public String toString() {
		return "fundVO [f_Key=" + f_Key + ", f_ID=" + f_ID + ", f_Email=" + f_Email + ", f_phone=" + f_phone
				+ ", f_title=" + f_title + ", f_content=" + f_content + ", f_plan=" + f_plan + ", f_startdate="
				+ f_startdate + ", f_enddate=" + f_enddate + ", f_target_Amount=" + f_target_Amount + ", f_state="
				+ f_state + ", f_scale=" + f_scale + ", f_list=" + f_list + ", f_account=" + f_account + ", f_approve="
				+ f_approve + "]";
	}
	
	
}

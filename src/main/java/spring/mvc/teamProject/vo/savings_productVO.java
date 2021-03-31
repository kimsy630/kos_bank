package spring.mvc.teamProject.vo;

import java.sql.Timestamp;

public class savings_productVO {
   
   private String j_name;
   private String j_summary;
   private Timestamp j_date;
   private double j_interest_rate;
   private String j_type;
   private int j_max_date;
   private int j_min_date;
   private String j_explanation;
   private String j_notice;
   private int j_auto_date;
   
	public String getJ_name() {
		return j_name;
	}
	public void setJ_name(String j_name) {
		this.j_name = j_name;
	}
	public String getJ_summary() {
		return j_summary;
	}
	public void setJ_summary(String j_summary) {
		this.j_summary = j_summary;
	}
	public Timestamp getJ_date() {
		return j_date;
	}
	public void setJ_date(Timestamp j_date) {
		this.j_date = j_date;
	}
	public double getJ_interest_rate() {
		return j_interest_rate;
	}
	public void setJ_interest_rate(double j_interest_rate) {
		this.j_interest_rate = j_interest_rate;
	}
	public String getJ_type() {
		return j_type;
	}
	public void setJ_type(String j_type) {
		this.j_type = j_type;
	}
	public int getJ_max_date() {
		return j_max_date;
	}
	public void setJ_max_date(int j_max_date) {
		this.j_max_date = j_max_date;
	}
	public int getJ_min_date() {
		return j_min_date;
	}
	public void setJ_min_date(int j_min_date) {
		this.j_min_date = j_min_date;
	}
	public String getJ_explanation() {
		return j_explanation;
	}
	public void setJ_explanation(String j_explanation) {
		this.j_explanation = j_explanation;
	}
	public String getJ_notice() {
		return j_notice;
	}
	public void setJ_notice(String j_notice) {
		this.j_notice = j_notice;
	}
	public int getJ_auto_date() {
		return j_auto_date;
	}
	public void setJ_auto_date(int j_auto_date) {
		this.j_auto_date = j_auto_date;
	}
   
}
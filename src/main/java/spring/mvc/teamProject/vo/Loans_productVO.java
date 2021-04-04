package spring.mvc.teamProject.vo;

import java.sql.Timestamp;

public class Loans_productVO {
	private String d_name; // 대출 상품 이름
	private Timestamp d_date; // 대출등록일
	private double d_interest_rate; // 금리
	private String d_summary; // 대출상품한줄요약
	private int d_max_price; // 최대대출금액
	private int d_min_price; // 최소대출금액
	private int d_max_date; // 최대대출기간
	private int d_min_date; // 최소대출기간
	private String d_explanation1; // 상환방법
	private String d_explanation2; // 유의사항
	private String d_explanation3; // 부가서비스
	private LoansVO loan;
	
	public String getD_name() {
		return d_name;
	}
	public void setD_name(String d_name) {
		this.d_name = d_name;
	}
	public Timestamp getD_date() {
		return d_date;
	}
	public void setD_date(Timestamp d_date) {
		this.d_date = d_date;
	}
	public double getD_interest_rate() {
		return d_interest_rate;
	}
	public void setD_interest_rate(double d_interest_rate) {
		this.d_interest_rate = d_interest_rate;
	}
	public String getD_summary() {
		return d_summary;
	}
	public void setD_summary(String d_summary) {
		this.d_summary = d_summary;
	}
	public int getD_max_price() {
		return d_max_price;
	}
	public void setD_max_price(int d_max_price) {
		this.d_max_price = d_max_price;
	}
	public int getD_min_price() {
		return d_min_price;
	}
	public void setD_min_price(int d_min_price) {
		this.d_min_price = d_min_price;
	}
	public int getD_max_date() {
		return d_max_date;
	}
	public void setD_max_date(int d_max_date) {
		this.d_max_date = d_max_date;
	}
	public int getD_min_date() {
		return d_min_date;
	}
	public void setD_min_date(int d_min_date) {
		this.d_min_date = d_min_date;
	}
	public String getD_explanation1() {
		return d_explanation1;
	}
	public void setD_explanation1(String d_explanation1) {
		this.d_explanation1 = d_explanation1;
	}
	public String getD_explanation2() {
		return d_explanation2;
	}
	public void setD_explanation2(String d_explanation2) {
		this.d_explanation2 = d_explanation2;
	}
	public String getD_explanation3() {
		return d_explanation3;
	}
	public void setD_explanation3(String d_explanation3) {
		this.d_explanation3 = d_explanation3;
	}
	public LoansVO getLoan() {
		return loan;
	}
	public void setLoan(LoansVO loan) {
		this.loan = loan;
	}
}

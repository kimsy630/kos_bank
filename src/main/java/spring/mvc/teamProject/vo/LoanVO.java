package spring.mvc.teamProject.vo;

import java.sql.Timestamp;

public class LoanVO {
	// Loans_product
	private String d_name;
	private Timestamp d_date;
	private int d_interest_rate;
	private String d_summary;
	private int d_max_price;
	private int d_min_price;
	private int d_max_date;
	private int d_min_date;
	private String d_explanation1;
	private String d_explanation2;
	private String d_explanation3;
	private String d_img;
	
	// Loans
	private String d_Key;
	private String account;
	private int d_state;
	private Timestamp d_start_date;
	private Timestamp d_end_date;
	private int d_month;
	private String d_repay;
	private int d_rate;
	private int d_amount;
	private int d_balance;
	private int d_balance_rate;
	private int d_loan_balance;
	private int d_loan_rate;
	private int d_tran;
	private int d_tran_rate;
	private int d_next_rate;
	
	// Members
	private String id;

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
	
	public int getD_interest_rate() {
		return d_interest_rate;
	}
	
	public void setD_interest_rate(int d_interest_rate) {
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
	
	public String getD_img() {
		return d_img;
	}
	
	public void setD_img(String d_img) {
		this.d_img = d_img;
	}

	public String getD_Key() {
		return d_Key;
	}

	public void setD_Key(String d_Key) {
		this.d_Key = d_Key;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String account) {
		this.account = account;
	}

	public int getD_state() {
		return d_state;
	}

	public void setD_state(int d_state) {
		this.d_state = d_state;
	}

	public Timestamp getD_start_date() {
		return d_start_date;
	}

	public void setD_start_date(Timestamp d_start_date) {
		this.d_start_date = d_start_date;
	}

	public Timestamp getD_end_date() {
		return d_end_date;
	}

	public void setD_end_date(Timestamp d_end_date) {
		this.d_end_date = d_end_date;
	}

	public int getD_month() {
		return d_month;
	}

	public void setD_month(int d_month) {
		this.d_month = d_month;
	}

	public String getD_repay() {
		return d_repay;
	}

	public void setD_repay(String d_repay) {
		this.d_repay = d_repay;
	}

	public int getD_rate() {
		return d_rate;
	}

	public void setD_rate(int d_rate) {
		this.d_rate = d_rate;
	}
	
	public int getD_amount() {
		return d_amount;
	}

	public void setD_amount(int d_amount) {
		this.d_amount = d_amount;
	}

	public int getD_balance() {
		return d_balance;
	}

	public void setD_balance(int d_balance) {
		this.d_balance = d_balance;
	}

	public int getD_balance_rate() {
		return d_balance_rate;
	}

	public void setD_balance_rate(int d_balance_rate) {
		this.d_balance_rate = d_balance_rate;
	}

	public int getD_loan_balance() {
		return d_loan_balance;
	}

	public void setD_loan_balance(int d_loan_balance) {
		this.d_loan_balance = d_loan_balance;
	}

	public int getD_loan_rate() {
		return d_loan_rate;
	}

	public void setD_loan_rate(int d_loan_rate) {
		this.d_loan_rate = d_loan_rate;
	}

	public int getD_tran() {
		return d_tran;
	}

	public void setD_tran(int d_tran) {
		this.d_tran = d_tran;
	}

	public int getD_tran_rate() {
		return d_tran_rate;
	}

	public void setD_tran_rate(int d_tran_rate) {
		this.d_tran_rate = d_tran_rate;
	}

	public int getD_next_rate() {
		return d_next_rate;
	}

	public void setD_next_rate(int d_next_rate) {
		this.d_next_rate = d_next_rate;
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
}

package spring.mvc.teamProject.vo;

import java.sql.Timestamp;

public class installment_savingsVO {
<<<<<<< HEAD
	private String j_Key;	
	private String j_name;
	private String account;
	private Timestamp j_join_date;
	private int j_state;
	private int j_rate;
	private int j_type;
	private int j_balance;
	private int j_method;
	private int j_close_type;
	private Timestamp j_date;
	
	
	public String getJ_Key() {
		return j_Key;
	}
	public void setJ_Key(String j_Key) {
=======
	
   private int j_Key;   
   private String j_name;
   private String account;
   private Timestamp j_join_date;
   private int j_state;
   private double j_rate;
   private int j_money;
   private int j_type;
   private int j_balance;
   private int j_method;
   private Timestamp j_end_date;
   private int j_auto_date;
   
   
	public int getJ_Key() {
		return j_Key;
	}
	public void setJ_Key(int j_Key) {
>>>>>>> dev_cms
		this.j_Key = j_Key;
	}
	public String getJ_name() {
		return j_name;
	}
	public void setJ_name(String j_name) {
		this.j_name = j_name;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public Timestamp getJ_join_date() {
		return j_join_date;
	}
	public void setJ_join_date(Timestamp j_join_date) {
		this.j_join_date = j_join_date;
	}
	public int getJ_state() {
		return j_state;
	}
	public void setJ_state(int j_state) {
		this.j_state = j_state;
	}
<<<<<<< HEAD
	public int getJ_rate() {
		return j_rate;
	}
	public void setJ_rate(int j_rate) {
=======
	public double getJ_rate() {
		return j_rate;
	}
	public void setJ_rate(double j_rate) {
>>>>>>> dev_cms
		this.j_rate = j_rate;
	}
	public int getJ_type() {
		return j_type;
	}
	public void setJ_type(int j_type) {
		this.j_type = j_type;
	}
	public int getJ_balance() {
		return j_balance;
	}
	public void setJ_balance(int j_balance) {
		this.j_balance = j_balance;
	}
	public int getJ_method() {
		return j_method;
	}
	public void setJ_method(int j_method) {
		this.j_method = j_method;
	}
<<<<<<< HEAD
	public int getJ_close_type() {
		return j_close_type;
	}
	public void setJ_close_type(int j_close_type) {
		this.j_close_type = j_close_type;
	}
	public Timestamp getJ_date() {
		return j_date;
	}
	public void setJ_date(Timestamp j_date) {
		this.j_date = j_date;
	}
	@Override
	public String toString() {
		return "installment_savingsVO [j_Key=" + j_Key + ", j_name=" + j_name + ", account=" + account
				+ ", j_join_date=" + j_join_date + ", j_state=" + j_state + ", j_rate=" + j_rate + ", j_type=" + j_type
				+ ", j_balance=" + j_balance + ", j_method=" + j_method + ", j_close_type=" + j_close_type + ", j_date="
				+ j_date + "]";
	}
	
	
}
=======
	public int getJ_money() {
		return j_money;
	}
	public void setJ_money(int j_money) {
		this.j_money = j_money;
	}
	public int getJ_auto_date() {
		return j_auto_date;
	}
	public void setJ_auto_date(int j_auto_date) {
		this.j_auto_date = j_auto_date;
	}
	public Timestamp getJ_end_date() {
		return j_end_date;
	}
	public void setJ_end_date(Timestamp j_end_date) {
		this.j_end_date = j_end_date;
	}
   
}
>>>>>>> dev_cms

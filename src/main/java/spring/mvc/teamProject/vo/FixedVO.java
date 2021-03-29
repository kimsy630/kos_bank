package spring.mvc.teamProject.vo;

import java.sql.Timestamp;

// 예금테이블
public class FixedVO {
   
   private String y_Key;
   private String y_name;
   private String account;
   private Timestamp y_join_date;
   private int y_state;
   private double y_rate;
   private int y_type;
   private int y_balance;
   private Timestamp y_end_date;
   private AccountVO accountVO;
	   
	public String getY_Key() {
		return y_Key;
	}
	public void setY_Key(String y_Key) {
		this.y_Key = y_Key;
	}
	public String getY_name() {
		return y_name;
	}
	public void setY_name(String y_name) {
		this.y_name = y_name;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public Timestamp getY_join_date() {
		return y_join_date;
	}
	public void setY_join_date(Timestamp y_join_date) {
		this.y_join_date = y_join_date;
	}
	public int getY_state() {
		return y_state;
	}
	public void setY_state(int y_state) {
		this.y_state = y_state;
	}
	public double getY_rate() {
		return y_rate;
	}
	public void setY_rate(double y_rate) {
		this.y_rate = y_rate;
	}
	public int getY_type() {
		return y_type;
	}
	public void setY_type(int y_type) {
		this.y_type = y_type;
	}
	public int getY_balance() {
		return y_balance;
	}
	public void setY_balance(int y_balance) {
		this.y_balance = y_balance;
	}
	public Timestamp getY_end_date() {
		return y_end_date;
	}
	public void setY_end_date(Timestamp y_end_date) {
		this.y_end_date = y_end_date;
	}
	public AccountVO getAccountVO() {
		return accountVO;
	}
	public void setAccountVO(AccountVO accountVO) {
		this.accountVO = accountVO;
	}
	
	   
}
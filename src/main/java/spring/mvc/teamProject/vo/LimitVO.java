package spring.mvc.teamProject.vo;

import java.sql.Timestamp;

public class LimitVO {
	private int l_key;
	private String account;
	private Timestamp l_date;
	private int l_money;
	private String l_state;
	private AccountVO accountvo;
	public int getL_key() {
		return l_key;
	}
	public void setL_key(int l_key) {
		this.l_key = l_key;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public Timestamp getL_date() {
		return l_date;
	}
	public void setL_date(Timestamp l_date) {
		this.l_date = l_date;
	}
	public int getL_money() {
		return l_money;
	}
	public void setL_money(int l_money) {
		this.l_money = l_money;
	}
	public String getL_state() {
		return l_state;
	}
	public void setL_state(String l_state) {
		this.l_state = l_state;
	}
	public AccountVO getAccountvo() {
		return accountvo;
	}
	public void setAccountvo(AccountVO accountvo) {
		this.accountvo = accountvo;
	}
	
	
}

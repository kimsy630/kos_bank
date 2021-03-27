package spring.mvc.teamProject.vo;

import java.sql.Timestamp;

import oracle.sql.DATE;

public class AccountVO {

	private String account;
	private String id;
	private int accountPW;
	private int balance;
	private String acccountType;
	private String accountState;
	private String acc_state_content;
	private int acccountLimit;
	private DATE delete_date;
	private DATE sleep_date;
	private DATE new_date;
    private MembersVO member;
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getAccountPW() {
		return accountPW;
	}
	public void setAccountPW(int accountPW) {
		this.accountPW = accountPW;
	}
	public int getBalance() {
		return balance;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
	public String getAcccountType() {
		return acccountType;
	}
	public void setAcccountType(String acccountType) {
		this.acccountType = acccountType;
	}
	public String getAccountState() {
		return accountState;
	}
	public void setAccountState(String accountState) {
		this.accountState = accountState;
	}
	public String getAcc_state_content() {
		return acc_state_content;
	}
	public void setAcc_state_content(String acc_state_content) {
		this.acc_state_content = acc_state_content;
	}
	public int getAcccountLimit() {
		return acccountLimit;
	}
	public void setAcccountLimit(int acccountLimit) {
		this.acccountLimit = acccountLimit;
	}
	public DATE getDelete_date() {
		return delete_date;
	}
	public void setDelete_date(DATE delete_date) {
		this.delete_date = delete_date;
	}
	public DATE getSleep_date() {
		return sleep_date;
	}
	public void setSleep_date(DATE sleep_date) {
		this.sleep_date = sleep_date;
	}
	public DATE getNew_date() {
		return new_date;
	}
	public void setNew_date(DATE new_date) {
		this.new_date = new_date;
	}
	public MembersVO getMember() {
		return member;
	}
	public void setMember(MembersVO member) {
		this.member = member;
	}
	@Override
	public String toString() {
		return "AccountVO [account=" + account + ", id=" + id + ", accountPW=" + accountPW + ", balance=" + balance
				+ ", acccountType=" + acccountType + ", accountState=" + accountState + ", acc_state_content="
				+ acc_state_content + ", acccountLimit=" + acccountLimit + ", delete_date=" + delete_date
				+ ", sleep_date=" + sleep_date + ", new_date=" + new_date + ", member=" + member + "]";
	}
  
	

}

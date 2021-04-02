package spring.mvc.teamProject.vo;

import java.sql.Timestamp;

import oracle.sql.DATE;

public class AccountVO {
	private String account;
	private String id;
	private int accountPW;
	private int balance;
	private String accountType;
	private String accountState;
	private String acc_state_content;
	private Timestamp delete_date;
	private Timestamp sleep_date;
	private Timestamp new_date;
	private int accountLimit;
	private int oneLimit;
	private int reset_accountLimit;
	private int reset_oneLimit;
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
	public String getAccountType() {
		return accountType;
	}
	public void setAccountType(String accountType) {
		this.accountType = accountType;
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
	public int getAccountLimit() {
		return accountLimit;
	}
	public void setAccountLimit(int accountLimit) {
		this.accountLimit = accountLimit;
	}
	public Timestamp getDelete_date() {
		return delete_date;
	}
	public void setDelete_date(Timestamp delete_date) {
		this.delete_date = delete_date;
	}
	public Timestamp getSleep_date() {
		return sleep_date;
	}
	public void setSleep_date(Timestamp sleep_date) {
		this.sleep_date = sleep_date;
	}
	public Timestamp getNew_date() {
		return new_date;
	}
	public void setNew_date(Timestamp new_date) {
		this.new_date = new_date;
	}
	public MembersVO getMember() {
		return member;
	}
	public void setMember(MembersVO member) {
		this.member = member;
	}
	public int getOneLimit() {
		return oneLimit;
	}
	public void setOneLimit(int oneLimit) {
		this.oneLimit = oneLimit;
	}
	public int getReset_accountLimit() {
		return reset_accountLimit;
	}
	public void setReset_accountLimit(int reset_accountLimit) {
		this.reset_accountLimit = reset_accountLimit;
	}
	public int getReset_oneLimit() {
		return reset_oneLimit;
	}
	public void setReset_oneLimit(int reset_oneLimit) {
		this.reset_oneLimit = reset_oneLimit;
	}
	@Override
	public String toString() {
		return "AccountVO [account=" + account + ", id=" + id + ", accountPW=" + accountPW + ", balance=" + balance
				+ ", accountType=" + accountType + ", accountState=" + accountState + ", acc_state_content="
				+ acc_state_content + ", accountLimit=" + accountLimit + ", delete_date=" + delete_date
				+ ", sleep_date=" + sleep_date + ", new_date=" + new_date + ", member=" + member + "]";
	}
    
    
}

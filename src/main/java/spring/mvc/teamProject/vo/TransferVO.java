package spring.mvc.teamProject.vo;

import com.sun.jmx.snmp.Timestamp;

public class TransferVO {
	
	private int transfer_id;
	private String account;
	private String sender_account;
	private String sender_name;
	private int money;
	private String in_out;
	private Timestamp in_outDate;
	private String out_comment;
	private String in_comment;
	private AccountVO accountvo;
	
	
	public int getTransfer_id() {
		return transfer_id;
	}
	public void setTransfer_id(int transfer_id) {
		this.transfer_id = transfer_id;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getSender_account() {
		return sender_account;
	}
	public void setSender_account(String sender_account) {
		this.sender_account = sender_account;
	}
	public String getSender_name() {
		return sender_name;
	}
	public void setSender_name(String sender_name) {
		this.sender_name = sender_name;
	}
	public int getMoney() {
		return money;
	}
	public void setMoney(int money) {
		this.money = money;
	}
	public String getIn_out() {
		return in_out;
	}
	public void setIn_out(String in_out) {
		this.in_out = in_out;
	}
	public Timestamp getIn_outDate() {
		return in_outDate;
	}
	public void setIn_outDate(Timestamp in_outDate) {
		this.in_outDate = in_outDate;
	}
	public String getOut_comment() {
		return out_comment;
	}
	public void setOut_comment(String out_comment) {
		this.out_comment = out_comment;
	}
	public String getIn_comment() {
		return in_comment;
	}
	public void setIn_comment(String in_comment) {
		this.in_comment = in_comment;
	}
	public AccountVO getAccountvo() {
		return accountvo;
	}
	public void setAccountvo(AccountVO accountvo) {
		this.accountvo = accountvo;
	}
	
	@Override
	public String toString() {
		return "TransferVO [transfer_id=" + transfer_id + ", account=" + account + ", sender_account=" + sender_account
				+ ", sender_name=" + sender_name + ", money=" + money + ", in_out=" + in_out + ", in_outDate="
				+ in_outDate + ", out_comment=" + out_comment + ", in_comment=" + in_comment + ", accountvo="
				+ accountvo + "]";
	}
	
	
}

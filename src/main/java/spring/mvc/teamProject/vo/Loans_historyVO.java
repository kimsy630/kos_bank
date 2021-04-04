package spring.mvc.teamProject.vo;

import java.sql.Timestamp;

public class Loans_historyVO {
	private int d_his_Key; // 대출상환번호
	private int d_Key; // 대출번호
	private int transfer_id; // 이체번호
	private Timestamp d_his_date; // 대출상환일자
	private String d_his_state; // 대출상환종류
	private int d_his_amount; // 대출상환금액
	
	public int getD_his_Key() {
		return d_his_Key;
	}
	
	public void setD_his_Key(int d_his_Key) {
		this.d_his_Key = d_his_Key;
	}
	
	public int getD_Key() {
		return d_Key;
	}
	
	public void setD_Key(int d_Key) {
		this.d_Key = d_Key;
	}
	
	public int getTransfer_id() {
		return transfer_id;
	}
	
	public void setTransfer_id(int transfer_id) {
		this.transfer_id = transfer_id;
	}
	
	public Timestamp getD_his_date() {
		return d_his_date;
	}
	
	public void setD_his_date(Timestamp d_his_date) {
		this.d_his_date = d_his_date;
	}
	
	public String getD_his_state() {
		return d_his_state;
	}
	
	public void setD_his_state(String d_his_state) {
		this.d_his_state = d_his_state;
	}
	
	public int getD_his_amount() {
		return d_his_amount;
	}
	
	public void setD_his_amount(int d_his_amount) {
		this.d_his_amount = d_his_amount;
	}
	
}

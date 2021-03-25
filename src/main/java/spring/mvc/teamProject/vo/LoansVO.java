package spring.mvc.teamProject.vo;

import java.sql.Timestamp;

public class LoansVO {
	private String d_Key;
	private String d_name;
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
	private double d_ERR;
	private int d_ERC;
	private MembersVO Members;
	
	public String getD_name() {
		return d_name;
	}
	public void setD_name(String d_name) {
		this.d_name = d_name;
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
	public double getD_ERR() {
		return d_ERR;
	}
	public void setD_ERR(double d_ERR) {
		this.d_ERR = d_ERR;
	}
	public int getD_ERC() {
		return d_ERC;
	}
	public void setD_ERC(int d_ERC) {
		this.d_ERC = d_ERC;
	}
	public MembersVO getMembers() {
		return Members;
	}
	public void setMembers(MembersVO members) {
		Members = members;
	}
}

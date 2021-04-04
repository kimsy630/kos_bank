package spring.mvc.teamProject.vo;

import java.sql.Timestamp;

public class LoansVO {
	//public float EASD=1.5f;
	private String d_Key; // 대출번호
	private String d_name; // 대출 상품 이름
	private String account; // 계좌번호
	private int d_state; // 대출상태
	private Timestamp d_start_date; // 대출실행일
	private Timestamp d_end_date; // 대출만기일
	private int d_month; // 대출기간
	private String d_repay; // 상환방법
	private double d_rate; // 대출금리
	private int d_amount; // 대출원금
	private int d_balance; // 대출잔액
	private int d_balance_rate; // 이자 잔액
	private int d_loan_balance; // 납입원금누액
	private int d_loan_rate; // 납입이자누액
	private int d_tran; // 이체(할)원금
	private int d_tran_rate; // 이체(할)이자
	private int d_next_rate; // 이체(할)이자실행번호
	private double d_ERR; // 중도상환수수료율 (early redemption rate)
	private int d_ERC; // 중도상환수수료 (early redemption charge)
	private String d_auto_account; // 자동이체계좌
	private int d_auto_date; // 자동이체일
	private MembersVO Members;
	private AccountVO accountVO;
		
	public AccountVO getAccountVO() {
		return accountVO;
	}
	public void setAccountVO(AccountVO accountVO) {
		this.accountVO = accountVO;
	}
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
	public double getD_rate() {
		return d_rate;
	}
	public void setD_rate(double d_rate) {
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
	public String getD_auto_account() {
		return d_auto_account;
	}
	public void setD_auto_account(String d_auto_account) {
		this.d_auto_account = d_auto_account;
	}
	public int getD_auto_date() {
		return d_auto_date;
	}
	public void setD_auto_date(int d_auto_date) {
		this.d_auto_date = d_auto_date;
	}
	public MembersVO getMembers() {
		return Members;
	}
	public void setMembers(MembersVO members) {
		Members = members;
	}
	
}

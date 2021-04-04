package spring.mvc.teamProject.vo;

import java.sql.Timestamp;

public class FundInvestorVO {
	private String id;
    private int f_num;
    private String account;
    private String f_account;
    private int f_money;
    private Timestamp f_date;
    
    public FundInvestorVO() {}
	
    public FundInvestorVO(String Id, int f_num, String Account, String f_account, int f_money, Timestamp f_date) {
		super();
		id = Id;
		this.f_num = f_num;
		account = Account;
		this.f_account = f_account;
		this.f_money = f_money;
		this.f_date = f_date;
	}

	public String getId() {
		return id;
	}

	public void setId(String Id) {
		id = Id;
	}

	public int getF_num() {
		return f_num;
	}

	public void setF_num(int f_num) {
		this.f_num = f_num;
	}

	public String getAccount() {
		return account;
	}

	public void setAccount(String Account) {
		account = Account;
	}

	public String getF_account() {
		return f_account;
	}

	public void setF_account(String f_account) {
		this.f_account = f_account;
	}

	public int getF_money() {
		return f_money;
	}

	public void setF_money(int f_money) {
		this.f_money = f_money;
	}

	public Timestamp getF_date() {
		return f_date;
	}

	public void setF_date(Timestamp f_date) {
		this.f_date = f_date;
	}

	@Override
	public String toString() {
		return "FundInvestorVO [ID=" + id + ", f_num=" + f_num + ", ACCOUNT=" + account + ", f_account=" + f_account
				+ ", f_money=" + f_money + ", f_date=" + f_date + "]";
	}
    
    
	
    
   
   
   
   
   
   
   
}
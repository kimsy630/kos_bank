package spring.mvc.teamProject.vo;

import java.sql.Timestamp;

public class AccountVO {

	private String account;
	private String id;
	private int accountPW;
	private int balance;
	private String acccountType;
	private String accountState;
	private String acc_state_content;
	private int acccountLimit;
	private Timestamp delete_date;
	private Timestamp sleep_date;
	private Timestamp new_date;
   
   
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
   
   @Override
   public String toString() {
      return "AccountVO [account=" + account + ", id=" + id + ", accountPW=" + accountPW + ", Balance=" + balance
            + ", acccountType=" + acccountType + ", accountState=" + accountState + ", acc_state_content="
            + acc_state_content + ", acccountLimit=" + acccountLimit + ", delete_date=" + delete_date
            + ", sleep_date=" + sleep_date + ", new_date=" + new_date + "]";
   }
}

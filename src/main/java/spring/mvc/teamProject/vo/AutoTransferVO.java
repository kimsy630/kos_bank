package spring.mvc.teamProject.vo;


public class AutoTransferVO {
	
	private int jd_key;
	private String account;
	private String jd_account;
	private String jd_type;
	private String jd_outDate;
	private int jd_autoMoney;
	private String jd_outCycle;
	private String jd_registDate;
	private String jd_expirationDate;
	private String jd_autoCancle;
	private String jd_inPlace;
	private String jd_status; // 정상,해지
	private String jd_autoLastDay;
	private AccountVO accountvo;
	
	public int getJd_key() {
		return jd_key;
	}
	public void setJd_key(int jd_key) {
		this.jd_key = jd_key;
	}
	public String getAccount() {
		return account;
	}
	public void setAccount(String account) {
		this.account = account;
	}
	public String getJd_account() {
		return jd_account;
	}
	public void setJd_account(String jd_account) {
		this.jd_account = jd_account;
	}
	public String getJd_type() {
		return jd_type;
	}
	public void setJd_type(String jd_type) {
		this.jd_type = jd_type;
	}
	public String getJd_outDate() {
		return jd_outDate;
	}
	public void setJd_outDate(String jd_outDate) {
		this.jd_outDate = jd_outDate;
	}
	public int getJd_autoMoney() {
		return jd_autoMoney;
	}
	public void setJd_autoMoney(int jd_autoMoney) {
		this.jd_autoMoney = jd_autoMoney;
	}
	public String getJd_outCycle() {
		return jd_outCycle;
	}
	public void setJd_outCycle(String jd_outCycle) {
		this.jd_outCycle = jd_outCycle;
	}
	public String getJd_registDate() {
		return jd_registDate;
	}
	public void setJd_registDate(String jd_registDate) {
		this.jd_registDate = jd_registDate;
	}
	public String getJd_expirationDate() {
		return jd_expirationDate;
	}
	public void setJd_expirationDate(String jd_expirationDate) {
		this.jd_expirationDate = jd_expirationDate;
	}
	public String getJd_autoCancle() {
		return jd_autoCancle;
	}
	public void setJd_autoCancle(String jd_autoCancle) {
		this.jd_autoCancle = jd_autoCancle;
	}
	public String getJd_inPlace() {
		return jd_inPlace;
	}
	public void setJd_inPlace(String jd_inPlace) {
		this.jd_inPlace = jd_inPlace;
	}
	public String getJd_status() {
		return jd_status;
	}
	public void setJd_status(String jd_status) {
		this.jd_status = jd_status;
	}
	public String getJd_autoLastDay() {
		return jd_autoLastDay;
	}
	public void setJd_autoLastDay(String jd_autoLastDay) {
		this.jd_autoLastDay = jd_autoLastDay;
	}
	public AccountVO getAccountvo() {
		return accountvo;
	}
	public void setAccountvo(AccountVO accountvo) {
		this.accountvo = accountvo;
	}
	
	@Override
	public String toString() {
		return "AutoTransferVO [jd_key=" + jd_key + ", account=" + account + ", jd_account=" + jd_account + ", jd_type="
				+ jd_type + ", jd_outDate=" + jd_outDate + ", jd_autoMoney=" + jd_autoMoney + ", jd_outCycle="
				+ jd_outCycle + ", jd_registDate=" + jd_registDate + ", jd_expirationDate=" + jd_expirationDate
				+ ", jd_autoCancle=" + jd_autoCancle + ", jd_inPlace=" + jd_inPlace + ", jd_status=" + jd_status
				+ ", jd_autoLastDay=" + jd_autoLastDay + ", accountvo=" + accountvo + "]";
	}
	
	
	
	
}

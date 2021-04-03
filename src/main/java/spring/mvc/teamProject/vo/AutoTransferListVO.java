package spring.mvc.teamProject.vo;

import oracle.sql.DATE;

public class AutoTransferListVO {
	
	private String jd_key;
	private DATE jd_date;
	private String jd_success;
	private String jd_inout;
	
	public String getJd_key() {
		return jd_key;
	}
	public void setJd_key(String jd_key) {
		this.jd_key = jd_key;
	}
	public DATE getJd_date() {
		return jd_date;
	}
	public void setJd_date(DATE jd_date) {
		this.jd_date = jd_date;
	}
	public String getJd_success() {
		return jd_success;
	}
	public void setJd_success(String jd_success) {
		this.jd_success = jd_success;
	}
	public String getJd_inout() {
		return jd_inout;
	}
	public void setJd_inout(String jd_inout) {
		this.jd_inout = jd_inout;
	}
	
	@Override
	public String toString() {
		return "AutoTransferList [jd_key=" + jd_key + ", jd_date=" + jd_date + ", jd_success=" + jd_success
				+ ", jd_inout=" + jd_inout + "]";
	}
	
	
	
	
}

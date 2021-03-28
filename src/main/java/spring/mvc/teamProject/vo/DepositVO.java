package spring.mvc.teamProject.vo;

import java.sql.Timestamp;

public class DepositVO {
   private String y_Key;
   private String y_name;
<<<<<<< HEAD
   private String account;
   private Timestamp y_join_date;
   private int y_state;
   private int y_rate;
   private int y_type;
   private int y_balance;
   private Timestamp y_end_date;
public String getY_Key() {
	return y_Key;
}
public void setY_Key(String y_Key) {
	this.y_Key = y_Key;
}
public String getY_name() {
	return y_name;
}
public void setY_name(String y_name) {
	this.y_name = y_name;
}
public String getAccount() {
	return account;
}
public void setAccount(String account) {
	this.account = account;
}
public Timestamp getY_join_date() {
	return y_join_date;
}
public void setY_join_date(Timestamp y_join_date) {
	this.y_join_date = y_join_date;
}
public int getY_state() {
	return y_state;
}
public void setY_state(int y_state) {
	this.y_state = y_state;
}
public int getY_rate() {
	return y_rate;
}
public void setY_rate(int y_rate) {
	this.y_rate = y_rate;
}
public int getY_type() {
	return y_type;
}
public void setY_type(int y_type) {
	this.y_type = y_type;
}
public int getY_balance() {
	return y_balance;
}
public void setY_balance(int y_balance) {
	this.y_balance = y_balance;
}
public Timestamp getY_end_date() {
	return y_end_date;
}
public void setY_end_date(Timestamp y_end_date) {
	this.y_end_date = y_end_date;
}

@Override
public String toString() {
	return "DepositVO [y_Key=" + y_Key + ", y_name=" + y_name + ", account=" + account + ", y_join_date=" + y_join_date
			+ ", y_state=" + y_state + ", y_rate=" + y_rate + ", y_type=" + y_type + ", y_balance=" + y_balance
			+ ", y_end_date=" + y_end_date + "]";
}
   
   
=======
   private String y_summary;
   private Timestamp y_date;
   private double y_interest_rate;
   private int y_type;
   private int y_max_date;
   private int y_min_date;
   private int y_min_price;
   private String y_explanation;
   private String y_notice;
   
   
   public String getY_name() {
		return y_name;
   }
   public void setY_name(String y_name) {
	    this.y_name = y_name;
   }
   public String getY_summary() {
	    return y_summary;
   }
   public void setY_summary(String y_summary) {
	    this.y_summary = y_summary;
   }
   public Timestamp getY_date() {
	   	return y_date;
   }
   public void setY_date(Timestamp y_date) {
	    this.y_date = y_date;
   }
   public double getY_interest_rate() {
	    return y_interest_rate;
   }
   public void setY_interest_rate(double y_interest_rate) {
	    this.y_interest_rate = y_interest_rate;
   }
   public int getY_max_date() {
	    return y_max_date;
   }
   public void setY_max_date(int y_max_date) {
	    this.y_max_date = y_max_date;
   }
   public int getY_min_date() {
	    return y_min_date;
   }
   public void setY_min_date(int y_min_date) {
	    this.y_min_date = y_min_date;
   }
   public int getY_min_price() {
	    return y_min_price;
   }
   public void setY_min_price(int y_min_price) {
	    this.y_min_price = y_min_price;
   }
   public String getY_explanation() {
	    return y_explanation;
   }
   public void setY_explanation(String y_explanation) {
	    this.y_explanation = y_explanation;
   }
   public String getY_notice() {
	    return y_notice;
   }
   public void setY_notice(String y_notice) {
	    this.y_notice = y_notice;
   }
   public int getY_type() {
		return y_type;
   }
   public void setY_type(int y_type) {
		this.y_type = y_type;
   }
>>>>>>> dev_cms
   
}
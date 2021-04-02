package spring.mvc.teamProject.vo;

import java.sql.Timestamp;

public class FundingVO {
   private int f_num;
   private String id;
   private String account;
   private String f_title;
   private String f_content;
   private String f_start_date;
   private String f_end_date;
   private String f_target_money;
   private String f_category;
   private int f_approve;
   private String f_name;
   private String f_phone;
   private String f_Email;
   private String f_filename;
   private AccountVO accountVO;
   public int getF_num() {
      return f_num;
   }
   public void setF_num(int f_num) {
      this.f_num = f_num;
   }
   public String getId() {
      return id;
   }
   public void setId(String Id) {
      id = Id;
   }
   public String getF_title() {
      return f_title;
   }
   public void setF_title(String f_title) {
      this.f_title = f_title;
   }
   public String getF_content() {
      return f_content;
   }
   public void setF_content(String f_content) {
      this.f_content = f_content;
   }
   public String getF_start_date() {
      return f_start_date;
   }
   public void setF_start_date(String f_start_date) {
      this.f_start_date = f_start_date;
   }
   public String getF_end_date() {
      return f_end_date;
   }
   public void setF_end_date(String f_end_date) {
      this.f_end_date = f_end_date;
   }
   public String getF_target_money() {
      return f_target_money;
   }
   public void setF_target_money(String f_target_money) {
      this.f_target_money = f_target_money;
   }
   public String getF_category() {
      return f_category;
   }
   public void setF_category(String f_category) {
      this.f_category = f_category;
   }
   public int getF_approve() {
      return f_approve;
   }
   public void setF_approve(int f_approve) {
      this.f_approve = f_approve;
   }
   public String getF_name() {
      return f_name;
   }
   public void setF_name(String f_name) {
      this.f_name = f_name;
   }
   public String getF_phone() {
      return f_phone;
   }
   public void setF_phone(String f_phone) {
      this.f_phone = f_phone;
   }
   public String getF_Email() {
      return f_Email;
   }
   public void setF_Email(String f_Email) {
      this.f_Email = f_Email;
   }
   
   public String getAccount() {
      return account;
   }
   public void setAccount(String Account) {
      this.account = Account;
   }
   public String getF_filename() {
      return f_filename;
   }
   public void setF_filename(String f_filename) {
      this.f_filename = f_filename;
   }
   public AccountVO getAccountVO() {
      return accountVO;
   }
   public void setAccountVO(AccountVO accountVO) {
      this.accountVO = accountVO;
   }
   
   
}
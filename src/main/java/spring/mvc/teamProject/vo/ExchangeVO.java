package spring.mvc.teamProject.vo;

public class ExchangeVO {
	private String country_name;//외화
	private float buying_cost;//현찰 살 때
    private float bfee_ratio;//현찰 살 때 수수료율
    private float selling_cost;//현찰 팔 때 
    private float slfee_ratio;//현찰 팔 때 수수료율
    private float sending_cost;//송금 보낼 떄
    private float sefee_ratio;//송금 보낼 때 수수료율
    private float dealing_br;//매매기준율
    
    private boolean is_check;

    
    public float exchangeCalculatorSell(int money) {
    	return (money*this.selling_cost);
    }
    public float exchangeCalculatorBuy(int money) {
    	return (money/this.buying_cost);
    }
	public String getCountry_name() {
		return country_name;
	}
	public void setCountry_name(String country_name) {
		this.country_name = country_name;
	}
	public float getBuying_cost() {
		return buying_cost;
	}
	public void setBuying_cost(float buying_cost) {
		this.buying_cost = buying_cost;
	}
	public float getBfee_ratio() {
		return bfee_ratio;
	}
	public void setBfee_ratio(float bfee_ratio) {
		this.bfee_ratio = bfee_ratio;
	}
	public float getSelling_cost() {
		return selling_cost;
	}
	public void setSelling_cost(float selling_cost) {
		this.selling_cost = selling_cost;
	}
	public float getSlfee_ratio() {
		return slfee_ratio;
	}
	public void setSlfee_ratio(float slfee_ratio) {
		this.slfee_ratio = slfee_ratio;
	}
	public float getSending_cost() {
		return sending_cost;
	}
	public void setSending_cost(float sending_cost) {
		this.sending_cost = sending_cost;
	}
	public float getSefee_ratio() {
		return sefee_ratio;
	}
	public void setSefee_ratio(float sefee_ratio) {
		this.sefee_ratio = sefee_ratio;
	}
	public float getDealing_br() {
		return dealing_br;
	}
	public void setDealing_br(float dealing_br) {
		this.dealing_br = dealing_br;
	}
    
    
}

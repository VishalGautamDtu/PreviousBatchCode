package com.pojos;

public class Trade {
	private int trade_number;
	private String name;
	private String candidate;
	private String stock;
	private String trade_date;
	private String trade_time;
	private String trade_type;

	private String security_type;
	private int quantity;
	private double price;
	private double value;
	private int flag;

	public Trade(int trade_number, String name, String candidate, String stock, String trade_date, String trade_time,
			String trade_type, String security_type, int quantity, double price, double value) {
		super();
		this.trade_number = trade_number;
		this.name = name;
		this.candidate = candidate;
		this.stock = stock;
		this.trade_date = trade_date;
		this.trade_time = trade_time;
		this.trade_type = trade_type;
		this.security_type = security_type;
		this.quantity = quantity;
		this.price = price;
		this.value = value;
		this.flag = 0;
	}

	public Trade() {
		super();
	}

	public int getTrade_number() {
		return trade_number;
	}

	public void setTrade_number(int trade_number) {
		this.trade_number = trade_number;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCandidate() {
		return candidate;
	}

	public void setCandidate(String candidate) {
		this.candidate = candidate;
	}

	public String getStock() {
		return stock;
	}

	public void setStock(String stock) {
		this.stock = stock;
	}

	public String getTrade_date() {
		return trade_date;
	}

	public void setTrade_date(String trade_date) {
		this.trade_date = trade_date;
	}

	public String getTrade_time() {
		return trade_time;
	}

	public void setTrade_time(String trade_time) {
		this.trade_time = trade_time;
	}

	public String getTrade_type() {
		return trade_type;
	}

	public void setTrade_type(String trade_type) {
		this.trade_type = trade_type;
	}

	public String getSecurity_type() {
		return security_type;
	}

	public void setSecurity_type(String security_type) {
		this.security_type = security_type;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public double getValue() {
		return value;
	}

	public void setValue(double value) {
		this.value = value;
	}

	public int getFlag() {
		return flag;
	}

	public void setFlag(int flag) {
		this.flag = flag;
	}

}

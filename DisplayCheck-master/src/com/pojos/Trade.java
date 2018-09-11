package com.pojos;

public class Trade {
	private int trade_id;
	private String name;
	private String trader_type;
	private String stock;
	private String trade_date;
	private String trade_time;
	private String trade_type;

	private String security_type;
	private int quantity;
	private double price;
	private double value;
	private int flag;

	public Trade(int trade_id, String name, String trader_type, String stock, String trade_date, String trade_time,
			String trade_type, String security_type, int quantity, double price, double value) {
		super();
		this.trade_id = trade_id;
		this.name = name;
		this.trader_type = trader_type;
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

	public int gettrade_id() {
		return trade_id;
	}

	public void settrade_id(int trade_id) {
		this.trade_id = trade_id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String gettrader_type() {
		return trader_type;
	}

	public void settrader_type(String trader_type) {
		this.trader_type = trader_type;
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

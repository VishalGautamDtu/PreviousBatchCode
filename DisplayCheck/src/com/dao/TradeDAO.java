package com.dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.connections.MyConnection;
import com.pojos.Trade;


public class TradeDAO {

	public List<Trade> findAllTrades() {
		// TODO Auto-generated method stub
		List<Trade> Trades = new ArrayList<>();
		String find_all_Trades = "select * from trades";
		
		try {
			Statement s = MyConnection.getMyConnection().createStatement();
			ResultSet set = s.executeQuery(find_all_Trades);
			while (set.next()) {

				Trades.add(new Trade(set.getInt(1), set.getString(2), set.getString(3), set.getString(4),
						set.getString(5), set.getString(6), set.getString(7),set.getString(8), set.getInt(9), set.getDouble(10), set.getDouble(11)));
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		return Trades;
	}
	
	public void updateTrade(int tradeNumber, int flag) {

		String update_Trade = "update trades set SCENARIO =? where TRADE_NUMBER =?";
		try {
			PreparedStatement ps = MyConnection.getMyConnection().prepareStatement(update_Trade);
			ps.setInt(1, flag);
			ps.setInt(2, tradeNumber);

			 ps.executeUpdate();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		

	} 

}

package com.dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.time.LocalTime;
import java.util.ArrayList;
import java.util.List;

import com.connections.MyConnection;
import com.pojos.Trade;

public class FetchTrade {

	public List<Trade> allTrades() {
		// TODO Auto-generated method stub

		Connection con = MyConnection.getMyConnection();
		List<Trade> list = new ArrayList<Trade>();
		String find_all_Trades = "select * from trades";
	

		try {
			Statement st = con.createStatement();
		
			ResultSet set = st.executeQuery(find_all_Trades);
			Trade tr;
			while (set.next()) {
				tr = new Trade(set.getInt(1), set.getString(2), set.getString(3), set.getString(4), set.getString(5),
						set.getString(6), set.getString(7), set.getString(8), set.getInt(9), set.getDouble(10),
						set.getDouble(11));
				list.add(tr);

				// System.out.println(trade_number+" "+name+" "+quantity);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

//		for(int i=0;i<1000;i++){
//		    System.out.println(t.toString() + i);
//		} 

		List<Integer> fraud_Traders = new ArrayList<Integer>();
		System.out.println(list.size());
		int c = 0, d = 0;

		for (int i = 0; i < list.size(); i++) {
			Trade t = list.get(i);
			if (t.getCandidate().equals("Trader")) {
				for (int j = i; j < list.size(); j++) {
					Trade p = list.get(j);
					if (LocalTime.parse(p.getTrade_time())
							.isAfter(LocalTime.parse(t.getTrade_time()).plusSeconds(60)))
						break;

					if (p.getCandidate().equals("Client") && LocalTime.parse(p.getTrade_time())
							.isBefore(LocalTime.parse(t.getTrade_time()).plusSeconds(60)))

					{
						if ((p.getTrade_type().equals(t.getTrade_type())
								&& p.getStock().equals(t.getStock())))

						{
							c++;
							if (p.getSecurity_type().equals(t.getSecurity_type())) {

								fraud_Traders.add(t.getTrade_number());

								if (t.getTrade_type().equals("B")) {
									//System.out.println(t.getTrade_number() + "    "
											//+ p.getTrade_number() + "	 Scenario: 1");
									t.setFlag(1);
								} else {
//									System.out.println(t.getTrade_number() + "    "
//										+ p.getTrade_number() + "	 Scenario: 2");
									t.setFlag(2);
								}

							}

							else {
//								System.out.println(t.getTrade_number() + "    "
//										+ p.getTrade_number() + "	 Scenario: 4");
								t.setFlag(4);
							}

						}
					}
				}

				int Trader_sum = 0, clients_sum = 0;

				List<Integer> frauds_sen3 = new ArrayList<>();
				List<Integer> clients_sen3 = new ArrayList<>();

				Trader_sum = Trader_sum + t.getQuantity();
				frauds_sen3.add(t.getTrade_number());

				for (int j = i + 1; j < list.size(); j++) {
					Trade p = list.get(j);
					if (LocalTime.parse(p.getTrade_time())
							.isAfter(LocalTime.parse(t.getTrade_time()).plusSeconds(60)))
						break;
					if (LocalTime.parse(p.getTrade_time())
							.isBefore(LocalTime.parse(t.getTrade_time()).plusSeconds(60))) {
						if (((p.getTrade_type().equals("B") && t.getTrade_type().equals("B"))
								&& p.getStock().equals(t.getStock()))) {
							if (p.getSecurity_type().equals(t.getSecurity_type())) {
								if (p.getCandidate().equals("Client")) {
									clients_sum = clients_sum + p.getQuantity();

									clients_sen3.add(p.getTrade_number());

								}
								if (p.getCandidate().equals("Trader")
										&& p.getName().equals(t.getName())) {
									Trader_sum = Trader_sum + p.getQuantity();

									frauds_sen3.add(p.getTrade_number());

								}
							}
						}
					}

				}
				if (Trader_sum == clients_sum) {
//					System.out.println(frauds_sen3.toString());

//					System.out.println(clients_sen3.toString());

					// System.out.println("scenario:3");
					t.setFlag(3);

					d++;
				}
			}
		}
		System.out.println(c + "	" + d);
//	for (int i=1;i<fraud_Traders.size();i++) {
//		System.out.println(fraud_Traders.get(i));
//	}
		return list;

	}

}
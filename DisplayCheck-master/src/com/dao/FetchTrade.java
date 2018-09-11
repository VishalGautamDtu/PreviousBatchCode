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
		String find_all_Trades = "select * from trades1";
	

		try {
			Statement st = con.createStatement();
		
			ResultSet set = st.executeQuery(find_all_Trades);
			Trade tr;
			while (set.next()) {
				tr = new Trade(set.getInt(1), set.getString(2), set.getString(3), set.getString(4), set.getString(5),
						set.getString(6), set.getString(7), set.getString(8), set.getInt(9), set.getDouble(10),
						set.getDouble(11));
				list.add(tr);

				// System.out.println(trade_id+" "+name+" "+quantity);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

//		for(int i=0;i<1000;i++){
//		    System.out.println(t.toString() + i);
//		} 
		Trade t;
		Trade p=new Trade();

		List<Integer> fraud_Traders = new ArrayList<Integer>();
		System.out.println(list.size());
		int c = 0, d = 0;
		List<String> realbs = new ArrayList<String>();

		for(int i =0; i < list.size(); i++) {
		if(list.get(i).getSecurity_type().equals("PUT_OPTION"))
		{
		if(list.get(i).getTrade_type().equals("B")) {
		realbs.add("S");
		}
		else {
		realbs.add("B");
		}
		}
		else {
		realbs.add(list.get(i).getTrade_type());
		}
		}

		for (int i = 0; i < list.size(); i++) {
			t = list.get(i);
			if (t.gettrader_type().equals("T")) {
				for (int j = i+1; j < list.size(); j++) {
					p = list.get(j);
					if (LocalTime.parse(p.getTrade_time())
							.isAfter(LocalTime.parse(t.getTrade_time()).plusSeconds(60)))
						break;

					if (p.gettrader_type().equals("C") && LocalTime.parse(p.getTrade_time())
							.isBefore(LocalTime.parse(t.getTrade_time()).plusSeconds(60)))

					{
						if (realbs.get(j).equals(realbs.get(i))
								&& list.get(j).getStock().equals(list.get(i).getStock()))

						{
							c++;
							if (p.getSecurity_type().equals(t.getSecurity_type()))
							{

								fraud_Traders.add(t.gettrade_id());

								if (realbs.get(i).equals("B")) 
								{
//									System.out.println(t.gettrade_id() + "    "
//											+ p.gettrade_id() + "	 Scenario: 1");
									t.setFlag(1);
									p.setFlag(1);
								}
								else
								{
//									System.out.println(t.gettrade_id() + "    "
//										+ p.gettrade_id() + "	 Scenario: 2");
									t.setFlag(2);
									p.setFlag(2);
								}

							}

							else
							{
//								System.out.println(t.gettrade_id() + "    "
//										+ p.gettrade_id() + "	 Scenario: 4");
								t.setFlag(4);
								p.setFlag(4);
							}

						}
					}
				}

				int Trader_sum = 0, clients_sum = 0;

				List<Integer> frauds_sen3 = new ArrayList<>();
				List<Integer> clients_sen3 = new ArrayList<>();

				Trader_sum = Trader_sum + t.getQuantity();
				frauds_sen3.add(t.gettrade_id());

				for (int j = i+1; j < list.size(); j++) {
					p = list.get(j);
					if(LocalTime.parse(list.get(j).getTrade_time())
					.isAfter(LocalTime.parse(list.get(i).getTrade_time()).plusSeconds(60)))break;
					if (LocalTime.parse(list.get(j).getTrade_time())
					.isBefore(LocalTime.parse(list.get(i).getTrade_time()).plusSeconds(60)))
					{
					if (realbs.get(j).equals(realbs.get(i))
					&& list.get(j).getStock().equals(list.get(i).getStock()))
					{
					if( list.get(j).getSecurity_type().equals(list.get(i).getSecurity_type())) {
					if(list.get(j).gettrader_type().equals("C") ) {
					clients_sum=clients_sum+list.get(j).getQuantity();

					clients_sen3.add(list.get(j).gettrade_id());

					}
					if(list.get(j).gettrader_type().equals("T") && list.get(j).getName().equals(list.get(i).getName())){
					Trader_sum=Trader_sum+list.get(j).getQuantity();

					frauds_sen3.add(list.get(j).gettrade_id());

					}
					}
					}
					}

					}
					if (Trader_sum==clients_sum) {
					System.out.println(frauds_sen3.toString());

					System.out.println(clients_sen3.toString());

					System.out.println("scenario:3");
					t.setFlag(3);
					p.setFlag(3);
					

					d++;
					}
					}
					}
					System.out.println(c+" "+d);
					// for (int i=1;i<fraud_traders.size();i++) {
					// System.out.println(fraud_traders.get(i));
					// }
						return list;
					}

					}


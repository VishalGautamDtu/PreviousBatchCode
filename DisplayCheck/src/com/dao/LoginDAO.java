package com.dao;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.connections.MyConnection;

public class LoginDAO {
	public boolean checkLogin(String username, String password) {
		boolean success = false;
		String search = "select * from creden where username = ? and pass =?";
		try {
			PreparedStatement ps = MyConnection.getMyConnection().prepareStatement(search);
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet set  = ps.executeQuery();
			while(set.next())
				success = true;

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return success;

	}
}

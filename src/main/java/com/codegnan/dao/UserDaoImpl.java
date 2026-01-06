package com.codegnan.dao;

import java.sql.*;
import com.codegnan.factories.ConnectionFactory;

public class UserDaoImpl implements UserDao {

    public String validateUser(String username, String password) {
        String role = null;
        String sql = "SELECT role FROM users WHERE username=? AND password=?";

        try (Connection con = ConnectionFactory.getConnection();
             PreparedStatement ps = con.prepareStatement(sql)) {

            ps.setString(1, username);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                role = rs.getString("role");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return role;
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import model.User;

/**
 *
 * @author Nanhbeo
 */
public class UserDAO extends DBContext {

    public ArrayList<User> getAllUser() {
        ArrayList<User> list = new ArrayList<>();
        try {
            // Create SQL String
            String sql = "SELECT * FROM [Users]"; // Create SQL String
            // Create Statement
            PreparedStatement stm = connection.prepareStatement(sql);
            // Execute Query
            ResultSet rs = stm.executeQuery();
            // Process Result
            while (rs.next()) {
                User user = new User(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getBoolean(4), rs.getString(5), rs.getString(6), rs.getDate(7), rs.getDate(8), rs.getString(9));
                list.add(user);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }

    public void register(String email, String name, String gender, String phone, String pass, String dob, String address) {
        try {
            // Create SQL String
            String sql = "INSERT INTO Users(email, full_name, gender, phone, [password], dob, create_date, [address]) VALUES (?,?,?,?,?,?,GETDATE(),?)";
            // Create Statement

            System.out.println(sql);
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, email);
            stm.setString(2, name);
            stm.setString(3, gender);
            stm.setString(4, phone);
            stm.setString(5, pass);
            stm.setString(6, dob);
            stm.setString(7, address);
            // Execute Update
            stm.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void editProfile(String email, String name, String gender, String phone, String dob, String address, String id) {
        try {
            // Create SQL String
            String sql = "UPDATE Users SET [email] = ?, [full_name] = ?, [gender] = ?, [phone] = ?, [dob] = ?, [address] = ? WHERE [id] = ?";
            // Create Statement
            System.out.println(sql);

            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, email);
            stm.setString(2, name);
            stm.setString(3, gender);
            stm.setString(4, phone);
            stm.setString(5, dob);
            stm.setString(6, address);
            stm.setString(7, id);
            // Execute Update
            stm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

}

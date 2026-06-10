package com.campusmarket.ecommerce;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;

@Controller
public class LoginController {

    @PostMapping("/login")
    public String login(
            @RequestParam("email") String email,
            @RequestParam("password") String password,
            HttpSession session) {

        System.out.println("Login Controller called");
        System.out.println("Email: " + email);
        System.out.println("Password: " + password);

        try {
            Connection con = DbConnection.getConnection();

            String query = "SELECT * FROM login WHERE email = ? AND password = ?";

            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

                System.out.println("Login success");

                session.setAttribute("userId", rs.getInt("id"));
                session.setAttribute("userName", rs.getString("name"));
                session.setAttribute("userEmail", rs.getString("email"));

                return "redirect:/home";
            } else {

                System.out.println("Login failed");

                return "redirect:/login?error=true";
            }

        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/login?error=true";
        }
    }
}
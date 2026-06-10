package com.campusmarket.ecommerce;

import java.sql.Connection;
import java.sql.PreparedStatement;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SignupController {

    @PostMapping("/registration")
    public String register(
            @RequestParam("name") String name,
            @RequestParam("email") String email,
            @RequestParam("password") String password,
            @RequestParam("confirmPassword") String confirmPassword,
            Model model) {

        if (!password.equals(confirmPassword)) {

            model.addAttribute("error", "Passwords do not match");

            return "registration";
        }

        try {

            Connection con = DbConnection.getConnection();

            if (con == null) {

                model.addAttribute("error", "Database connection failed");

                return "registration";
            }

            String query =
                    "INSERT INTO login(name, email, password) VALUES (?, ?, ?)";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);

            int rows = ps.executeUpdate();

            if (rows > 0) {

                model.addAttribute("email", email);
                model.addAttribute("password", password);
                model.addAttribute("success",
                        "Registration successful. Please login.");

                return "login";
            } else {

                model.addAttribute("error", "Signup failed");

                return "registration";
            }

        } catch (Exception e) {

            e.printStackTrace();

            model.addAttribute("error", "Something went wrong");

            return "registration";
        }
    }
}
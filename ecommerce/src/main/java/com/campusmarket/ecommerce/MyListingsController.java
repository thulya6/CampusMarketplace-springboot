package com.campusmarket.ecommerce;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.HttpSession;

@Controller
public class MyListingsController {

    @GetMapping("/myListings")
    public String myListings(HttpSession session, Model model) {

        ArrayList<String[]> products = new ArrayList<>();

        if (session == null || session.getAttribute("userId") == null) {
            return "redirect:/login";
        }

        int userId = (int) session.getAttribute("userId");

        try {
            Connection con = DbConnection.getConnection();

            if (con == null) {
                model.addAttribute("error", "Database connection failed");
                return "home";
            }

            String query = "SELECT * FROM products WHERE seller_id = ?";

            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, userId);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                String[] product = new String[9];

                product[0] = String.valueOf(rs.getInt("product_id"));
                product[1] = rs.getString("title");
                product[2] = String.valueOf(rs.getDouble("price"));
                product[3] = rs.getString("category");
                product[4] = rs.getString("product_condition");
                product[5] = rs.getString("location");
                product[6] = rs.getString("image_name");
                product[7] = rs.getString("description");
                product[8] = rs.getString("status");

                products.add(product);
            }

            System.out.println(products);

            model.addAttribute("products", products);

            return "myListings";

        } catch (Exception e) {

            e.printStackTrace();

            model.addAttribute("error", "Unable to load products");

            return "home";
        }
    }
}
package com.campusmarket.ecommerce;

import java.sql.Connection;
import java.sql.PreparedStatement;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import jakarta.servlet.http.HttpSession;

@Controller
public class AddProductController {

    @PostMapping("/addProduct")
    public String addProduct(
            @RequestParam("title") String title,
            @RequestParam("price") double price,
            @RequestParam("category") String category,
            @RequestParam("condition") String condition,
            @RequestParam("location") String location,
            @RequestParam("image") String image,
            @RequestParam("description") String description,
            HttpSession session,
            Model model) {

        if (session.getAttribute("userId") == null) {
            return "redirect:/login";
        }

        int sellerId = (int) session.getAttribute("userId");

        try {

            Connection con = DbConnection.getConnection();

            if (con == null) {
                model.addAttribute("error", "Database connection failed");
                return "addProduct";
            }

            String query =
                    "INSERT INTO products(seller_id, title, price, category, product_condition, location, image_name, description) VALUES (?,?,?,?,?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(query);

            ps.setInt(1, sellerId);
            ps.setString(2, title);
            ps.setDouble(3, price);
            ps.setString(4, category);
            ps.setString(5, condition);
            ps.setString(6, location);
            ps.setString(7, image);
            ps.setString(8, description);

            int rows = ps.executeUpdate();

            if (rows > 0) {
                model.addAttribute("success", "Add another product");
            }

            return "addProduct";

        } catch (Exception e) {

            e.printStackTrace();

            model.addAttribute("error", "Something went wrong");

            return "addProduct";
        }
    }
}
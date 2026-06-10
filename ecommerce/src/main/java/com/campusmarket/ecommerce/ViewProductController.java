package com.campusmarket.ecommerce;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ViewProductController {

    @GetMapping("/home")
    public String home(Model model) {

        ArrayList<String[]> products = new ArrayList<>();

        try {

            Connection con = DbConnection.getConnection();

            if (con == null) {
                model.addAttribute("error", "Database connection failed");
                return "home";
            }

            String query =
                    "SELECT * FROM products WHERE status = 'Available' ORDER BY created_at DESC";

            PreparedStatement ps = con.prepareStatement(query);

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

            model.addAttribute("products", products);

            return "home";

        } catch (Exception e) {

            e.printStackTrace();

            model.addAttribute("error", "Unable to load products");

            return "home";
        }
    }
}
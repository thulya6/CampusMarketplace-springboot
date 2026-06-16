<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>My Listings - Campus Marketplace</title>

    <style>
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family:
          system-ui,
          -apple-system,
          "Segoe UI",
          sans-serif;
      }

      :root {
        --bg-dark: #020617;
        --border: #1f2937;
        --green: #22c55e;
        --green-dark: #16a34a;
        --text-main: #e5e7eb;
        --text-muted: #9ca3af;
        --danger: #ef4444;
      }

      body {
        min-height: 100vh;
        background: radial-gradient(circle at top left, #123524, #020617 55%);
        color: var(--text-main);
      }

      header {
        padding: 22px 7%;
        display: flex;
        justify-content: space-between;
        align-items: center;
        border-bottom: 1px solid var(--border);
        background: rgba(2, 6, 23, 0.75);
        position: sticky;
        top: 0;
        z-index: 10;
        backdrop-filter: blur(12px);
      }

      .logo {
        font-size: 1.35rem;
        font-weight: 700;
      }

      .logo span {
        color: var(--green);
      }

      nav {
        display: flex;
        gap: 18px;
        flex-wrap: wrap;
      }

      nav a {
        color: var(--text-muted);
        text-decoration: none;
        font-size: 0.9rem;
        transition: 0.2s;
      }

      nav a:hover {
        color: var(--green);
      }

      .container {
        max-width: 1100px;
        margin: 0 auto;
        padding: 40px 20px;
      }

      .page-title {
        margin-bottom: 25px;
      }

      .page-title h1 {
        font-size: 2rem;
        margin-bottom: 6px;
      }

      .page-title h1 span {
        color: var(--green);
        text-shadow: 0 0 20px rgba(34, 197, 94, 0.35);
      }

      .page-title p {
        color: var(--text-muted);
        font-size: 0.95rem;
      }

      .products {
        display: grid;
        grid-template-columns: repeat(3, 1fr);
        gap: 22px;
      }

      .product-card {
        background: radial-gradient(circle at top left, #111827, #020617 78%);
        border: 1px solid var(--border);
        border-radius: 18px;
        overflow: hidden;
        transition: 0.2s;
        display: flex;
        flex-direction: column;
      }

      .product-card:hover {
        transform: translateY(-4px);
        border-color: rgba(34, 197, 94, 0.55);
        box-shadow: 0 18px 45px rgba(34, 197, 94, 0.15);
      }

      .product-img {
        height: 150px;
        background: linear-gradient(135deg, #064e3b, #020617);
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 2.2rem;
      }

      .product-info {
        padding: 16px;
        flex: 1;
      }

      .product-info h3 {
        font-size: 1rem;
        margin-bottom: 6px;
      }

      .price {
        color: var(--green);
        font-weight: 700;
        margin-bottom: 5px;
      }

      .status {
        font-size: 0.8rem;
        margin-bottom: 12px;
      }

      .status.available {
        color: #86efac;
      }

      .status.sold {
        color: var(--danger);
      }

      .actions {
        display: flex;
        gap: 8px;
        flex-wrap: wrap;
      }

      .btn {
        flex: 1;
        text-align: center;
        padding: 8px;
        border-radius: 999px;
        text-decoration: none;
        font-size: 0.75rem;
        font-weight: 600;
        cursor: pointer;
        transition: 0.2s;
        border: none;
      }

      .btn-edit {
        background: rgba(34, 197, 94, 0.12);
        color: var(--green);
        border: 1px solid rgba(34, 197, 94, 0.4);
      }

      .btn-edit:hover {
        background: rgba(34, 197, 94, 0.2);
      }

      .btn-delete {
        background: rgba(239, 68, 68, 0.12);
        color: #fca5a5;
        border: 1px solid rgba(239, 68, 68, 0.4);
      }

      .btn-delete:hover {
        background: rgba(239, 68, 68, 0.2);
      }

      .btn-sold {
        background: linear-gradient(135deg, var(--green), var(--green-dark));
        color: white;
        box-shadow: 0 8px 20px rgba(34, 197, 94, 0.3);
      }

      .btn-sold:hover {
        transform: translateY(-1px);
        box-shadow: 0 12px 28px rgba(34, 197, 94, 0.4);
      }

      @media (max-width: 900px) {
        .products {
          grid-template-columns: repeat(2, 1fr);
        }
      }

      @media (max-width: 600px) {
        header {
          flex-direction: column;
          gap: 15px;
        }

        .products {
          grid-template-columns: 1fr;
        }
      }
    </style>
  </head>

  <body>
  <%@ page import="java.util.ArrayList" %>
    <header>
      <div class="logo">Campus<span>Market</span></div>

      <nav>
        <a href="/home">Home</a>
        <a href="/addProduct">Add Product</a>
        <a href="myChats.jsp">My Chats</a>
        <a href="/myListings">My Listings</a>
        <a href="wishlist.jsp">Wishlist</a>
        <a href="profile.jsp">Profile</a>
      </nav>
    </header>

    <main class="container">
      <section class="page-title">
        <h1>My <span>Listings</span></h1>
        <p>Manage your uploaded products and track their status.</p>
      </section>
      
      <section class = "products">
      <% 
      		ArrayList<String[]> products = (ArrayList<String[]>) request.getAttribute("products");
      		if(products == null || products.size() == 0 ){
      			%>
      			<p> You have not uploaded any products </p>
      		<% }
      		else{
      			for(String[] product : products){
      				%>
      				<div class="product-card">
          <div class="product-img">ð</div>
          <div class="product-info">
          <h3><%= product[1] %></h3>
            <p class="price">₹<%= product[2] %></p>
            <p class="status available"><%= product[8] %></p>
            <div class="actions">
              <a href="editProduct.html" class="btn btn-edit">Edit</a>
              <button class="btn btn-delete">Delete</button>
              <button class="btn btn-sold">Mark Sold</button>
            </div>
            </div>
          </div>
      			<% }
      		}
      %>
      </section>
    </main>
  </body>
</html>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Home - Campus Marketplace</title>

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
        --card-dark: #0f172a;
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
        width: 100%;
        max-width: 1180px;
        margin: 0 auto;
        padding: 35px 20px;
      }

      .top-section {
        margin-bottom: 28px;
      }

      .top-section h1 {
        font-size: 2rem;
        margin-bottom: 8px;
      }

      .top-section h1 span {
        color: var(--green);
        text-shadow: 0 0 20px rgba(34, 197, 94, 0.35);
      }

      .top-section p {
        color: var(--text-muted);
        font-size: 0.95rem;
      }

      .filters {
        margin-bottom: 30px;
        padding: 20px;
        border-radius: 18px;
        background: radial-gradient(circle at top left, #111827, #020617 75%);
        border: 1px solid var(--border);
        box-shadow: 0 16px 40px rgba(34, 197, 94, 0.1);
        display: grid;
        grid-template-columns: 2fr 1fr 1fr 1fr;
        gap: 14px;
      }

      input,
      select {
        width: 100%;
        padding: 11px 13px;
        border-radius: 10px;
        border: 1px solid var(--border);
        background: rgba(15, 23, 42, 0.9);
        color: var(--text-main);
        outline: none;
        transition: 0.2s;
      }

      input:focus,
      select:focus {
        border-color: var(--green);
        box-shadow: 0 0 0 1px rgba(34, 197, 94, 0.25);
        transform: translateY(-1px);
      }

      .products {
        display: grid;
        grid-template-columns: repeat(4, 1fr);
        gap: 22px;
      }

      .product-card {
        background: radial-gradient(circle at top left, #111827, #020617 78%);
        border: 1px solid var(--border);
        border-radius: 18px;
        overflow: hidden;
        transition: 0.2s;
      }

      .product-card:hover {
        transform: translateY(-5px);
        border-color: rgba(34, 197, 94, 0.55);
        box-shadow: 0 18px 45px rgba(34, 197, 94, 0.16);
      }

      .product-img {
        height: 160px;
        background: linear-gradient(135deg, #064e3b, #020617);
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 2.4rem;
      }

      .product-info {
        padding: 16px;
      }

      .category {
        display: inline-block;
        font-size: 0.75rem;
        color: #86efac;
        background: rgba(34, 197, 94, 0.12);
        border: 1px solid rgba(34, 197, 94, 0.25);
        padding: 4px 9px;
        border-radius: 999px;
        margin-bottom: 10px;
      }

      .product-info h3 {
        font-size: 1rem;
        margin-bottom: 7px;
      }

      .price {
        color: var(--green);
        font-weight: 700;
        margin-bottom: 6px;
      }

      .location,
      .condition {
        color: var(--text-muted);
        font-size: 0.85rem;
        margin-bottom: 5px;
      }

      .actions {
        display: flex;
        gap: 10px;
        margin-top: 14px;
      }

      .btn {
        flex: 1;
        text-align: center;
        padding: 9px 10px;
        border-radius: 999px;
        text-decoration: none;
        font-size: 0.82rem;
        font-weight: 600;
        transition: 0.2s;
      }

      .btn-primary {
        background: linear-gradient(135deg, var(--green), var(--green-dark));
        color: white;
        box-shadow: 0 10px 25px rgba(34, 197, 94, 0.28);
      }

      .btn-primary:hover {
        transform: translateY(-2px);
        box-shadow: 0 14px 32px rgba(34, 197, 94, 0.42);
      }

      .btn-outline {
        color: var(--green);
        border: 1px solid rgba(34, 197, 94, 0.5);
      }

      .btn-outline:hover {
        background: rgba(34, 197, 94, 0.12);
      }

      @media (max-width: 1000px) {
        .products {
          grid-template-columns: repeat(3, 1fr);
        }

        .filters {
          grid-template-columns: 1fr 1fr;
        }
      }

      @media (max-width: 700px) {
        header {
          flex-direction: column;
          gap: 15px;
        }

        .products {
          grid-template-columns: 1fr;
        }

        .filters {
          grid-template-columns: 1fr;
        }

        .top-section h1 {
          font-size: 1.6rem;
        }
      }
    </style>
  </head>

  <body>
  <%@ page import="java.util.ArrayList" %>
    <header>
      <div class="logo">Campus<span>Market</span></div>

      <nav>
        <a href="home">Home</a>
        <a href="/addProduct">Add Product</a>
        <a href="myChats.jsp">My Chats</a>
        <a href="/myListings">My Listings</a>
        <a href="wishlist.jsp">Wishlist</a>
        <a href="profile.jsp">Profile</a>
      </nav>
    </header>

    <main class="container">
      <section class="top-section">
        <h1>Find your next <span>campus deal</span></h1>
        <p>
          Search products, filter by category or location, and chat directly
          with sellers.
        </p>
      </section>

      <section class="filters">
        <input type="text" placeholder="Search products..." />

        <select>
          <option value="">All Categories</option>
          <option>Books</option>
          <option>Electronics</option>
          <option>Tools</option>
          <option>Stationery</option>
          <option>Sports</option>
          <option>Others</option>
        </select>

        <select>
          <option value="">All Locations</option>
          <option>Hyderabad</option>
          <option>Visakhapatnam</option>
          <option>Mumbai</option>
          <option>Bangalore</option>
          <option>Chennai</option>
        </select>

        <select>
          <option value="">Price Range</option>
          <option>Below â¹500</option>
          <option>â¹500 - â¹1000</option>
          <option>â¹1000 - â¹5000</option>
          <option>Above â¹5000</option>
        </select>
      </section>

      <section class="products">

<%
    ArrayList<String[]> products = (ArrayList<String[]>) request.getAttribute("products");

    if (products == null || products.size() == 0) {
    	System.out.println(products);
%>
        <p>No products available</p>
<%
    } else {
        for (String[] product : products) {
%>

    <div class="product-card">
        <div class="product-img">📦</div>

        <div class="product-info">
            <span class="category"><%= product[3] %></span>
            <h3><%= product[1] %></h3>
            <p class="price">₹<%= product[2] %></p>
            <p class="location">Location: <%= product[5] %></p>
            <p class="condition">Condition: <%= product[4] %></p>

            <div class="actions">
                <a href="/home?id=<%= product[0] %>" class="btn btn-primary">View</a>
                <a href="wishlist.jsp" class="btn btn-outline">Save</a>
            </div>
        </div>
    </div>

<%
        }
    }
%>

</section>
    </main>
  </body>
</html>

<!-- 
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Home - Campus Marketplace</title>

  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: system-ui, -apple-system, "Segoe UI", sans-serif;
    }

    :root {
      --bg-dark: #020617;
      --border: #1f2937;
      --green: #22c55e;
      --green-dark: #16a34a;
      --text-main: #e5e7eb;
      --text-muted: #9ca3af;
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
      max-width: 1180px;
      margin: 0 auto;
      padding: 35px 20px;
    }

    .top-section {
      margin-bottom: 28px;
    }

    .top-section h1 {
      font-size: 2rem;
      margin-bottom: 8px;
    }

    .top-section h1 span {
      color: var(--green);
      text-shadow: 0 0 20px rgba(34, 197, 94, 0.35);
    }

    .top-section p {
      color: var(--text-muted);
      font-size: 0.95rem;
    }

    .filters {
      margin-bottom: 30px;
      padding: 20px;
      border-radius: 18px;
      background: radial-gradient(circle at top left, #111827, #020617 75%);
      border: 1px solid var(--border);
      box-shadow: 0 16px 40px rgba(34, 197, 94, 0.1);
      display: grid;
      grid-template-columns: 2fr 1fr 1fr 1fr;
      gap: 14px;
    }

    input,
    select {
      width: 100%;
      padding: 11px 13px;
      border-radius: 10px;
      border: 1px solid var(--border);
      background: rgba(15, 23, 42, 0.9);
      color: var(--text-main);
      outline: none;
      transition: 0.2s;
    }

    input:focus,
    select:focus {
      border-color: var(--green);
      box-shadow: 0 0 0 1px rgba(34, 197, 94, 0.25);
      transform: translateY(-1px);
    }

    .products {
      min-height: 260px;
      border: 1px dashed rgba(34, 197, 94, 0.35);
      border-radius: 18px;
      background: rgba(15, 23, 42, 0.45);
      display: flex;
      align-items: center;
      justify-content: center;
      padding: 30px;
      text-align: center;
    }

    .empty-state h2 {
      font-size: 1.4rem;
      margin-bottom: 10px;
      color: var(--text-main);
    }

    .empty-state p {
      color: var(--text-muted);
      max-width: 480px;
      line-height: 1.6;
      margin-bottom: 20px;
    }

    .btn {
      display: inline-block;
      padding: 11px 24px;
      border-radius: 999px;
      text-decoration: none;
      font-weight: 600;
      background: linear-gradient(135deg, var(--green), var(--green-dark));
      color: white;
      box-shadow: 0 12px 30px rgba(34, 197, 94, 0.35);
      transition: 0.2s;
    }

    .btn:hover {
      transform: translateY(-2px);
      box-shadow: 0 16px 40px rgba(34, 197, 94, 0.5);
    }

    @media (max-width: 900px) {
      .filters {
        grid-template-columns: 1fr 1fr;
      }
    }

    @media (max-width: 700px) {
      header {
        flex-direction: column;
        gap: 15px;
      }

      .filters {
        grid-template-columns: 1fr;
      }

      .top-section h1 {
        font-size: 1.6rem;
      }
    }
  </style>
</head>

<body>

  <header>
    <div class="logo">Campus<span>Market</span></div>

    <nav>
      <a href="home.html">Home</a>
      <a href="addProduct.html">Add Product</a>
      <a href="my-chats.html">My Chats</a>
      <a href="my-listings.html">My Listings</a>
      <a href="wishlist.html">Wishlist</a>
      <a href="profile.html">Profile</a>
    </nav>
  </header>

  <main class="container">

    <section class="top-section">
      <h1>Find your next <span>campus deal</span></h1>
      <p>Search products, filter by category or location, and chat directly with sellers.</p>
    </section>

    <section class="filters">
      <input type="text" placeholder="Search products..." />

      <select>
        <option value="">All Categories</option>
        <option>Books</option>
        <option>Electronics</option>
        <option>Tools</option>
        <option>Stationery</option>
        <option>Sports</option>
        <option>Others</option>
      </select>

      <select>
        <option value="">All Locations</option>
        <option>Hyderabad</option>
        <option>Visakhapatnam</option>
        <option>Mumbai</option>
        <option>Bangalore</option>
        <option>Chennai</option>
      </select>

      <select>
        <option value="">Price Range</option>
        <option>Below â¹500</option>
        <option>â¹500 - â¹1000</option>
        <option>â¹1000 - â¹5000</option>
        <option>Above â¹5000</option>
      </select>
    </section>

    <section class="products" id="productContainer">
      <div class="empty-state">
        <h2>No products listed yet</h2>
        <p>
          Products will appear here after sellers upload them.
          Start by adding your first product to the marketplace.
        </p>
        <a href="addProduct.html" class="btn">Add Product</a>
      </div>
    </section>

  </main>

</body>
</html> -->
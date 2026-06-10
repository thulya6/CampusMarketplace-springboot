<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Wishlist - Campus Marketplace</title>

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
        font-size: 0.8rem;
        font-weight: 600;
        transition: 0.2s;
        border: none;
        cursor: pointer;
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

      .btn-remove {
        background: rgba(239, 68, 68, 0.12);
        color: #fca5a5;
        border: 1px solid rgba(239, 68, 68, 0.45);
      }

      .btn-remove:hover {
        background: rgba(239, 68, 68, 0.2);
        transform: translateY(-2px);
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
    <header>
      <div class="logo">Campus<span>Market</span></div>

      <nav>
        <a href="home.html">Home</a>
        <a href="add-product.html">Add Product</a>
        <a href="my-chats.html">My Chats</a>
        <a href="my-listings.html">My Listings</a>
        <a href="wishlist.html">Wishlist</a>
        <a href="profile.html">Profile</a>
      </nav>
    </header>

    <main class="container">
      <section class="page-title">
        <h1>My <span>Wishlist</span></h1>
        <p>Products you saved to check or buy later.</p>
      </section>

      <section class="products">
        <!-- TEMPORARY STATIC DATA - later this will come from database -->

        <div class="product-card">
          <div class="product-img">🎧</div>
          <div class="product-info">
            <span class="category">Electronics</span>
            <h3>Wireless Headphones</h3>
            <p class="price">₹1200</p>
            <p class="location">Location: Visakhapatnam</p>
            <p class="condition">Condition: Like New</p>

            <div class="actions">
              <a href="product-details.html" class="btn btn-primary">View</a>
              <button class="btn btn-remove">Remove</button>
            </div>
          </div>
        </div>

        <div class="product-card">
          <div class="product-img">🧮</div>
          <div class="product-info">
            <span class="category">Stationery</span>
            <h3>Scientific Calculator</h3>
            <p class="price">₹650</p>
            <p class="location">Location: Bangalore</p>
            <p class="condition">Condition: Good</p>

            <div class="actions">
              <a href="product-details.html" class="btn btn-primary">View</a>
              <button class="btn btn-remove">Remove</button>
            </div>
          </div>
        </div>
      </section>
    </main>
  </body>
</html>
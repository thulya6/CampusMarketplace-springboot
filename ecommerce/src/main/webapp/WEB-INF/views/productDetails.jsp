<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Product Details - Campus Marketplace</title>

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
        padding: 45px 20px;
      }

      .details-card {
        display: grid;
        grid-template-columns: 1fr 1.1fr;
        gap: 35px;
        padding: 28px;
        border-radius: 22px;
        background: radial-gradient(circle at top left, #111827, #020617 78%);
        border: 1px solid var(--border);
        box-shadow: 0 20px 60px rgba(34, 197, 94, 0.13);
      }

      .product-image {
        min-height: 420px;
        border-radius: 18px;
        background: linear-gradient(135deg, #064e3b, #020617);
        border: 1px solid var(--border);
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 6rem;
      }

      .details-content {
        display: flex;
        flex-direction: column;
        justify-content: center;
      }

      .category {
        display: inline-block;
        width: fit-content;
        font-size: 0.78rem;
        color: #86efac;
        background: rgba(34, 197, 94, 0.12);
        border: 1px solid rgba(34, 197, 94, 0.3);
        padding: 5px 11px;
        border-radius: 999px;
        margin-bottom: 16px;
      }

      h1 {
        font-size: 2.4rem;
        margin-bottom: 12px;
      }

      .price {
        font-size: 1.8rem;
        font-weight: 700;
        color: var(--green);
        margin-bottom: 18px;
        text-shadow: 0 0 18px rgba(34, 197, 94, 0.25);
      }

      .description {
        color: var(--text-muted);
        line-height: 1.7;
        margin-bottom: 24px;
        font-size: 0.98rem;
      }

      .info-box {
        display: grid;
        grid-template-columns: 1fr 1fr;
        gap: 14px;
        margin-bottom: 28px;
      }

      .info-item {
        padding: 14px;
        border-radius: 14px;
        background: rgba(15, 23, 42, 0.75);
        border: 1px solid var(--border);
      }

      .info-item span {
        display: block;
        color: var(--text-muted);
        font-size: 0.78rem;
        margin-bottom: 5px;
      }

      .info-item strong {
        font-size: 0.95rem;
        color: var(--text-main);
      }

      .seller-card {
        padding: 16px;
        border-radius: 16px;
        background: rgba(15, 23, 42, 0.75);
        border: 1px solid var(--border);
        margin-bottom: 24px;
      }

      .seller-card span {
        display: block;
        color: var(--text-muted);
        font-size: 0.8rem;
        margin-bottom: 5px;
      }

      .seller-card strong {
        color: #bbf7d0;
      }

      .actions {
        display: flex;
        gap: 14px;
        flex-wrap: wrap;
      }

      .btn {
        display: inline-flex;
        justify-content: center;
        align-items: center;
        padding: 12px 26px;
        border-radius: 999px;
        text-decoration: none;
        font-weight: 600;
        transition: 0.2s;
        border: none;
        cursor: pointer;
      }

      .btn-primary {
        background: linear-gradient(135deg, var(--green), var(--green-dark));
        color: white;
        box-shadow: 0 12px 30px rgba(34, 197, 94, 0.35);
      }

      .btn-primary:hover {
        transform: translateY(-2px);
        box-shadow: 0 16px 40px rgba(34, 197, 94, 0.5);
      }

      .btn-outline {
        color: var(--green);
        border: 1px solid rgba(34, 197, 94, 0.55);
        background: transparent;
      }

      .btn-outline:hover {
        background: rgba(34, 197, 94, 0.12);
        transform: translateY(-2px);
      }

      @media (max-width: 850px) {
        .details-card {
          grid-template-columns: 1fr;
        }

        .product-image {
          min-height: 300px;
        }

        h1 {
          font-size: 1.8rem;
        }

        .info-box {
          grid-template-columns: 1fr;
        }

        header {
          flex-direction: column;
          gap: 15px;
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
        <a href="myChats.html">My Chats</a>
        <a href="myListings.html">My Listings</a>
        <a href="wishlist.html">Wishlist</a>
        <a href="profile.html">Profile</a>
      </nav>
    </header>

    <main class="container">
      <section class="details-card">
        <div class="product-image">📚</div>

        <div class="details-content">
          <span class="category">Books</span>

          <h1>Java Programming Book</h1>

          <p class="price">₹250</p>

          <p class="description">
            A well-maintained Java programming book suitable for beginners and
            intermediate learners. Useful for college subjects, interview
            basics, OOP concepts, collections, exception handling and JDBC
            fundamentals.
          </p>

          <div class="info-box">
            <div class="info-item">
              <span>Condition</span>
              <strong>Good</strong>
            </div>

            <div class="info-item">
              <span>Location</span>
              <strong>Hyderabad</strong>
            </div>

            <div class="info-item">
              <span>Category</span>
              <strong>Books</strong>
            </div>

            <div class="info-item">
              <span>Status</span>
              <strong>Available</strong>
            </div>
          </div>

          <div class="seller-card">
            <span>Seller</span>
            <strong>Rahul Sharma</strong>
          </div>

          <div class="actions">
            <a href="chat.html" class="btn btn-primary">Chat with Seller</a>
            <a href="wishlist.html" class="btn btn-outline">Save to Wishlist</a>
          </div>
        </div>
      </section>
    </main>
  </body>
</html>
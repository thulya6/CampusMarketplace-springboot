<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Add Product - Campus Marketplace</title>

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
        max-width: 850px;
        margin: 0 auto;
        padding: 45px 20px;
      }

      .page-title {
        margin-bottom: 25px;
        text-align: center;
      }

      .page-title h1 {
        font-size: 2rem;
        margin-bottom: 8px;
      }

      .page-title h1 span {
        color: var(--green);
        text-shadow: 0 0 20px rgba(34, 197, 94, 0.35);
      }

      .page-title p {
        color: var(--text-muted);
        font-size: 0.95rem;
      }

      .form-card {
        padding: 28px;
        border-radius: 22px;
        background: radial-gradient(circle at top left, #111827, #020617 78%);
        border: 1px solid var(--border);
        box-shadow: 0 20px 60px rgba(34, 197, 94, 0.13);
      }

      .form-grid {
        display: grid;
        grid-template-columns: 1fr 1fr;
        gap: 18px;
      }

      .field {
        display: flex;
        flex-direction: column;
      }

      .field.full {
        grid-column: 1 / -1;
      }

      label {
        color: var(--text-muted);
        font-size: 0.85rem;
        margin-bottom: 6px;
      }

      input,
      select,
      textarea {
        width: 100%;
        padding: 11px 13px;
        border-radius: 10px;
        border: 1px solid var(--border);
        background: rgba(15, 23, 42, 0.9);
        color: var(--text-main);
        outline: none;
        transition: 0.2s;
        font-size: 0.95rem;
      }

      input::file-selector-button {
        margin-right: 12px;
        border: none;
        border-radius: 999px;
        padding: 8px 14px;
        background: linear-gradient(135deg, var(--green), var(--green-dark));
        color: white;
        cursor: pointer;
      }

      textarea {
        min-height: 130px;
        resize: vertical;
      }

      input:focus,
      select:focus,
      textarea:focus {
        border-color: var(--green);
        box-shadow: 0 0 0 1px rgba(34, 197, 94, 0.25);
        transform: translateY(-1px);
      }

      .hint {
        color: var(--text-muted);
        font-size: 0.78rem;
        margin-top: 6px;
      }

      .btn-row {
        margin-top: 24px;
        display: flex;
        gap: 14px;
        flex-wrap: wrap;
      }

      .btn {
        padding: 12px 26px;
        border-radius: 999px;
        text-decoration: none;
        font-weight: 600;
        cursor: pointer;
        border: none;
        transition: 0.2s;
        font-size: 0.95rem;
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

      @media (max-width: 700px) {
        header {
          flex-direction: column;
          gap: 15px;
        }

        .form-grid {
          grid-template-columns: 1fr;
        }

        .form-card {
          padding: 22px;
        }

        .btn {
          width: 100%;
        }
      }
    </style>
  </head>

  <body>
    <header>
      <div class="logo">Campus<span>Market</span></div>

      <nav>
        <a href="home.jsp">Home</a>
        <a href="addProduct.jsp">Add Product</a>
        <a href="myChats.jsp">My Chats</a>
        <a href="myListings.jsp">My Listings</a>
        <a href="wishlist.jsp">Wishlist</a>
        <a href="profile.jsp">Profile</a>
      </nav>
    </header>

    <main class="container">
      <section class="page-title">
        <h1>Add a <span>Product</span></h1>
        <p>
          List your item so other students can discover it and chat with you.
        </p>
      </section>

      <section class="form-card">
        <form action="addProduct" method = "post">
          <div class="form-grid">
            <div class="field">
              <label>Product Title</label>
              <input
                type="text"
                name = "title"
                placeholder="Ex: Java Programming Book"
                required
              />
            </div>

            <div class="field">
              <label>Price</label>
              <input type="number" name = "price" placeholder="Ex: 250" required />
            </div>

            <div class="field">
              <label>Category</label>
              <select name = "category" required>
                <option value="">Select category</option>
                <option>Books</option>
                <option>Electronics</option>
                <option>Tools</option>
                <option>Stationery</option>
                <option>Sports</option>
                <option>Others</option>
              </select>
            </div>

            <div class="field">
              <label>Condition</label>
              <select name = "condition" required>
                <option value="">Select condition</option>
                <option>New</option>
                <option>Like New</option>
                <option>Good</option>
                <option>Used</option>
              </select>
            </div>

            <div class="field">
              <label>Location</label>
              <select name = "location" required>
                <option value="">Select location</option>
                <option>Hyderabad</option>
                <option>Visakhapatnam</option>
                <option>Mumbai</option>
                <option>Bangalore</option>
                <option>Chennai</option>
              </select>
            </div>

            <div class="field">
              <label>Product Image</label>
              <input type="file" name = "image" accept="image/*" required />
              <p class="hint">Upload a clear image of your product.</p>
            </div>

            <div class="field full">
              <label>Description</label>
              <textarea name = "description"
                placeholder="Describe the product condition, usage, reason for selling, etc."
                required
              ></textarea>
            </div>
          </div>

          <div class="btn-row">
            <button type="submit" class="btn btn-primary">Add Product</button>
            <a href="home.jsp" class="btn btn-outline">Cancel</a>
          </div>
        </form>
      </section>
    </main>
  </body>
</html>

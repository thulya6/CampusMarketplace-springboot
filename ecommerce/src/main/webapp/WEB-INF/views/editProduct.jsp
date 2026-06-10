<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Edit Product - Campus Marketplace</title>

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
        max-width: 850px;
        margin: 0 auto;
        padding: 45px 20px;
      }

      .page-title {
        text-align: center;
        margin-bottom: 25px;
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

      input::file-selector-button {
        margin-right: 12px;
        border: none;
        border-radius: 999px;
        padding: 8px 14px;
        background: linear-gradient(135deg, var(--green), var(--green-dark));
        color: white;
        cursor: pointer;
      }

      .current-image {
        margin-top: 8px;
        padding: 12px;
        border-radius: 12px;
        background: rgba(15, 23, 42, 0.7);
        border: 1px solid var(--border);
        color: var(--text-muted);
        font-size: 0.85rem;
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
        <h1>Edit <span>Product</span></h1>
        <p>Update your product details, price, condition, or availability.</p>
      </section>

      <section class="form-card">
        <form>
          <div class="form-grid">
            <div class="field">
              <label>Product Title</label>
              <input type="text" value="Java Programming Book" required />
            </div>

            <div class="field">
              <label>Price</label>
              <input type="number" value="250" required />
            </div>

            <div class="field">
              <label>Category</label>
              <select required>
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
              <select required>
                <option>Good</option>
                <option>New</option>
                <option>Like New</option>
                <option>Used</option>
              </select>
            </div>

            <div class="field">
              <label>Location</label>
              <select required>
                <option>Hyderabad</option>
                <option>Visakhapatnam</option>
                <option>Mumbai</option>
                <option>Bangalore</option>
                <option>Chennai</option>
              </select>
            </div>

            <div class="field">
              <label>Status</label>
              <select required>
                <option>Available</option>
                <option>Sold</option>
              </select>
            </div>

            <div class="field full">
              <label>Change Product Image</label>
              <input type="file" accept="image/*" />
              <div class="current-image">Current image: java-book.jpg</div>
            </div>

            <div class="field full">
              <label>Description</label>
              <textarea required>
A well-maintained Java programming book suitable for beginners and intermediate learners.</textarea
              >
            </div>
          </div>

          <div class="btn-row">
            <button type="submit" class="btn btn-primary">
              Update Product
            </button>
            <a href="my-listings.html" class="btn btn-outline">Cancel</a>
          </div>
        </form>
      </section>
    </main>
  </body>
</html>
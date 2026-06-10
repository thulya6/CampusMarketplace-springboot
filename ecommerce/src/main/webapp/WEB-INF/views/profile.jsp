<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Profile - Campus Marketplace</title>

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
        max-width: 600px;
        margin: 0 auto;
        padding: 50px 20px;
      }

      .profile-card {
        padding: 30px;
        border-radius: 22px;
        background: radial-gradient(circle at top left, #111827, #020617 78%);
        border: 1px solid var(--border);
        box-shadow: 0 20px 60px rgba(34, 197, 94, 0.12);
        text-align: center;
      }

      .avatar {
        width: 90px;
        height: 90px;
        border-radius: 50%;
        background: linear-gradient(135deg, #064e3b, #020617);
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 2.5rem;
        margin: 0 auto 18px;
        border: 1px solid var(--border);
      }

      h2 {
        font-size: 1.5rem;
        margin-bottom: 6px;
      }

      .email {
        color: var(--text-muted);
        font-size: 0.9rem;
        margin-bottom: 20px;
      }

      .info {
        text-align: left;
        margin-bottom: 25px;
      }

      .info-item {
        padding: 14px;
        border-radius: 14px;
        background: rgba(15, 23, 42, 0.75);
        border: 1px solid var(--border);
        margin-bottom: 12px;
      }

      .info-item span {
        display: block;
        color: var(--text-muted);
        font-size: 0.78rem;
        margin-bottom: 4px;
      }

      .info-item strong {
        font-size: 0.95rem;
      }

      .actions {
        display: flex;
        gap: 12px;
        flex-wrap: wrap;
        justify-content: center;
      }

      .btn {
        padding: 11px 22px;
        border-radius: 999px;
        text-decoration: none;
        font-weight: 600;
        font-size: 0.9rem;
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

      .btn-danger {
        background: rgba(239, 68, 68, 0.12);
        color: #fca5a5;
        border: 1px solid rgba(239, 68, 68, 0.5);
      }

      .btn-danger:hover {
        background: rgba(239, 68, 68, 0.2);
      }

      @media (max-width: 600px) {
        header {
          flex-direction: column;
          gap: 15px;
        }

        .actions {
          flex-direction: column;
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
      <div class="profile-card">
        <div class="avatar">👤</div>

        <h2>Thulya Sri</h2>
        <p class="email">thulya@email.com</p>

        <div class="info">
          <div class="info-item">
            <span>Location</span>
            <strong>Visakhapatnam</strong>
          </div>

          <div class="info-item">
            <span>Joined</span>
            <strong>March 2026</strong>
          </div>
        </div>

        <div class="actions">
          <a href="#" class="btn btn-primary">Edit Profile</a>
          <button class="btn btn-danger">Logout</button>
        </div>
      </div>
    </main>
  </body>
</html>
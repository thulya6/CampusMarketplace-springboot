<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>My Chats - Campus Marketplace</title>

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
        max-width: 900px;
        margin: 0 auto;
        padding: 40px 20px;
      }

      .page-title {
        margin-bottom: 24px;
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

      .chat-list {
        display: flex;
        flex-direction: column;
        gap: 16px;
      }

      .chat-card {
        display: flex;
        align-items: center;
        gap: 16px;
        padding: 18px;
        border-radius: 18px;
        background: radial-gradient(circle at top left, #111827, #020617 78%);
        border: 1px solid var(--border);
        text-decoration: none;
        color: var(--text-main);
        transition: 0.2s;
      }

      .chat-card:hover {
        transform: translateY(-3px);
        border-color: rgba(34, 197, 94, 0.55);
        box-shadow: 0 18px 45px rgba(34, 197, 94, 0.14);
      }

      .product-icon {
        width: 58px;
        height: 58px;
        border-radius: 16px;
        background: linear-gradient(135deg, #064e3b, #020617);
        border: 1px solid var(--border);
        display: flex;
        align-items: center;
        justify-content: center;
        font-size: 1.8rem;
        flex-shrink: 0;
      }

      .chat-info {
        flex: 1;
      }

      .chat-top {
        display: flex;
        justify-content: space-between;
        gap: 12px;
        margin-bottom: 6px;
      }

      .chat-top h3 {
        font-size: 1rem;
      }

      .time {
        color: var(--text-muted);
        font-size: 0.78rem;
        white-space: nowrap;
      }

      .user-line {
        color: #bbf7d0;
        font-size: 0.85rem;
        margin-bottom: 4px;
      }

      .last-message {
        color: var(--text-muted);
        font-size: 0.88rem;
        white-space: nowrap;
        overflow: hidden;
        text-overflow: ellipsis;
        max-width: 620px;
      }

      .badge {
        padding: 4px 9px;
        border-radius: 999px;
        font-size: 0.72rem;
        background: rgba(34, 197, 94, 0.12);
        color: #86efac;
        border: 1px solid rgba(34, 197, 94, 0.3);
        margin-left: 8px;
      }

      @media (max-width: 650px) {
        header {
          flex-direction: column;
          gap: 15px;
        }

        .chat-card {
          align-items: flex-start;
        }

        .chat-top {
          flex-direction: column;
          gap: 4px;
        }

        .last-message {
          white-space: normal;
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
        <h1>My <span>Chats</span></h1>
        <p>Continue conversations with buyers and sellers for each product.</p>
      </section>

      <section class="chat-list">
        <!-- TEMPORARY STATIC DATA - later this will come from database -->

        <a href="chat.html" class="chat-card">
          <div class="product-icon">📚</div>

          <div class="chat-info">
            <div class="chat-top">
              <h3>
                Java Programming Book <span class="badge">Buyer Chat</span>
              </h3>
              <span class="time">10:45 AM</span>
            </div>

            <p class="user-line">Chat with Rahul Sharma</p>
            <p class="last-message">
              Slightly negotiable. How much are you expecting?
            </p>
          </div>
        </a>

        <a href="chat.html" class="chat-card">
          <div class="product-icon">🎧</div>

          <div class="chat-info">
            <div class="chat-top">
              <h3>
                Wireless Headphones <span class="badge">Seller Chat</span>
              </h3>
              <span class="time">Yesterday</span>
            </div>

            <p class="user-line">Chat with Anjali Verma</p>
            <p class="last-message">
              Can we meet near the college gate tomorrow?
            </p>
          </div>
        </a>

        <a href="chat.html" class="chat-card">
          <div class="product-icon">📐</div>

          <div class="chat-info">
            <div class="chat-top">
              <h3>
                Engineering Drafter <span class="badge">Seller Chat</span>
              </h3>
              <span class="time">Mon</span>
            </div>

            <p class="user-line">Chat with Kiran Reddy</p>
            <p class="last-message">Is the drafter still available?</p>
          </div>
        </a>
      </section>
    </main>
  </body>
</html>
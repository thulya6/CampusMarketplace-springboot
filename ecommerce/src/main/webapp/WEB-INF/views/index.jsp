<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Campus Marketplace</title>

    <style>
      * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family:
          system-ui,
          -apple-system,
          BlinkMacSystemFont,
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
      }

      body {
        min-height: 100vh;
        background: radial-gradient(circle at top left, #123524, #020617 55%);
        color: var(--text-main);
      }

      header {
        width: 100%;
        padding: 24px 8%;
        display: flex;
        justify-content: space-between;
        align-items: center;
      }

      .logo {
        font-size: 1.4rem;
        font-weight: 700;
        letter-spacing: 0.5px;
      }

      .logo span {
        color: var(--green);
      }

      nav a {
        color: var(--text-muted);
        text-decoration: none;
        margin-left: 24px;
        font-size: 0.95rem;
        transition: 0.2s;
      }

      nav a:hover {
        color: var(--green);
      }

      .hero {
        min-height: calc(100vh - 90px);
        display: flex;
        align-items: center;
        justify-content: center;
        padding: 40px 8%;
        text-align: center;
      }

      .hero-box {
        max-width: 850px;
        padding: 50px 35px;
        background: radial-gradient(circle at top left, #111827, #020617 75%);
        border: 1px solid var(--border);
        border-radius: 24px;
        box-shadow: 0 20px 60px rgba(34, 197, 94, 0.14);
      }

      .tag {
        display: inline-block;
        margin-bottom: 18px;
        padding: 8px 16px;
        border-radius: 999px;
        background: rgba(34, 197, 94, 0.12);
        color: #86efac;
        font-size: 0.85rem;
        border: 1px solid rgba(34, 197, 94, 0.3);
      }

      h1 {
        font-size: clamp(2.3rem, 6vw, 4.8rem);
        line-height: 1.05;
        margin-bottom: 20px;
      }

      h1 span {
        color: var(--green);
        text-shadow: 0 0 25px rgba(34, 197, 94, 0.35);
      }

      .subtitle {
        max-width: 650px;
        margin: 0 auto 34px;
        color: var(--text-muted);
        font-size: 1.05rem;
        line-height: 1.7;
      }

      .buttons {
        display: flex;
        justify-content: center;
        gap: 16px;
        flex-wrap: wrap;
      }

      .btn {
        padding: 13px 28px;
        border-radius: 999px;
        text-decoration: none;
        font-weight: 600;
        transition: 0.2s ease;
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

      .btn-secondary {
        color: var(--text-main);
        border: 1px solid var(--border);
        background: rgba(15, 23, 42, 0.7);
      }

      .btn-secondary:hover {
        border-color: var(--green);
        color: var(--green);
        transform: translateY(-2px);
      }

      .features {
        margin-top: 42px;
        display: grid;
        grid-template-columns: repeat(3, 1fr);
        gap: 16px;
      }

      .feature-card {
        padding: 18px;
        border-radius: 16px;
        background: rgba(15, 23, 42, 0.75);
        border: 1px solid var(--border);
        text-align: left;
      }

      .feature-card h3 {
        font-size: 1rem;
        margin-bottom: 8px;
        color: #bbf7d0;
      }

      .feature-card p {
        font-size: 0.88rem;
        color: var(--text-muted);
        line-height: 1.5;
      }

      @media (max-width: 768px) {
        header {
          flex-direction: column;
          gap: 16px;
        }

        nav a {
          margin: 0 10px;
        }

        .features {
          grid-template-columns: 1fr;
        }

        .hero-box {
          padding: 35px 22px;
        }
      }
    </style>
  </head>

  <body>
    <header>
      <div class="logo">Campus<span>Market</span></div>

      <nav>
        <a href="/login">Login</a>
        <a href="/registration">Sign Up</a>
      </nav>
    </header>

    <section class="hero">
      <div class="hero-box">
        <div class="tag">Buy • Sell • Chat • Meet</div>

        <h1>A smarter way to <span>buy and sell</span> among students</h1>

        <p class="subtitle">
          Campus Marketplace helps students sell books, electronics, tools,
          stationery and more. Chat with the seller, decide a meeting place, and
          complete the deal in person.
        </p>

        <div class="buttons">
          <a href="/registration" class="btn btn-primary">Get Started</a>
          <a href="/login" class="btn btn-secondary">Login</a>
        </div>

        <div class="features">
          <div class="feature-card">
            <h3>Sell Easily</h3>
            <p>
              Upload your product, add price, category, condition and location.
            </p>
          </div>

          <div class="feature-card">
            <h3>Find Faster</h3>
            <p>Search and filter products by category, price and location.</p>
          </div>

          <div class="feature-card">
            <h3>Private Chat</h3>
            <p>Each buyer gets a separate private chat with the seller.</p>
          </div>
        </div>
      </div>
    </section>
  </body>
</html>
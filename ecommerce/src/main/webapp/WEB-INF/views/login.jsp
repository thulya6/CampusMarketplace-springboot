<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Login - Campus Marketplace</title>

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
      }

      body {
        min-height: 100vh;
        background: radial-gradient(circle at top left, #123524, #020617 60%);
        display: flex;
        align-items: center;
        justify-content: center;
        color: var(--text-main);
      }

      .container {
        width: 100%;
        max-width: 420px;
        padding: 40px 28px;
        border-radius: 20px;
        background: radial-gradient(circle at top left, #111827, #020617 75%);
        border: 1px solid var(--border);
        box-shadow: 0 20px 60px rgba(34, 197, 94, 0.15);
      }

      h2 {
        text-align: center;
        margin-bottom: 25px;
        font-size: 1.8rem;
      }

      h2 span {
        color: var(--green);
        text-shadow: 0 0 20px rgba(34, 197, 94, 0.4);
      }

      .field {
        margin-bottom: 18px;
        display: flex;
        flex-direction: column;
      }

      label {
        font-size: 0.85rem;
        margin-bottom: 6px;
        color: var(--text-muted);
      }

      input {
        padding: 10px 12px;
        border-radius: 8px;
        border: 1px solid var(--border);
        background: rgba(15, 23, 42, 0.9);
        color: var(--text-main);
        outline: none;
        transition: 0.2s;
      }

      input:focus {
        border-color: var(--green);
        box-shadow: 0 0 0 1px rgba(34, 197, 94, 0.25);
        transform: translateY(-1px);
      }

      .btn {
        width: 100%;
        padding: 12px;
        border-radius: 999px;
        border: none;
        margin-top: 10px;
        font-weight: 600;
        cursor: pointer;
        background: linear-gradient(135deg, var(--green), var(--green-dark));
        color: white;
        box-shadow: 0 12px 30px rgba(34, 197, 94, 0.35);
        transition: 0.2s;
      }

      .btn:hover {
        transform: translateY(-2px);
        box-shadow: 0 16px 40px rgba(34, 197, 94, 0.5);
      }

      .bottom {
        margin-top: 20px;
        text-align: center;
        font-size: 0.9rem;
        color: var(--text-muted);
      }

      .bottom a {
        color: var(--green);
        text-decoration: none;
        margin-left: 5px;
      }

      .bottom a:hover {
        text-decoration: underline;
      }
    </style>
  </head>

  <body>
    <div class="container">
      <h2>Welcome Back to <span>CampusMarket</span></h2>

      <form action="login" method ="post">
        <div class="field">
          <label>Email</label>
          <input type="email" name = "email" placeholder="Enter your email" value = "<%= request.getAttribute("email") != null ? request.getAttribute("email") : "" %>" required />
        </div>

        <div class="field">
          <label>Password</label>
          <input type="password" name = "password" placeholder="Enter your password" value = "<%= request.getAttribute("password") != null ? request.getAttribute("password") : "" %>" required />
        </div>

        <button class="btn">Login</button>
      </form>

      <div class="bottom">
        Don'€™t have an account?
        <a href="/registration">Sign Up</a>
      </div>
    </div>
  </body>
</html>
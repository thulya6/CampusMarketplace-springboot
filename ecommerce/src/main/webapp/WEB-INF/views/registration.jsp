<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sign Up - Campus Marketplace</title>

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
        max-width: 450px;
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
        margin-bottom: 16px;
        display: flex;
        flex-direction: column;
      }

      label {
        font-size: 0.85rem;
        margin-bottom: 6px;
        color: var(--text-muted);
      }

      input,
      select {
        padding: 10px 12px;
        border-radius: 8px;
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

      .btn {
        width: 100%;
        padding: 12px;
        border-radius: 999px;
        border: none;
        margin-top: 12px;
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
        margin-top: 18px;
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
      <h2>Create your <span>Account</span></h2>

      <form action = "registration" method = "post">
        <div class="field">
          <label>Full Name</label>
          <input type="text" name = "name" placeholder="Enter your name" required />
        </div>

        <div class="field">
          <label>Email</label>
          <input type="email" name = "email" placeholder="Enter your email" required />
        </div>

        <div class="field">
          <label>Password</label>
          <input type="password" name = "password" placeholder="Create password" required />
        </div>

        <div class="field">
          <label>Confirm Password</label>
          <input type="password" name = "confirmPassword" placeholder="Confirm password" required />
        </div>

        <button type = "submit" class="btn">Sign Up</button>
      </form>

      <div class="bottom">
        Already have an account?
        <a href="/login">Login</a>
      </div>
    </div>
  </body>
</html>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Chat - Campus Marketplace</title>

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
        height: 100vh;
        background: radial-gradient(circle at top left, #123524, #020617 55%);
        color: var(--text-main);
        display: flex;
        flex-direction: column;
      }

      header {
        padding: 16px 6%;
        border-bottom: 1px solid var(--border);
        background: rgba(2, 6, 23, 0.85);
        display: flex;
        justify-content: space-between;
        align-items: center;
        backdrop-filter: blur(10px);
      }

      .chat-title {
        font-size: 1rem;
        font-weight: 600;
      }

      .chat-title span {
        color: var(--green);
      }

      .back {
        text-decoration: none;
        color: var(--text-muted);
        font-size: 0.9rem;
      }

      .back:hover {
        color: var(--green);
      }

      .chat-container {
        flex: 1;
        display: flex;
        flex-direction: column;
        max-width: 900px;
        width: 100%;
        margin: 0 auto;
      }

      .messages {
        flex: 1;
        padding: 25px 15px;
        overflow-y: auto;
        display: flex;
        flex-direction: column;
        gap: 14px;
      }

      .message {
        max-width: 65%;
        padding: 12px 14px;
        border-radius: 14px;
        font-size: 0.9rem;
        line-height: 1.5;
        position: relative;
      }

      .received {
        background: rgba(15, 23, 42, 0.85);
        border: 1px solid var(--border);
        align-self: flex-start;
      }

      .sent {
        background: linear-gradient(135deg, var(--green), var(--green-dark));
        color: white;
        align-self: flex-end;
        box-shadow: 0 10px 25px rgba(34, 197, 94, 0.35);
      }

      .input-area {
        padding: 14px;
        border-top: 1px solid var(--border);
        background: rgba(2, 6, 23, 0.9);
        display: flex;
        gap: 10px;
      }

      input {
        flex: 1;
        padding: 12px;
        border-radius: 999px;
        border: 1px solid var(--border);
        background: rgba(15, 23, 42, 0.9);
        color: var(--text-main);
        outline: none;
        transition: 0.2s;
      }

      input:focus {
        border-color: var(--green);
        box-shadow: 0 0 0 1px rgba(34, 197, 94, 0.25);
      }

      button {
        padding: 10px 18px;
        border-radius: 999px;
        border: none;
        cursor: pointer;
        background: linear-gradient(135deg, var(--green), var(--green-dark));
        color: white;
        font-weight: 600;
        transition: 0.2s;
        box-shadow: 0 10px 25px rgba(34, 197, 94, 0.35);
      }

      button:hover {
        transform: translateY(-1px);
        box-shadow: 0 14px 32px rgba(34, 197, 94, 0.45);
      }

      @media (max-width: 600px) {
        .message {
          max-width: 80%;
        }
      }
    </style>
  </head>

  <body>
    <header>
      <div class="chat-title">Chat about <span>Java Book</span></div>
      <a href="myChats.html" class="back">← Back</a>
    </header>

    <div class="chat-container">
      <div class="messages">
        <!-- RECEIVED -->
        <div class="message received">Hi, is this still available?</div>

        <!-- SENT -->
        <div class="message sent">Yes, it's available.</div>

        <div class="message received">Can you reduce the price?</div>

        <div class="message sent">
          Slightly negotiable. How much are you expecting?
        </div>
      </div>

      <div class="input-area">
        <input type="text" placeholder="Type your message..." />
        <button>Send</button>
      </div>
    </div>
  </body>
</html>
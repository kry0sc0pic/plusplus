# plusplus

I spent two years at FamPay. We had this thing — "don't say thanks, give ++".

That's it. Someone helps you out, you give them a `++`. It just became how we said thanks. After a while you stop thinking about it, your hands just type `++` before your brain can write "thank you".

I left, but that never left me. So I rebuilt the bot for my own team.

---

## What it does

- **`@user++`** / **`@user--`** — give or take karma
- **`@bot leaderboard`** — top 10
- **`@bot score @user`** — check someone's score
- **`@bot toss`** — coin flip
- **`@bot roll 3 dices`** — roll dice
- Gets snarky when you say "thanks" without giving `++`
- Says bye when you say bye
- Ignores DMs

## Setup

1. Create a Slack app at https://api.slack.com/apps with Socket Mode enabled
2. Bot token scopes: `chat:write`, `channels:read`, `groups:read`, `im:read`, `users:read`
3. Subscribe to bot events: `message.channels`, `message.groups`, `message.im`
4. Generate an app-level token with `connections:write`

```
cp .env.example .env
docker compose up --build -d
```

## .env

```
SLACK_BOT_TOKEN=xoxb-...
SLACK_APP_TOKEN=xapp-...
```

## Stack

- Node 20, @slack/bolt, Redis, Docker

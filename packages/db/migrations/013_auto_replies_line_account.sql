-- Migration 013: auto_replies.line_account_id for multi-account auto-reply (webhook.ts)
-- Run: wrangler d1 execute <DB> --remote --file=../../packages/db/migrations/013_auto_replies_line_account.sql

ALTER TABLE auto_replies ADD COLUMN line_account_id TEXT REFERENCES line_accounts(id);

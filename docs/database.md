# Cloudflare D1 database

The website Worker uses a Cloudflare D1 database through the Worker binding `DB`.

## Application table

The application table is `enquiries`. Its columns are:

- `id` — integer primary key
- `created_at` — submission timestamp
- `full_name`, `email` — submitter contact fields
- `book_title`, `genre`, `service`, `project_stage`, `timeline`, `message` — enquiry details
- `consent` — consent flag
- `status` — workflow status, defaulting to `new`
- `source_ip_hash` — hashed source-IP field

An index named `idx_enquiries_created_at` indexes `enquiries(created_at)`.

## Privacy and backup scope

Only the schema is included in this repository. No live enquiry rows or customer contact details were exported. Cloudflare's internal `_cf_KV` table and SQLite bookkeeping tables are not application migrations.

For a full disaster-recovery backup, export the D1 data separately to a secure, access-controlled location. Do not put customer enquiry data into this source repository.

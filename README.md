# BookRise Centre Website

Official source-code backup for the BookRise Centre website.

**Live hosting remains on Cloudflare Workers.** This GitHub repository is the version-controlled source backup and editing workspace; it does not move the live website to another host.

- Live site: https://bookrise-centre-live.ralphpublishing.workers.dev/
- Health endpoint: https://bookrise-centre-live.ralphpublishing.workers.dev/healthz
- Worker: `bookrise-centre-live`
- Main source: [`worker/worker.js`](worker/worker.js)

## Project contents

- `worker/worker.js` — current deployed Worker source, including the website HTML, CSS, JavaScript and embedded image data.
- `migrations/0001_initial_schema.sql` — application enquiry-table schema and index, without customer records.
- `wrangler.toml` — Worker entry point, compatibility date and D1 binding reference.
- `docs/architecture.md` — project architecture and page inventory.
- `docs/deployment.md` — safe deployment and editing notes.
- `docs/database.md` — D1 database notes and privacy boundary.

## Important security notes

- Do not commit API tokens, passwords, private keys, `.dev.vars`, or other secrets.
- Do not commit live enquiry records or customer personal information.
- The D1 database itself remains hosted by Cloudflare. This repository contains the schema only, not a full database-data backup.
- Keep this repository private unless you intentionally want the source code to be publicly visible.

## Editing with an AI coding tool

Connect this private repository through an authorised GitHub integration. Ask the coding agent to inspect the existing Worker before changing it, preserve the Cloudflare Worker + D1 architecture, and commit proposed changes to a branch for review. Do not redeploy automatically unless that is explicitly intended.

## Current backup scope

This is a source-code and database-schema backup of the current Worker. It does not include customer enquiry rows, Cloudflare account credentials, secret values, DNS settings, or an export of Cloudflare account configuration.

# Editing and deployment

## Current production arrangement

- Provider: Cloudflare Workers
- Worker name: `bookrise-centre-live`
- Main module: `worker.js` (repository path: `worker/worker.js`)
- Compatibility date recorded from the current Worker metadata: `2026-11-22`
- D1 binding: `DB`

The live Worker was not changed as part of this GitHub backup.

## Before editing

1. Read the current Worker source and project notes.
2. Preserve the existing routing, form handling, responsive layout and D1 binding unless the requested change requires otherwise.
3. Keep credentials and secrets out of Git.
4. Make edits on a separate Git branch and review the diff before merging.

## Deploying intentionally

The `wrangler.toml` file records the Worker name, entry point, compatibility date and D1 binding. A deployment should only be made after reviewing and testing the code, confirming the intended Cloudflare account, and checking that the D1 binding points to the existing production database.

Do not treat a GitHub commit as a deployment. GitHub is the source backup; Cloudflare remains the live host.

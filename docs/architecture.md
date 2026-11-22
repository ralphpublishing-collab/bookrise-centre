# Architecture

## Hosting

The production site is served by a Cloudflare Worker named `bookrise-centre-live` under the Cloudflare account. GitHub is used as the source repository and version history; it is not the production host.

## Application shape

The current application is a single-module Worker. The HTML markup, CSS, client-side JavaScript, page content and several image assets are embedded in `worker/worker.js`. The source retrieved from the deployed Worker is approximately 98,211 characters.

The Worker is connected to a Cloudflare D1 database through the binding named `DB`.

## Known page routes

The source navigation includes About, Services, Pricing, Our Work, For Authors, Resources, Our Team, FAQ and Contact. Other routes implemented in the Worker include Home, Terms, Privacy, Refunds, Process and Why Choose Us.

## External services and secrets

The repository intentionally does not contain Cloudflare credentials or secret values. Any future external API credentials should be configured as Cloudflare Worker secrets, not placed in source control.

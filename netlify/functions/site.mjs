// Serves the BookRise Centre Worker (worker/worker.js) on Netlify.
// The Worker's fetch handler already speaks the standard Request/Response
// API, so it is reused unchanged. No D1 `DB` binding exists on Netlify, so
// env.DB is undefined and /api/enquiry returns the Worker's own 503 fallback
// asking visitors to email the team.
import worker from "../../worker/worker.js";

export default async (request) => worker.fetch(request, {});

export const config = {
  path: "/*",
};

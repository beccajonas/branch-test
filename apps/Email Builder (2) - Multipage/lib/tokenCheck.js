const now = Date.now();
const threeHoursMs = 3 * 60 * 60 * 1000;

// If authenticate.data is null/undefined, set lastAuth to 0
const lastAuth = authenticate.data && authenticate.data.issuedAt ? authenticate.data.issuedAt : 0;
const expiresAt = lastAuth + threeHoursMs;

if (!authenticate.data || !authenticate.data.authToken || now >= expiresAt) {
  // Token missing or expired: re-authenticate
  await authenticate.trigger();
} else if (expiresAt - now < (30 * 60 * 1000)) { // Less than 30 minutes left
  // Token is about to expire: refresh it
  await refresh.trigger();
} else {
  console.log("No action");
  createFolder.trigger();
}

// Now use tempState.responsysToken for your API call

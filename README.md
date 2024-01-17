# gym

A PWA for tracking and comparing mine and my friend's gym progress.

No unit tests because it's just a project for me and my friends (and I'm lazy).

## Setup Firebase hosting

1. Run `firebase init`
   - Select _Hosting_
   - Select _Firestore rules and indexes_
   - Select `public` as the public directory
   - Select `y` for single-page app
   - Select `N` for overwrite GitHub actions workflow files
2. Go to Repository Settings and select _Sercrets and Variables_ > _Actions_
   1. Add `FIREBASE_PROJECT_ID` with your Firebase project ID (e.g. `my-project`) as the value to your repository secrets
   2. Add `FIREBASE_UPPERCASE_PROJECT_ID` with your Firebase project ID in uppercase (e.g. `my-project` → `MY_PROJECT`) as the value to your repository secrets
   3. Add `FLUTTER_VERSION` with the flutter version of the project (if unchanged it's `3.16.5`) as the value to your repository variables

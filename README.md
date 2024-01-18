# About

A PWA for tracking and comparing my and my friend's gym progress.

_No unit tests because it's just a personal project for me and my friends <sub>(and I'm lazy<sup>TM</sup>)</sub>._

# Development

1. Start Firebase emulators

   ```bash
   firebase emulators:start
   ```

2. Run the app

   ```bash
   flutter run -d [chrome|firefox]
   ```

3. Happy coding!

# Deployment

On every push to `main` the app is automatically deployed to Firebase hosting.

## Setup Firebase hosting

1. Run `firebase init`
   - Select _Hosting_
   - Select _Firestore rules and indexes_
   - Select `public` as the public directory
   - Select `y` for single-page app
   - Select `N` for overwrite GitHub actions workflow files
2. Go to your repo settings and select _Secrets and Variables_ > _Actions_
   1. Add `FIREBASE_PROJECT_ID` with your Firebase project ID (e.g. `my-project`) as the value to your repository secrets
   2. Add `FIREBASE_UPPERCASE_PROJECT_ID` with your Firebase project ID in uppercase (e.g. `my-project` → `MY_PROJECT`) as the value to your repository secrets
   3. Add `FLUTTER_VERSION` with the flutter version of the project (if unchanged it's `3.16.5`) as the value to your repository variables

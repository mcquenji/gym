# About

A PWA for tracking and comparing my and my friend's gym progress.

_No unit tests because it's just a personal project for me and my friends <sub>(and I'm lazy<sup>TM</sup>)</sub>._

# Development

1. If not done already [Setup Firebase Hosing](#setup-firebase-hosting)

2. Start Firebase emulators

   ```bash
   firebase emulators:start
   ```

3. Run the app

   ```bash
   flutter run -d [chrome|firefox]
   ```

4. Happy coding!

# Deployment

On every push to `main` the app is automatically deployed to Firebase hosting.

## Setup Firebase hosting

1. Run `firebase init`
   - Select _Hosting_
   - Select _Firestore rules and indexes_
   - Select `public` as the public directory
   - Select `y` for single-page app
   - Select `N` when asked to overwrite any files
2. Run `flutterfire configure` to configure Firebase for Flutter and select `web` as supported platform
3. Go to your repo settings and select _Secrets and Variables_ > _Actions_
   1. Add `FIREBASE_PROJECT_ID` with your Firebase project ID (e.g. `my-project`) as the value to your repository secrets
   2. Add `FIREBASE_UPPERCASE_PROJECT_ID` with your Firebase project ID in uppercase (e.g. `my-project` → `MY_PROJECT`) as the value to your repository secrets
   3. Add `FIREBASE_OPTIONS` with the contents of the generated `firebase_options.dart` file in step 2 as the value to your repository secrets
   4. Add `FLUTTER_VERSION` with the flutter version of the project (if unchanged it's `3.16.5`) as the value to your repository variables

# Usage

## Register the first user

The app is built in an invite-only manner. However, the first user can register without an invitation code (i.e. referral from now on). So it is recommended that you register yourself first here `https://<your-domain>/#/register` and then invite your friends.

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

The app is built in an invite-only manner. However, the first user can register without an invitation code (i.e. referral from now on). So it is recommended that you register yourself first at `https://<your-domain>/#/register` and then invite your friends.

# Credits

Image by <a href="https://www.freepik.com/free-vector/hand-drawn-people-doing-yoga_8233583.htm#query=stretching%20stretch&position=7&from_view=keyword&track=ais&uuid=d611dc5d-5d32-412a-8855-47be4d393ea9">Freepik</a>
<a href="https://www.freepik.com/free-vector/gym-isometric-set_4359502.htm#fromView=search&page=1&position=49&uuid=4dd94f94-11ff-4586-95ac-a01f0dfb63c3">Image by macrovector</a> on Freepik
<a href="https://www.freepik.com/free-vector/athletes-doing-fitness-exercise-gym-with-panoramic-windows-isolated-flat-vector-illustration-cartoon-people-cardio-training-weight-lifting_10172354.htm#fromView=search&page=1&position=6&uuid=8766c63e-7ffd-4357-b79d-59ff4de23369">Image by pch.vector</a> on Freepik
<a href="https://www.freepik.com/free-vector/set-male-females-weight-lifters_4950314.htm#fromView=image_search_similar&page=1&position=4&uuid=ea6acc57-609b-4add-8406-314bcb80ec3c">Image by katemangostar</a> on Freepik

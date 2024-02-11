import 'package:gym/features/auth/auth.dart';
import 'package:gym/features/profile/profile.dart';
import 'package:gym/shared/shared.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

/// Provides the profile of the current user.
///
/// If the user is not logged in, or no profile has been set up yet, this provider will return `null`.

class UserProfileProvider extends Notifier<UserProfileProviderState> {
  final String usersCollection;

  UserProfileProvider(this.usersCollection);

  late UserProfileDataSource userProfileDataSource;
  late User? user;

  bool _initialized = false;

  @override
  UserProfileProviderState build() {
    if (!_initialized) {
      state = null;
      _initialized = true;
    }

    // watch the users collection for changes
    ref.watch(collectionWatcher("$usersCollection/${user!.id}"));
    userProfileDataSource = ref.watch(userProfileDataSourceProvider);
    user = ref.watch(userProvider);

    if (user == null) {
      return null;
    }

    return state;
  }
}

typedef UserProfileProviderState = UserProfile?;

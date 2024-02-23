import 'package:gym/features/profile/profile.dart';
import 'package:gym/features/profile/impl/impl.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final userProfileDataSourceProvider = Provider<UserProfileDataSource>(
  (ref) {
    var userDataService = ref.read(userDataServiceProvider);

    return StdUserProfileDataSource(
      userDataService,
      "users",
      "data",
      "profile",
    );
  },
);

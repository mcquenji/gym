import 'package:gym/shared/shared.dart';

abstract class UserDataService extends Service {
  UserDataService() : super("UserData");

  /// Returns the path to the user's sub-collection where user data is stored.
  String getUserDataCollectionPath(String userId);
}

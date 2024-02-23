import 'package:gym/features/profile/profile.dart';

class StdUserDataService extends UserDataService {
  final String usersCollection;
  final String subCollectionName;

  StdUserDataService(this.usersCollection, this.subCollectionName);

  @override
  String getUserDataCollectionPath(String userId) {
    return '$usersCollection/$userId/$subCollectionName';
  }
}

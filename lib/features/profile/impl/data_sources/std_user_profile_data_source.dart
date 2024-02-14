import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gym/features/profile/profile.dart';

class StdUserProfileDataSource extends UserProfileDataSource {
  /// The name of the document that contains the user's profile.
  ///
  /// This is the same for all users as the document is at `[usersCollection]/userId/[subCollectionName]/[documentName]`
  final String documentName;

  /// The name of the collection that contains all users;
  final String usersCollection;

  /// The name of the sub-collection that contains the user's data.
  final String subCollectionName;

  StdUserProfileDataSource(
      this.usersCollection, this.subCollectionName, this.documentName);

  @override
  Future<UserProfile?> getUserProfile(String userId) async {
    log.info('Retrieving user profile for user $userId');

    var doc = await FirebaseFirestore.instance
        .collection(getUserDataCollectionPath(userId))
        .doc(documentName)
        .get();

    if (!doc.exists) {
      log.warning('User $userId has no profile');
      return null;
    }

    log.info('User profile for user $userId successfully retrieved');

    return UserProfile.fromJson(doc.data()!);
  }

  @override
  Future<void> write(UserProfile userProfile) async {
    log.info('Writing user profile for user ${userProfile.id}');

    try {
      await FirebaseFirestore.instance
          .collection(getUserDataCollectionPath(userProfile.id))
          .doc(documentName)
          .set(userProfile.toJson());

      log.info('User profile for user ${userProfile.id} successfully written.');
    } catch (e) {
      log.severe(
          'Error writing user profile for user ${userProfile.id}. Does the user exist?',
          e);
    }
  }

  @override
  String getUserDataCollectionPath(String userId) {
    return '$usersCollection/$userId/$subCollectionName';
  }
}

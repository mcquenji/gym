import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gym/features/profile/profile.dart';

class StdUserProfileDataSource extends UserProfileDataSource {
  /// The name of the document that contains the user's profile.
  ///
  /// This is the same for all users as the document is at `[usersCollection]/userId/[subCollectionName]/[documentName]`
  final String documentName;

  final UserDataService userDataService;

  StdUserProfileDataSource(
    this.userDataService,
    this.documentName,
  );

  @override
  Future<UserProfile?> getUserProfile(String userId) async {
    log('Retrieving user profile for user $userId');

    var doc = await FirebaseFirestore.instance
        .collection(userDataService.getUserDataCollectionPath(userId))
        .doc(documentName)
        .get();

    if (!doc.exists) {
      log('No profile found for $userId ');
      return null;
    }

    log('User profile for user $userId successfully retrieved');

    return UserProfile.fromJson(doc.data()!);
  }

  @override
  Future<void> write(UserProfile userProfile) async {
    log('Writing user profile for user ${userProfile.id}');

    try {
      await FirebaseFirestore.instance
          .collection(userDataService.getUserDataCollectionPath(userProfile.id))
          .doc(documentName)
          .set(userProfile.toJson());

      log('User profile for user ${userProfile.id} successfully written.');
    } catch (e) {
      log('Error writing user profile for user ${userProfile.id}. Does the user exist?',
          e);
    }
  }
}

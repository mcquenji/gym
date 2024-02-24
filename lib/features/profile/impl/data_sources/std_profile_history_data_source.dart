import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gym/features/auth/auth.dart';
import 'package:gym/features/profile/profile.dart';

class StdProfileHistoryDataSource extends ProfileHistoryDataSource {
  /// The name of the document that contains the user's profile.
  ///
  /// This is the same for all users as the document is at `[usersCollection]/userId/[subCollectionName]/[documentName]`
  final String documentName;

  /// The name of the collection that contains all users;
  final String usersCollection;

  /// The name of the sub-collection that contains the user's data.
  final String subCollectionName;

  final AuthService authService;

  const StdProfileHistoryDataSource(
    this.authService,
    this.usersCollection,
    this.subCollectionName,
    this.documentName,
  ) : super();

  @override
  Future<Map<DateTime, UserProfile>> getHistory() async {
    if (!authService.isUserLoggedIn()) {
      log('User is not logged in. Cannot retrieve profile history.');
      throw Exception('User is not logged in');
    }

    final userId = authService.getCurrentUserId();

    log('Retrieving profile history for user $userId');

    var doc = await FirebaseFirestore.instance
        .collection(usersCollection)
        .doc(userId)
        .collection(subCollectionName)
        .doc(documentName)
        .get();

    if (!doc.exists) {
      log('No profile history found for $userId ');
      return {};
    }

    log('Profile history for user $userId successfully retrieved');

    return Map<DateTime, UserProfile>.fromEntries(
      (doc.data() as Map<int, Map<String, dynamic>>).entries.map(
            (e) => MapEntry(DateTime.fromMillisecondsSinceEpoch(e.key),
                UserProfile.fromJson(e.value)),
          ),
    );
  }

  @override
  Future<void> record(UserProfile profile) {
    if (!authService.isUserLoggedIn()) {
      log('User is not logged in. Cannot record profile history.');
      throw Exception('User is not logged in');
    }

    if (profile.id != authService.getCurrentUserId()) {
      log('User is not the owner of the profile. Cannot record profile history.');
      throw Exception('User is not the owner of the profile');
    }

    log('Recording profile history for user ${profile.id}');

    return FirebaseFirestore.instance
        .collection(usersCollection)
        .doc(profile.id)
        .collection(subCollectionName)
        .doc(documentName)
        .update({
      DateTime.now().millisecondsSinceEpoch: profile.toJson(),
    });
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gym/features/auth/auth.dart';
import 'package:gym/features/profile/profile.dart';

class StdProfileHistoryDataSource extends ProfileHistoryDataSource {
  /// The name of the document that contains the user's profile.
  ///
  /// This is the same for all users as the document is at `[usersCollection]/userId/[subCollectionName]/[documentName]`
  final String documentName;

  final UserDataService userDataService;

  final AuthService authService;

  const StdProfileHistoryDataSource(
    this.authService,
    this.userDataService,
    this.documentName,
  ) : super();

  @override
  Future<Map<DateTime, UserProfile>> getHistory() async {
    if (!authService.isUserLoggedIn()) {
      log('User is not logged in. Cannot retrieve profile history.');
      throw Exception('User is not logged in');
    }

    final userId = authService.getCurrentUserId()!;

    log('Retrieving profile history for user $userId');

    var doc = await FirebaseFirestore.instance
        .collection(userDataService.getUserDataCollectionPath(userId))
        .doc(documentName)
        .get();

    if (!doc.exists) {
      log('No profile history found for $userId ');
      return {};
    }

    log('Profile history for user $userId successfully retrieved');

    return Map<DateTime, UserProfile>.fromEntries(
      (doc.data() as Map<String, Map<String, dynamic>>).entries.map(
            (e) => MapEntry(
                DateTime.fromMillisecondsSinceEpoch(int.parse(e.key)),
                UserProfile.fromJson(e.value)),
          ),
    );
  }

  @override
  Future<void> record(UserProfile profile) async {
    if (!authService.isUserLoggedIn()) {
      log('User is not logged in. Cannot record profile history.');
      throw Exception('User is not logged in');
    }

    if (profile.id != authService.getCurrentUserId()) {
      log('User is not the owner of the profile. Cannot record profile history.');
      throw Exception('User is not the owner of the profile');
    }

    log('Recording profile history for user ${profile.id}');

    try {
      var doc = await FirebaseFirestore.instance
          .collection(userDataService.getUserDataCollectionPath(profile.id))
          .doc(documentName)
          .get();

      final data = {
        DateTime.now().millisecondsSinceEpoch.toString(): profile.toJson(),
      };

      if (!doc.exists) {
        log('No profile history found for ${profile.id}. Initializing history with current profile.');
        await doc.reference.set(data);

        return;
      }

      doc.reference.update(data);

      log('Profile history for user ${profile.id} successfully recorded');
    } catch (e, stackTrace) {
      log('Error recording profile history', e, stackTrace);
      rethrow;
    }
  }
}

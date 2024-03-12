import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gym/shared/shared.dart';

abstract class UserDataService extends Service {
  UserDataService() : super("UserData");

  /// Returns the path to the user's sub-collection where user data is stored.
  String getUserDataCollectionPath(String userId);

  /// Returns a [DocumentReference] for a [documentId] in the [userId]'s sub-collection.
  DocumentReference getUserDataDocument(String userId, String documentId);
}

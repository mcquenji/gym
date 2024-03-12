import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gym/features/profile/profile.dart';

class StdUserDataService extends UserDataService {
  final String usersCollection;
  final String subCollectionName;

  StdUserDataService(this.usersCollection, this.subCollectionName);

  @override
  String getUserDataCollectionPath(String userId) {
    return '$usersCollection/$userId/$subCollectionName';
  }

  @override
  DocumentReference getUserDataDocument(String userId, String documentId) {
    final collection = getUserDataCollectionPath(userId);

    return FirebaseFirestore.instance.collection(collection).doc(documentId);
  }
}

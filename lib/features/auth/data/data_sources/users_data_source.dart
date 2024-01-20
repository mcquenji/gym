import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gym/features/auth/auth.dart';

/// An implementation of [UsersDataSource] that uses Firestore.
///
/// The collection is located at `/users`.
class FirestoreUsersDataSource extends UsersDataSource {
  final CollectionReference<Map<String, dynamic>> collection;

  FirestoreUsersDataSource()
      : collection = FirebaseFirestore.instance.collection('users');

  @override
  Future<void> delete(String id) => collection.doc(id).delete();

  @override
  Future<User?> get(String id) async {
    var data = await collection.doc(id).get();

    if (!data.exists) {
      return null;
    }

    return User.fromJson(data.data()!);
  }

  @override
  Future<List<User>> query(
      {String? id, String? email, String? name, bool? registered}) {
    var query = collection.where('id', isNotEqualTo: '');

    if (id != null) {
      query = query.where('id', isEqualTo: id);
    }

    if (email != null) {
      query = query.where('email', isEqualTo: email);
    }

    if (name != null) {
      query = query.where('name', isEqualTo: name);
    }

    if (registered != null) {
      query = query.where('registered', isEqualTo: registered);
    }

    return query.get().then(
        (value) => value.docs.map((e) => User.fromJson(e.data())).toList());
  }

  @override
  Future<void> setRegistered(String id, bool registered) {
    return collection.doc(id).update({'registered': registered});
  }

  @override
  Future<void> write(User user) {
    return collection.doc(user.id).set(user.toJson());
  }

  @override
  Future<String> createUserID() async {
    return collection.doc().id;
  }
}

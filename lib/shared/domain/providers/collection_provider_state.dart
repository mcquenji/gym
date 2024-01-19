import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod/riverpod.dart';

class CollectionProvider extends StateNotifier<CollectionReference> {
  final String id;

  CollectionProvider(this.id)
      : super(FirebaseFirestore.instance.collection(id));
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gym/shared/shared.dart';
import 'package:riverpod/riverpod.dart';

final collectionProvider = StateNotifierProvider.family<CollectionProvider,
    CollectionReference, String>((ref, id) {
  return CollectionProvider(id);
});

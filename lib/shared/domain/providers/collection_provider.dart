import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gym/shared/shared.dart';
import 'package:riverpod/riverpod.dart';

/// A provider that listens to a collection in Firestore and updates its state with the latest snapshots.
///
/// The state is a map of document ids to [DocumentReference]s.
final collectionProvider = StateNotifierProvider.family<CollectionProvider,
    Map<String, DocumentReference<Map<String, dynamic>>>, String>((ref, id) {
  return CollectionProvider(id);
});

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod/riverpod.dart';
import 'package:gym/shared/shared.dart';

/// Provides the json snapshots of a document with the given path.
///
/// The path **must** be in the format of `collection/document`.
///
/// ---
///
/// The state is automatically updated when the document changes.
///
/// After the document is deleted, this provider will be disposed.
final documentProvider = StateNotifierProvider.family<DocumentProvider,
    Map<String, dynamic>, String>((ref, path) {
  final document = FirebaseFirestore.instance.doc(path);

  return DocumentProvider(document);
});

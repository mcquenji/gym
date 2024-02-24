import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod/riverpod.dart';

/// A provider that provides the lates json snapshot of a document in Firestore.
///
/// The state is automatically updated when the document changes.
///
/// After the document is deleted, this provider will be disposed.
class DocumentController extends StateNotifier<Map<String, dynamic>> {
  final DocumentReference<Map<String, dynamic>> _document;

  DocumentController(this._document) : super({}) {
    _document.snapshots().listen(_snapshotToState);
  }

  _snapshotToState(DocumentSnapshot<Map<String, dynamic>> snapshot) {
    state = snapshot.data() ?? {};
  }

  /// Updates the document with the provided data.
  ///
  /// - If [merge] is true, the provided data will be merged with the existing data.
  /// - If [merge] is false, the provided data will overwrite the existing data.
  Future<void> update(Map<String, dynamic> data, {bool merge = false}) async {
    await _document.set(data, SetOptions(merge: merge));
  }

  /// Deletes the document.
  ///
  /// After this method is called, this provider will be disposed.
  Future<void> delete() async {
    await _document.delete();
    dispose();
  }
}

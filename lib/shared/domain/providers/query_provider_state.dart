import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod/riverpod.dart';

/// A provider that listens to a query in Firestore and updates its state with the latest snapshots.
class QueryProvider
    extends StateNotifier<List<QueryDocumentSnapshot<Map<String, dynamic>>>> {
  final Query<Map<String, dynamic>> _query;

  QueryProvider(this._query) : super([]) {
    _query.snapshots().listen(_snapshotToState);
  }

  _snapshotToState(QuerySnapshot<Map<String, dynamic>> snapshot) {
    state = snapshot.docs;
  }
}

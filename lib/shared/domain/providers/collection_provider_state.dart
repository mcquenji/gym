import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod/riverpod.dart';

class CollectionProvider extends StateNotifier<
    Map<String, DocumentReference<Map<String, dynamic>>>> {
  final String id;

  late CollectionReference<Map<String, dynamic>> _collection;

  CollectionProvider(this.id) : super({}) {
    _collection = FirebaseFirestore.instance.collection(id);

    _collection.snapshots().listen(_snapshotToState);
  }

  _snapshotToState(QuerySnapshot<Map<String, dynamic>> snapshot) {
    state = snapshot.docs.fold(
      {},
      (previousValue, element) => {
        ...previousValue,
        element.id: _collection.doc(element.id),
      },
    );
  }

  /// Adds a new document to the collection and returns its id.
  ///
  /// - If [id] is not provided, a new id will be generated.
  /// - If [id] is provided, the document will be created with that id.
  /// NOTE: If a document with that id already exists, it will be overwritten.
  Future<String> add(Map<String, dynamic> data, {String? id}) async {
    var ref = _collection.doc(id);

    await ref.set(data);

    return ref.id;
  }
}

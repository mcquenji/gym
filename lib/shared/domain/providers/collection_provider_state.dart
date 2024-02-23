import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CollectionWatcher extends ChangeNotifier {
  final CollectionWatcherID id;

  late CollectionReference<Map<String, dynamic>> _collection;

  CollectionWatcher(this.id) {
    // _collection =
    //     id.isLeft ? FirebaseFirestore.instance.collection(id.left) : id.right;

    _collection = FirebaseFirestore.instance.collection(id);

    _collection.snapshots().listen((_) {
      notifyListeners();
    });
  }
}

// typedef CollectionWatcherID
//     = Either<String, CollectionReference<Map<String, dynamic>>>;

typedef CollectionWatcherID = String;

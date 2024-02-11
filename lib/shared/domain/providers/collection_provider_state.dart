import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class CollectionWatcher extends ChangeNotifier {
  final String id;

  late CollectionReference<Map<String, dynamic>> _collection;

  CollectionWatcher(this.id) {
    _collection = FirebaseFirestore.instance.collection(id);

    _collection.snapshots().listen((_) {
      notifyListeners();
    });
  }
}

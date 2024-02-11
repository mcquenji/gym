import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym/shared/shared.dart';

/// A provider that listens to changes in a Firestore collection.
///
/// Watch this provider to be notified of changes in a collection.
final collectionWatcher =
    ChangeNotifierProvider.family<CollectionWatcher, String>((ref, id) {
  return CollectionWatcher(id);
});

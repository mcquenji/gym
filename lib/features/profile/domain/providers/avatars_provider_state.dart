import 'dart:async';

import 'package:gym/features/auth/auth.dart';
import 'package:riverpod/riverpod.dart';
import 'package:firebase_storage/firebase_storage.dart';

class AvatarsProvider extends AsyncNotifier<AvatarsProviderState> {
  final String path;

  AvatarsProvider(this.path);

  @override
  FutureOr<AvatarsProviderState> build() async {
    // Watch users so we update the list of avatar urls when a new user is created
    ref.watch(usersProvider);

    var storage = FirebaseStorage.instance;

    var avatars = await storage.ref(path).listAll();

    var urls = <String, String>{};

    for (var item in avatars.items) {
      var url = await item.getDownloadURL();
      urls[item.name] = url;
    }

    return urls;
  }
}

typedef AvatarsProviderState = Map<String, String>;

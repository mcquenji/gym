import 'package:gym/features/auth/auth.dart';
import 'package:gym/shared/shared.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:firebase_storage/firebase_storage.dart';

class AvatarsProvider extends AsyncNotifier<AvatarsProviderState> {
  @override
  FutureOr<AvatarsProviderState> build() async {
    // Watch users so we update the list of avatar urls when a new user is created
    ref.watch(usersProvider);

    var storage = FirebaseStorage.instance;

    var avatars = await storage.ref('avatars').listAll();

    var urls = <String, String>{};

    for (var item in avatars.items) {
      var url = await item.getDownloadURL();
      urls[item.name] = url;
    }

    return urls;
  }
}

typedef AvatarsProviderState = Map<String, String>;

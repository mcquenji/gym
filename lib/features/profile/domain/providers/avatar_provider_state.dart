import 'dart:async';
import 'dart:typed_data';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:gym/features/auth/auth.dart';
import 'package:gym/features/profile/profile.dart';
import 'package:gym/shared/shared.dart';
import 'package:riverpod/riverpod.dart';

class AvatarController extends AsyncNotifier<AvatarProviderState> {
  User? user;
  late AvatarGeneratorService avatarGeneratorService;

  final String path;

  AvatarController(this.path);

  @override
  FutureOr<AvatarProviderState> build() async {
    user = ref.watch(userProvider);
    var avatars = ref.watch(avatarsProvider);
    var networkService = ref.watch(networkServiceProvider);
    avatarGeneratorService = ref.watch(avatarGeneratorServiceProvider);

    if (user == null) {
      throw Exception('User is not authenticated');
    }

    if (avatars.hasError) {
      throw avatars.error ?? Exception('Unknown error');
    }

    if (avatars.isLoading) {
      throw Exception('Avatars are still loading');
    }

    var avatarUrl = avatars.requireValue[user!.id];

    if (avatarUrl == null) {
      throw Exception('No avatar found for user ${user!.id}');
    }

    // download the image here so we can update the avatar without re-downloading it when [createNewAvatar] is called
    var response = await networkService.get(avatarUrl);

    if (response.isNotOk) {
      throw Exception('Failed to download avatar: ${response.body}');
    }

    return response.body;
  }

  Future<void> createNewAvatar() async {
    if (user == null) {
      throw Exception('User is not authenticated');
    }

    state = const AsyncValue.loading();

    state = await AsyncValue.guard(() async {
      var avatar = await avatarGeneratorService.generateAvatar();

      await FirebaseStorage.instance.ref('$path/${user!.id}').putData(
            Uint8List.fromList(avatar.codeUnits),
          );

      return avatar;
    });
  }
}

typedef AvatarProviderState = String;

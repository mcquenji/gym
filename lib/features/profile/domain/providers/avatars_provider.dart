import 'package:gym/features/profile/profile.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

/// Provides a map of profile images for each user.
///
/// The key is the user id and the value is the url of the image.
final avatarsProvider =
    AsyncNotifierProvider<AvatarsController, AvatarsProviderState>(
  () => AvatarsController('avatars'),
);

import 'package:gym/features/profile/profile.dart';
import 'package:riverpod/riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

/// Provides the svg code of the avatar for the current user as a string.
///
/// Use [avatarProvider.notifier] to generate a new avatar.
final avatarProvider =
    AsyncNotifierProvider<AvatarController, AvatarProviderState>(
  () => AvatarController('avatars'),
);

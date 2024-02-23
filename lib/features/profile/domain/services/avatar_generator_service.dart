import 'package:gym/shared/shared.dart';

/// A service responsible for generating random avatars.
abstract class AvatarGeneratorService extends Service {
  AvatarGeneratorService() : super("AvatarGenerator");

  /// Generates a random avatar and returns the svg code as a string.
  Future<String> generateAvatar();
}

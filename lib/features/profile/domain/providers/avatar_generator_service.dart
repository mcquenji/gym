import 'package:riverpod/riverpod.dart';
import 'package:gym/shared/shared.dart';
import 'package:gym/features/profile/impl/impl.dart';
import 'package:gym/features/profile/profile.dart';

final avatarGeneratorServiceProvider = Provider<AvatarGeneratorService>((ref) {
  var networkService = ref.watch(networkServiceProvider);

  return AvataaarsGeneratorService(networkService);
});

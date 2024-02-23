import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym/features/profile/profile.dart';
import 'package:gym/shared/shared.dart';

/// A widget that displays the avatar of a user.
class Avatar extends ConsumerWidget {
  const Avatar({super.key, this.userId, this.size});

  /// The user id of the avatar to display.
  ///
  /// If null, the current user's avatar will be displayed.
  final String? userId;

  /// The size of the avatar.
  final double? size;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    if (userId == null) {
      var svg = ref.watch(avatarProvider);

      return _handleAsyncValue(
        svg,
        context,
        (svg) => SvgPicture.string(
          svg,
          width: size,
          height: size,
          theme: SvgTheme(
            currentColor: context.theme.colorScheme.primary.withOpacity(0.3),
          ),
        ),
      );
    }

    var urls = ref.watch(avatarsProvider);

    return _handleAsyncValue(
      urls,
      context,
      (urls) {
        var url = urls[userId!];

        if (url == null) {
          return _error(context);
        }

        return SvgPicture.network(
          url,
          placeholderBuilder: (context) => _loading(),
          width: size,
          height: size,
          theme: SvgTheme(
            currentColor: context.theme.colorScheme.secondary.withOpacity(0.3),
          ),
        );
      },
    );
  }

  Widget _handleAsyncValue<T>(
      AsyncValue<T> value, BuildContext context, Widget Function(T) builder) {
    return value.when(
      data: builder,
      loading: () => SizedBox(
        width: size,
        height: size,
        child: _loading(),
      ),
      error: (error, stackTrace) => _error(context),
    );
  }

  Widget _loading() {
    return SizedBox(
      width: size,
      height: size,
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget _error(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Center(
        child: Icon(
          IconlyBold.danger,
          color: context.theme.colorScheme.error,
        ),
      ),
    );
  }
}

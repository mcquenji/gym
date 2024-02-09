/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class $AssetsAuthGen {
  const $AssetsAuthGen();

  /// File path: assets/auth/complete-profile.svg
  SvgGenImage get completeProfile =>
      const SvgGenImage('assets/auth/complete-profile.svg');

  /// File path: assets/auth/invalid-code.svg
  SvgGenImage get invalidCode =>
      const SvgGenImage('assets/auth/invalid-code.svg');

  /// File path: assets/auth/lets-go.svg
  SvgGenImage get letsGo => const SvgGenImage('assets/auth/lets-go.svg');

  /// List of all assets
  List<SvgGenImage> get values => [completeProfile, invalidCode, letsGo];
}

class $AssetsNotFoundGen {
  const $AssetsNotFoundGen();

  /// File path: assets/not-found/not-found.svg
  SvgGenImage get notFound =>
      const SvgGenImage('assets/not-found/not-found.svg');

  /// List of all assets
  List<SvgGenImage> get values => [notFound];
}

class $AssetsOnboardingGen {
  const $AssetsOnboardingGen();

  /// File path: assets/onboarding/als.svg
  SvgGenImage get als => const SvgGenImage('assets/onboarding/als.svg');

  /// File path: assets/onboarding/competition.svg
  SvgGenImage get competition =>
      const SvgGenImage('assets/onboarding/competition.svg');

  /// File path: assets/onboarding/monhtly-pics.svg
  SvgGenImage get monhtlyPics =>
      const SvgGenImage('assets/onboarding/monhtly-pics.svg');

  /// File path: assets/onboarding/track-your-goals.svg
  SvgGenImage get trackYourGoals =>
      const SvgGenImage('assets/onboarding/track-your-goals.svg');

  /// List of all assets
  List<SvgGenImage> get values =>
      [als, competition, monhtlyPics, trackYourGoals];
}

class Assets {
  Assets._();

  static const $AssetsAuthGen auth = $AssetsAuthGen();
  static const $AssetsNotFoundGen notFound = $AssetsNotFoundGen();
  static const $AssetsOnboardingGen onboarding = $AssetsOnboardingGen();
}

class SvgGenImage {
  const SvgGenImage(this._assetName);

  final String _assetName;

  SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    SvgTheme theme = const SvgTheme(),
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    return SvgPicture.asset(
      _assetName,
      key: key,
      matchTextDirection: matchTextDirection,
      bundle: bundle,
      package: package,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      theme: theme,
      colorFilter: colorFilter,
      color: color,
      colorBlendMode: colorBlendMode,
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

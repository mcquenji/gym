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

class $AssetsSvgGen {
  const $AssetsSvgGen();

  $AssetsSvgLoginGen get login => const $AssetsSvgLoginGen();
}

class $AssetsSvgLoginGen {
  const $AssetsSvgLoginGen();

  /// File path: assets/svg/login/complete-profile.svg
  SvgGenImage get completeProfile =>
      const SvgGenImage('assets/svg/login/complete-profile.svg');

  /// File path: assets/svg/login/lets-go.svg
  SvgGenImage get letsGo => const SvgGenImage('assets/svg/login/lets-go.svg');

  $AssetsSvgLoginOnboardingGen get onboarding =>
      const $AssetsSvgLoginOnboardingGen();

  /// List of all assets
  List<SvgGenImage> get values => [completeProfile, letsGo];
}

class $AssetsSvgLoginOnboardingGen {
  const $AssetsSvgLoginOnboardingGen();

  /// File path: assets/svg/login/onboarding/als.svg
  SvgGenImage get als =>
      const SvgGenImage('assets/svg/login/onboarding/als.svg');

  /// File path: assets/svg/login/onboarding/competition.svg
  SvgGenImage get competition =>
      const SvgGenImage('assets/svg/login/onboarding/competition.svg');

  /// File path: assets/svg/login/onboarding/monhtly-pics.svg
  SvgGenImage get monhtlyPics =>
      const SvgGenImage('assets/svg/login/onboarding/monhtly-pics.svg');

  /// File path: assets/svg/login/onboarding/track-your-goals.svg
  SvgGenImage get trackYourGoals =>
      const SvgGenImage('assets/svg/login/onboarding/track-your-goals.svg');

  /// List of all assets
  List<SvgGenImage> get values =>
      [als, competition, monhtlyPics, trackYourGoals];
}

class Assets {
  Assets._();

  static const $AssetsSvgGen svg = $AssetsSvgGen();
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

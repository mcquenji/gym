import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gym/shared/shared.dart';

extension ThemeContextExt on BuildContext {
  ThemeData get theme => Theme.of(this);
}

extension ThemeStateExt on State {
  ThemeData get theme => context.theme;
}

extension ThemedSvgPicture on SvgGenImage {
  /// Returns the themed code of the svg image.
  Widget themedSvg(
    BuildContext context, {
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
  }) {
    return FutureBuilder(
        future: rootBundle.loadString(path),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            throw snapshot.error!;
          }

          if (!snapshot.hasData) {
            return placeholderBuilder?.call(context) ?? Container();
          }

          var code = _replaceKeyWords(snapshot.data!, context);

          return SvgPicture.string(
            code,
            key: key,
            matchTextDirection: matchTextDirection,
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
            clipBehavior: clipBehavior,
          );
        });
  }

  String _replaceKeyWords(String svgString, BuildContext context) {
    var result = svgString;
    for (var entry in _keyWordOverrides.entries) {
      result = result.replaceAll(entry.key, entry.value(context));
    }
    return result;
  }

  Map<String, String Function(BuildContext)> get _keyWordOverrides => {
        r"${primaryGradientStart}": (BuildContext context) =>
            context.theme.gradients.primaryGradient.startColor.hex,
        r"${primaryGradientEnd}": (BuildContext context) =>
            context.theme.gradients.primaryGradient.endColor.hex,
      };
}

extension ColorExt on Color {
  String get hex => "#${value.toRadixString(16).substring(2)}";
}

extension TextStyleExt on TextStyle? {
  TextStyle? get bold => this?.copyWith(fontWeight: FontWeight.bold);
}

extension ThemeExt on ThemeData {
  GradientTheme get gradients => extension<GradientTheme>()!;
  Greyscale get greyscale => extension<Greyscale>()!;
  ShadowTheme get shadows => extension<ShadowTheme>()!;
}

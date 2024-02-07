import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';

extension L10nContextExt on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this)!;
}

extension L10nStateExt on State {
  AppLocalizations get l10n => context.l10n;
}

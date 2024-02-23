import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gym/features/profile/profile.dart';
import 'package:intl/intl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym/shared/shared.dart';
import 'package:ionicons/ionicons.dart';

@RoutePage()
class CompleteProfileScreen extends ConsumerStatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends ConsumerState<CompleteProfileScreen> {
  final TextEditingController bodyFatController = TextEditingController();
  final TextEditingController weightController = TextEditingController();
  final TextEditingController heightController = TextEditingController();

  DateTime? dateOfBirth;
  static bool creatingProfile = false;

  int rebuilds = 0;

  void pickDateOfBirth() async {
    DateTime? dateOfBirth;

    updateDoB(DateTime date) => dateOfBirth = date;

    await showModalBottomSheet(
      context: context,
      showDragHandle: true,
      builder: (context) {
        return CupertinoDatePicker(
          onDateTimeChanged: updateDoB,
          maximumDate: DateTime.now(),
          initialDateTime: this.dateOfBirth ??
              DateTime.now().subtract(
                const Duration(days: 365 * 18), // ~18 years
              ),
          mode: CupertinoDatePickerMode.date,
        );
      },
    );

    if (dateOfBirth != null && mounted) {
      setState(() {
        this.dateOfBirth = dateOfBirth;
      });
    }
  }

  Future<void> createProfile() async {
    if (creatingProfile) return;

    if (dateOfBirth == null) return;
    if (weightController.text.isEmpty) return;
    if (heightController.text.isEmpty) return;

    setState(() {
      creatingProfile = true;
    });

    final controller = ref.read(userProfileProvider.notifier);

    await controller.createUserProfile(
      dateOfBirth: dateOfBirth!,
      weight: double.parse(weightController.text),
      height: int.parse(heightController.text),
      bodyFat: bodyFatController.text.isEmpty
          ? null
          : double.parse(bodyFatController.text),
    );

    if (mounted) {
      context.router.push(const SetupCompleteRoute());
    }

    await Future.delayed(1.seconds);

    creatingProfile = false;
  }

  @override
  Widget build(BuildContext context) {
    var profile = ref.watch(userProfileProvider);

    if (profile != null && !creatingProfile) {
      context.router.push(const HomeRoute());
    }

    final stagger = AnimationStagger(increment: 50.ms, delay: 300.ms);

    return Scaffold(
      body: Padding(
        padding: const PaddingAll(),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    l10n.completeProfile_title,
                    style: theme.textTheme.titleLarge.bold,
                  ).animate().sleek(stagger: stagger),
                  const SizedBox(height: 8),
                  Text(
                    l10n.completeProfile_subtitle,
                    style: theme.textTheme.bodyLarge,
                  ).animate().sleek(stagger: stagger),
                  const SizedBox(height: 24),
                  GestureDetector(
                    onTap: pickDateOfBirth,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        color: theme.inputDecorationTheme.fillColor,
                      ),
                      height: 48,
                      child: Row(
                        children: [
                          SizedBox(
                            width: 40,
                            child: Icon(
                              IconlyLight.calendar,
                              color: theme.inputDecorationTheme.iconColor,
                            ),
                          ),
                          if (dateOfBirth != null)
                            Text(DateFormat.yMMMd().format(dateOfBirth!))
                          else
                            Text(
                              l10n.completeProfile_dateOfBirth,
                              style: theme.inputDecorationTheme.hintStyle,
                            ),
                        ],
                      ),
                    ),
                  ).animate().sleek(stagger: stagger),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: heightController,
                    inputFormatters: [
                      FilteringTextInputFormatter.digitsOnly,
                      FilteringTextInputFormatter.allow(RegExp(r'^\d{0,3}')),
                    ],
                    decoration: InputDecoration(
                      hintText: l10n.completeProfile_height,
                      prefixIcon: const Icon(Ionicons.body_outline),
                      suffix: Text(
                        l10n.completeProfile_height_unit,
                      ),
                    ),
                  ).animate().sleek(stagger: stagger),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: weightController,
                    inputFormatters: [
                      DecimalTextInputFormatter(1),
                      DecimalTextInputFormatter.digitsOnly,
                    ],
                    decoration: InputDecoration(
                      hintText: l10n.completeProfile_weight,
                      prefixIcon: const Icon(Ionicons.scale_outline),
                      suffix: Text(
                        l10n.completeProfile_weight_unit,
                      ),
                    ),
                  ).animate().sleek(stagger: stagger),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: bodyFatController,
                    inputFormatters: [
                      DecimalTextInputFormatter(2),
                      DecimalTextInputFormatter.digitsOnly,
                    ],
                    decoration: InputDecoration(
                      hintText: l10n.completeProfile_bodyFat,
                      prefixIcon: const Icon(IconlyLight.graph),
                      suffix: const Text("%"),
                    ),
                  ).animate().sleek(stagger: stagger),
                  const SizedBox(height: 16),
                  Text(
                    l10n.completeProfile_bodyFat_optional,
                    style: theme.textTheme.bodySmall?.copyWith(
                      color: theme.greyscale.grey1,
                    ),
                  ).animate().sleek(stagger: stagger),
                ],
              ),
            ),
            PrimaryButton(
              loading: creatingProfile,
              onPressed: createProfile,
              trailing: const Icon(IconlyLight.arrowRight2),
              child: Text(l10n.completeProfile_submit),
            ).animate().sleek(stagger: stagger),
          ],
        ),
      ),
    );
  }
}

/// Allows only decimal input with a specified range.
///
/// This is to be used in combination with [FilteringTextInputFormatter.digitsOnly] as without it, non-numerical characters will be allowed.
class DecimalTextInputFormatter extends TextInputFormatter {
  /// Allows only decimal input with a specified range.
  ///
  /// This is to be used in combination with [FilteringTextInputFormatter.digitsOnly] as without it, non-numerical characters will be allowed.
  DecimalTextInputFormatter(this.decimalRange) : assert(decimalRange > 0);

  /// The same as [FilteringTextInputFormatter.digitsOnly] but allows decimal point.
  ///
  /// This is to be used in combination with [DecimalTextInputFormatter]. The [DecimalTextInputFormatter] will handle the decimal range.
  /// This formatter will only allow digits and decimal points without regard to how many decimal points there are.
  ///
  /// Regex from [https://stackoverflow.com/a/62476009)
  static FilteringTextInputFormatter get digitsOnly =>
      FilteringTextInputFormatter.allow(RegExp(r'^\d+\.?\d{0,2}'));

  final int decimalRange;

  /// Logic from [https://stackoverflow.com/a/54456978)
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue, // unused.
    TextEditingValue newValue,
  ) {
    TextSelection newSelection = newValue.selection;
    String truncated = newValue.text;

    String value = newValue.text;

    if (value.contains(".") &&
        value.substring(value.indexOf(".") + 1).length > decimalRange) {
      truncated = oldValue.text;
      newSelection = oldValue.selection;
    } else if (value == ".") {
      truncated = "0.";

      newSelection = newValue.selection.copyWith(
        baseOffset: math.min(truncated.length, truncated.length + 1),
        extentOffset: math.min(truncated.length, truncated.length + 1),
      );
    }

    return TextEditingValue(
      text: truncated,
      selection: newSelection,
      composing: TextRange.empty,
    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym/features/auth/auth.dart';
import 'package:gym/features/profile/profile.dart';
import 'package:gym/shared/shared.dart';
import 'package:ionicons/ionicons.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

@RoutePage()
class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EditProfileScreenState();
}

class _EditProfileScreenState extends ConsumerState<ProfileScreen> {
  void updateDoB() async {
    final profile = ref.read(userProfileProvider);
    final controller = ref.read(userProfileProvider.notifier);

    if (profile == null) {
      return;
    }

    DateTime? dateOfBirth;

    updateDoB(DateTime date) => dateOfBirth = date;

    await showModalBottomSheet(
      useRootNavigator: true,
      context: context,
      showDragHandle: true,
      builder: (context) {
        return CupertinoDatePicker(
          onDateTimeChanged: updateDoB,
          maximumDate: DateTime.now(),
          initialDateTime: profile.dateOfBirth,
          mode: CupertinoDatePickerMode.date,
        );
      },
    );
    if (dateOfBirth != null) {
      await controller.setDateOfBirth(dateOfBirth!);
    }
  }

  Future<String?> showInputSheet({
    required String initialValue,
    required List<TextInputFormatter> formatters,
    required IconData icon,
    required String placeholder,
    String? unit,
  }) async {
    String? input;

    await showModalBottomSheet(
      useRootNavigator: true,
      context: context,
      showDragHandle: true,
      builder: (context) {
        return Padding(
          padding: const PaddingAll().Bottom(50).Top(0),
          child: TextField(
            controller: TextEditingController(text: initialValue),
            inputFormatters: formatters,
            onChanged: (value) => input = value,
            decoration: InputDecoration(
              hintText: placeholder,
              prefixIcon: Icon(icon),
              suffixText: unit,
            ),
          ),
        );
      },
    );

    return input != null && input!.isNotEmpty ? input : null;
  }

  void updateWeight() async {
    final profile = ref.read(userProfileProvider);
    final controller = ref.read(userProfileProvider.notifier);

    if (profile == null) {
      return;
    }

    final weight = await showInputSheet(
      initialValue: profile.weight.toString(),
      formatters: [
        DecimalTextInputFormatter(1),
        DecimalTextInputFormatter.digitsOnly,
      ],
      icon: Ionicons.scale_outline,
      placeholder: l10n.completeProfile_weight,
      unit: l10n.completeProfile_weight_unit,
    );

    if (weight != null) {
      await controller.setWeight(double.parse(weight));
    }
  }

  void updateHeight() async {
    final profile = ref.read(userProfileProvider);
    final controller = ref.read(userProfileProvider.notifier);

    if (profile == null) {
      return;
    }

    final height = await showInputSheet(
      initialValue: profile.height.toString(),
      formatters: [
        FilteringTextInputFormatter.digitsOnly,
        FilteringTextInputFormatter.allow(RegExp(r'^\d{0,3}')),
      ],
      icon: Ionicons.body_outline,
      placeholder: l10n.completeProfile_height,
      unit: l10n.completeProfile_height_unit,
    );

    if (height != null) {
      await controller.setHeight(int.parse(height));
    }
  }

  void editProfile() async {
    var controller = ref.read(userProfileProvider.notifier);
    var profile = ref.read(userProfileProvider);

    await showModalBottomSheet(
      showDragHandle: true,
      useRootNavigator: true,
      context: context,
      builder: (context) => Padding(
        padding: const PaddingAll(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller:
                  TextEditingController(text: profile?.weight.toString()),
              decoration: InputDecoration(
                hintText: l10n.completeProfile_weight,
                prefixIcon: const Icon(Ionicons.scale_outline),
                suffixText: l10n.completeProfile_weight_unit,
                labelText: l10n.completeProfile_weight,
              ),
              inputFormatters: [
                DecimalTextInputFormatter(1),
                DecimalTextInputFormatter.digitsOnly,
              ],
              onChanged: (value) => controller.setWeight(double.parse(value)),
            ),
            const SizedBox(height: 10),
            TextField(
              controller:
                  TextEditingController(text: profile?.height.toString()),
              decoration: InputDecoration(
                hintText: l10n.completeProfile_height,
                prefixIcon: const Icon(Ionicons.body_outline),
                suffixText: l10n.completeProfile_height_unit,
                labelText: l10n.completeProfile_height,
              ),
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                FilteringTextInputFormatter.allow(RegExp(r'^\d{0,3}')),
              ],
              onChanged: (value) => controller.setHeight(int.parse(value)),
            ),
            const SizedBox(height: 10),
            TextField(
              controller: TextEditingController(
                text: profile?.bodyFatPercentage.toString(),
              ),
              decoration: InputDecoration(
                hintText: l10n.completeProfile_bodyFat,
                prefixIcon: const Icon(Ionicons.body_outline),
                suffixText: "%",
                labelText: l10n.completeProfile_bodyFat,
              ),
              inputFormatters: [
                DecimalTextInputFormatter(1),
                DecimalTextInputFormatter.digitsOnly,
              ],
              onChanged: (value) => controller.setBodyFat(double.parse(value)),
            ),
            const SizedBox(height: 10),
            Text(
              l10n.profile_edit_hint,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.greyscale.grey2,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final user = ref.watch(userProvider);
    final profile = ref.watch(userProfileProvider);
    final avatarController = ref.watch(avatarProvider.notifier);

    if (user == null || profile == null) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            strokeCap: StrokeCap.round,
          ),
        ),
      );
    }

    return Scaffold(
      appBar: TitleBar(title: l10n.profile_title),
      body: Padding(
        padding: const PaddingAll().Top(10),
        child: Column(
          children: [
            Row(
              children: [
                ContextMenu(
                  actions: [
                    ContextMenuItem(
                      onTap: avatarController.createNewAvatar,
                      label: l10n.profile_newAvatar,
                      icon: Ionicons.shuffle,
                      iconGradient: theme.gradients.primaryGradient.linear,
                    ),
                  ],
                  child: const Avatar(
                    size: 50,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        user.name,
                        style: theme.textTheme.bodyLarge.bold,
                      ),
                      Text(
                        profile.bodyFatPercentage != null
                            ? l10n.profile_bodyFat(profile.bodyFatPercentage!)
                            : user.email,
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: theme.greyscale.grey2,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  child: SecondaryButton(
                    shrinkWrap: true,
                    onPressed: editProfile,
                    gradient: theme.gradients.primaryGradient,
                    child: Text(l10n.profile_edit),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: card(
                    title: l10n.profile_height_caption,
                    value: l10n.profile_height(profile.height),
                    onTap: updateHeight,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: card(
                    title: l10n.profile_weight_caption,
                    value: l10n.profile_weight(profile.weight),
                    onTap: updateWeight,
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: card(
                    title: l10n.profile_age_caption,
                    value: l10n.profile_age(() {
                      DateTime currentDate = DateTime.now();
                      DateTime dateOfBirth = profile.dateOfBirth;
                      int age = currentDate.year - dateOfBirth.year;

                      if (currentDate.month < dateOfBirth.month ||
                          (currentDate.month == dateOfBirth.month &&
                              currentDate.day < dateOfBirth.day)) {
                        age--;
                      }

                      return age;
                    }()),
                    onTap: updateDoB,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget card({
    required String title,
    required String value,
    VoidCallback? onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const PaddingAll(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: theme.colorScheme.surface,
          boxShadow: theme.shadows.defaultShadow,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            GradientText(
              value,
              style: theme.textTheme.bodyLarge,
              colors: theme.gradients.primaryGradient.linear.colors,
            ),
            const SizedBox(height: 2),
            Text(
              title,
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.greyscale.grey1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

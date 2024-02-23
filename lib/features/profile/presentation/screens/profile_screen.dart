import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym/features/auth/auth.dart';
import 'package:gym/features/profile/profile.dart';
import 'package:gym/shared/shared.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

@RoutePage()
class ProfileScreen extends ConsumerStatefulWidget {
  const ProfileScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _EditProfileScreenState();
}

class _EditProfileScreenState extends ConsumerState<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    final user = ref.watch(userProvider);
    final profile = ref.watch(userProfileProvider);

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
                const Avatar(
                  size: 50,
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
                    onPressed: () {},
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
                    l10n.profile_height_caption,
                    l10n.profile_height(profile.height),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: card(
                    l10n.profile_weight_caption,
                    l10n.profile_weight(profile.weight),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: card(
                    l10n.profile_age_caption,
                    l10n.profile_age(
                        DateTime.now().year - profile.dateOfBirth.year),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget card(String title, String value) {
    return Container(
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
    );
  }
}

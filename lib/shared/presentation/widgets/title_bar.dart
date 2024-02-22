import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym/features/auth/auth.dart';
import 'package:gym/shared/shared.dart';

class TitleBar extends ConsumerWidget implements PreferredSizeWidget {
  const TitleBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userController = ref.watch(userProvider.notifier);

    return Padding(
      padding: const PaddingLeft().Right().Top(50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: _icon(IconlyBold.arrowLeft2, context),
          ),
          Text(
            title,
            style: context.theme.textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.w900,
              fontSize: 18,
            ),
          ),
          PopupMenuButton(
            itemBuilder: (context) => <PopupMenuEntry>[
              PopupMenuIcon(
                onTap: () async {
                  userController.logout();
                  context.router.push(const LoginRoute());
                },
                icon: IconlyLight.logout,
                label: context.l10n.global_logout,
              ),
            ],
            icon: _icon(Icons.more_horiz, context),
          ),
        ],
      ),
    );
  }

  Widget _icon(IconData icon, BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.theme.greyscale.grey3.withOpacity(0.3),
        borderRadius: BorderRadius.circular(8),
      ),
      height: 32,
      width: 32,
      child: Icon(
        icon,
        color: context.theme.colorScheme.onSurface,
        size: 20,
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 56);
}

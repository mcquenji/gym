import 'package:advanced_icon/advanced_icon.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gym/shared/shared.dart';
import 'package:ionicons/ionicons.dart';

@RoutePage()
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  int workoutIndex = 2;

  Map<int, PageRouteInfo> indexToRoute = {
    0: const LoginRoute(), // replace with dashboard route when implemented
    1: const LoginRoute(), // replace with activity route when implemented
    2: const LoginRoute(), // replace with workout route when implemented
    3: const LoginRoute(), // replace with monthly photo route when implemented
    4: const ProfileRoute(),
  };

  @override
  void initState() {
    super.initState();

    context.router.addListener(() {
      for (var i = 0; i < indexToRoute.length; i++) {
        if (context.router.isRouteActive(indexToRoute[i]!.routeName)) {
          setState(() {
            currentIndex = i;
          });

          break;
        }
      }
    });

    currentIndex = indexToRoute.entries
        .firstWhere((r) => context.router.isRouteActive(r.value.routeName))
        .key;
  }

  void updateIndex(int index) {
    setState(() {
      currentIndex = index;
    });

    // context.router.push(indexToRoute[index]!);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const AutoRouter(),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: context.theme.shadows.bottomNavBar,
        ),
        child: BottomAppBar(
          padding: const PaddingHorizontal(),
          notchMargin: 5,
          shape: const CircularNotchedRectangle(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              navItem(
                icon: IconlyLight.home,
                activeIcon: IconlyBold.home,
                index: 0,
              ),
              navItem(
                icon: IconlyLight.activity,
                activeIcon: IconlyBold.activity,
                index: 1,
              ),
              const SizedBox.shrink(),
              navItem(
                icon: IconlyLight.camera,
                activeIcon: IconlyBold.camera,
                index: 3,
              ),
              navItem(
                icon: IconlyLight.profile,
                activeIcon: IconlyBold.profile,
                index: 4,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () => updateIndex(workoutIndex),
        child: Container(
          padding: const PaddingAll(20),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: currentIndex == workoutIndex
                ? context.theme.gradients.secondaryGradient.linear
                : context.theme.gradients.primaryGradient.linear,
          ),
          child: AdvancedIcon(
            icon: Ionicons.fitness_outline,
            color: workoutIndex != currentIndex
                ? theme.colorScheme.onPrimary
                : theme.colorScheme.onSecondary,
            size: 35,
            secondaryIcon: Ionicons.fitness,
            state: workoutIndex == currentIndex
                ? AdvancedIconState.secondary
                : AdvancedIconState.primary,
            effect: workoutIndex == currentIndex
                ? AdvancedIconEffect.bubble
                : AdvancedIconEffect.fade,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget navItem({
    required int index,
    required IconData icon,
    required IconData activeIcon,
    double? size,
  }) {
    return GestureDetector(
      onTap: () => updateIndex(index),
      child: AdvancedIcon(
        icon: icon,
        color: index != currentIndex
            ? theme.bottomNavigationBarTheme.unselectedIconTheme?.color
            : null,
        gradient: index == currentIndex
            ? context.theme.gradients.secondaryGradient.linear
            : null,
        size: size ?? theme.bottomNavigationBarTheme.unselectedIconTheme?.size,
        secondaryIcon: activeIcon,
        state: index == currentIndex
            ? AdvancedIconState.secondary
            : AdvancedIconState.primary,
        effect: index == currentIndex
            ? AdvancedIconEffect.bubble
            : AdvancedIconEffect.fade,
      ),
    );
  }
}

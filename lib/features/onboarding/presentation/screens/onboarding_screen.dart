import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gradient_circular_progress_indicator/gradient_circular_progress_indicator.dart';
import 'package:gym/features/auth/auth.dart';
import 'package:gym/shared/shared.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class OnboardingScreen extends ConsumerStatefulWidget {
  const OnboardingScreen({super.key});

  @override
  ConsumerState<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends ConsumerState<OnboardingScreen>
    with SingleTickerProviderStateMixin {
  final List<PageRouteInfo> onboardingRoutes = const [
    OnboardingTrackYourGoalsRoute(),
    OnboardingCompetitionRoute(),
    OnboardingAlsRoute(),
    OnboardingMonthlyPicsRoute(),
  ];

  double progress = 0;

  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    var currentIndex = getCurrentIndex();

    if (currentIndex == -1) {
      context.router.push(onboardingRoutes.first);
      currentIndex = 0;
    }

    animateProgress(currentIndex);
  }

  int getCurrentIndex() {
    return onboardingRoutes.indexWhere(
      (r) => context.router.isRouteActive(r.routeName),
    );
  }

  void animateProgress(int currentIndex) {
    _animation = Tween<double>(
      begin: progress,
      end: (currentIndex + 1) / (onboardingRoutes.length),
    ).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeOutCubic,
      ),
    );

    _animation.addListener(() {
      progress = _animation.value;
    });

    _controller.forward(from: 0);
  }

  void next() {
    var currentIndex = getCurrentIndex();

    if (currentIndex == -1) {
      context.router.push(onboardingRoutes.first);
      currentIndex = 0;
    }

    if (currentIndex + 1 < onboardingRoutes.length) {
      currentIndex++;
      context.router.push(onboardingRoutes[currentIndex]);

      animateProgress(currentIndex);
    } else {
      var controller = ref.read(userProvider.notifier);

      controller.completeOnboarding();
    }
  }

  @override
  Widget build(BuildContext context) {
    var user = ref.watch(userProvider);

    if (user?.onboarded ?? false) {
      context.router.push(const CompleteProfileRoute());
    }

    return Scaffold(
      body: const AutoRouter(),
      floatingActionButton: GestureDetector(
        onTap: next,
        child: Stack(
          alignment: Alignment.center,
          children: [
            AnimatedBuilder(
              animation: _controller,
              builder: (context, _) => GradientCircularProgressIndicator(
                progress: _animation.value,
                gradient: Gradients.of(context).primaryGradient.linear,
                size: 75,
                stroke: 3,
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                gradient: Gradients.of(context).primaryGradient.linear,
                borderRadius: BorderRadius.circular(500),
              ),
              child: Icon(
                IconlyBroken.arrowRight2,
                color: theme.colorScheme.onPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }
}

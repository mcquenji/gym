import 'package:advanced_icon/advanced_icon.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym/shared/shared.dart';
import 'package:gym/features/exercises/exercises.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ionicons/ionicons.dart';
import 'package:sticky_headers/sticky_headers/widget.dart';

@RoutePage()
class ExerciseDetailsScreen extends ConsumerWidget {
  const ExerciseDetailsScreen({
    super.key,
    @PathParam("exerciseId") required this.id,
  });

  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var exercises = ref.watch(exercisesProvider);

    Exercise? exercise = exercises.value?.firstWhere((e) => e.id == id);

    return Scaffold(
      appBar: exercise != null ? TitleBar(title: exercise.name) : null,
      body: Padding(
        padding: const PaddingAll(),
        child: exercises.when(
          data: (exercises) {
            final stagger = AnimationStagger(
              delay: 200.ms,
              increment: 50.ms,
              duration: 2.seconds,
            );

            return Column(
              children: [
                CarouselSlider(
                  options: CarouselOptions(
                    enlargeCenterPage: true,
                    autoPlay: true,
                    autoPlayCurve: Curves.easeOutCubic,
                    viewportFraction: 1,
                    height: MediaQuery.of(context).size.height * 0.26,
                  ),
                  items: exercise!.images
                      .map(
                        (e) => ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(e, fit: BoxFit.cover),
                        ),
                      )
                      .toList(),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const PaddingHorizontal(15),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (exercise.primaryMuscles.isNotEmpty) ...[
                                    _info(
                                      IconlyBroken.category,
                                      exercise.primaryMuscles.first
                                          .localize(context),
                                      context,
                                    ),
                                    const SizedBox(height: 8),
                                  ],
                                  if (exercise.equipment != null) ...[
                                    _info(
                                      Ionicons.barbell,
                                      exercise.equipment!.localize(context),
                                      context,
                                    ),
                                    const SizedBox(height: 8),
                                  ],
                                  if (exercise.force != null) ...[
                                    _info(
                                      IconlyLight.discovery,
                                      exercise.force!.localize(context),
                                      context,
                                    ),
                                    const SizedBox(height: 8),
                                  ],
                                  _info(
                                    Ionicons.fitness,
                                    exercise.category.localize(context),
                                    context,
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _info(
                                    IconlyLight.heart,
                                    exercise.level.localize(context),
                                    context,
                                  ),
                                  const SizedBox(height: 8),
                                  if (exercise.mechanic != null) ...[
                                    _info(
                                      IconlyLight.show,
                                      exercise.mechanic!.localize(context),
                                      context,
                                    ),
                                    const SizedBox(height: 8),
                                  ],
                                  if (exercise.secondaryMuscles.isNotEmpty) ...[
                                    _info(
                                      IconlyLight.moreSquare,
                                      exercise.secondaryMuscles.first
                                          .localize(context),
                                      context,
                                    ),
                                    const SizedBox(height: 8),
                                  ],
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 15),
                        if (exercise.primaryMuscles.length > 1 ||
                            exercise.secondaryMuscles.length > 1)
                          Center(
                            child: GestureDetector(
                              onTap: () => _showAllMuscles(context, exercise),
                              child: Text(
                                context.l10n.exercisesDetails_showAll,
                                style: context.theme.textTheme.bodyMedium
                                    ?.copyWith(
                                  color: context.theme.greyscale.grey2,
                                ),
                              ),
                            ),
                          ),
                        StickyHeader(
                          header: Container(
                            padding:
                                const PaddingAll(15).Left(0).Top(20).Bottom(0),
                            color: context.theme.colorScheme.surface,
                            width: double.infinity,
                            child: Text(
                              context.l10n.exercisesDetails_instructions,
                              style: context.theme.textTheme.titleLarge.bold,
                            ).animate().sleek(stagger: stagger),
                          ),
                          content: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: 15),
                              for (var i = 0;
                                  i < exercise.instructions.length;
                                  i++)
                                Text.rich(
                                  TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "${i + 1}. ",
                                        style: context
                                            .theme.textTheme.bodyLarge.bold,
                                      ),
                                      TextSpan(
                                        text: exercise.instructions[i],
                                        style:
                                            context.theme.textTheme.bodyMedium,
                                      ),
                                    ],
                                  ),
                                ).animate().sleek(stagger: stagger),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
          error: (error, _) => Center(
            child: Icon(
              IconlyLight.dangerTriangle,
              size: 100,
              color: context.theme.colorScheme.error,
            ),
          ),
          loading: () => const Center(
            child: CircularProgressIndicator(
              strokeCap: StrokeCap.round,
            ),
          ),
        ),
      ),
    );
  }

  Widget _info(IconData icon, String text, BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        AdvancedIcon(
          icon: icon,
          gradient: context.theme.gradients.secondaryGradient.linear,
        ),
        const SizedBox(width: 8),
        Text(
          text,
          style: context.theme.textTheme.bodyMedium?.copyWith(
            color: context.theme.greyscale.grey2,
          ),
        ),
      ],
    );
  }

  void _showAllMuscles(BuildContext context, Exercise exercise) {
    showModalBottomSheet(
      context: context,
      showDragHandle: true,
      builder: (context) {
        return Container(
          padding: const PaddingAll(),
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                StickyHeader(
                  header: Container(
                    color: context.theme.colorScheme.surface,
                    child: Row(
                      children: [
                        AdvancedIcon(
                          icon: IconlyBroken.category,
                          gradient:
                              context.theme.gradients.primaryGradient.linear,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          context.l10n.exercisesDetails_primaryMuscles,
                          style: context.theme.textTheme.bodyLarge.bold,
                        ),
                      ],
                    ),
                  ),
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      for (var muscle in exercise.primaryMuscles) ...[
                        const SizedBox(height: 8),
                        Text(muscle.localize(context)),
                      ]
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                StickyHeader(
                  header: Container(
                    color: context.theme.colorScheme.surface,
                    child: Row(
                      children: [
                        AdvancedIcon(
                          icon: IconlyLight.moreSquare,
                          gradient:
                              context.theme.gradients.primaryGradient.linear,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          context.l10n.exercisesDetails_secondaryMuscles,
                          style: context.theme.textTheme.bodyLarge.bold,
                        ),
                      ],
                    ),
                  ),
                  content: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      for (var muscle in exercise.secondaryMuscles) ...[
                        const SizedBox(height: 8),
                        Text(muscle.localize(context)),
                      ]
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

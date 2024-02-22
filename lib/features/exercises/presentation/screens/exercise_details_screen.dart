import 'package:advanced_icon/advanced_icon.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym/shared/shared.dart';
import 'package:gym/features/exercises/exercises.dart';
import 'package:ionicons/ionicons.dart';
import 'package:riverpod/riverpod.dart';
import 'package:carousel_slider/carousel_slider.dart';

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
          data: (exercises) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  enlargeCenterPage: true,
                  autoPlay: true,
                  autoPlayCurve: Curves.easeOutCubic,
                  viewportFraction: 1,
                  height: MediaQuery.of(context).size.height * 0.26,
                  clipBehavior: Clip.none,
                  aspectRatio: 1 / 2,
                ),
                items: exercise!.images
                    .map(
                      (e) => Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: context.theme.shadows.buttonShadow,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.network(e, fit: BoxFit.cover),
                        ),
                      ),
                    )
                    .toList(),
              ),
              const SizedBox(height: 20),
              Text(
                "${exercise.level.name} | ${exercise.force?.name} | ${exercise.category.name} | ${exercise.mechanic?.name} | ${exercise.equipment?.name} | ${exercise.primaryMuscles.map((e) => e.name).join(", ")} | ${exercise.secondaryMuscles.map((e) => e.name).join(", ")}",
              ),
              const SizedBox(height: 20),
              Text(
                context.l10n.exercisesDetails_instructions,
                style: context.theme.textTheme.titleLarge.bold,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: exercise.instructions.length,
                  itemBuilder: (context, index) => Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "${index + 1}. ",
                          style: context.theme.textTheme.bodyLarge.bold,
                        ),
                        TextSpan(
                          text: exercise.instructions[index],
                          style: context.theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
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
}

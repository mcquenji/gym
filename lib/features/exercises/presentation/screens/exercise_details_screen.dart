import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym/shared/shared.dart';
import 'package:gym/features/exercises/exercises.dart';
import 'package:riverpod/riverpod.dart';

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
            children: [],
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

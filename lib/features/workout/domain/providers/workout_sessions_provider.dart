import 'package:gym/features/workout/workout.dart';
import 'package:riverpod/riverpod.dart';

final workoutSessionsProvider =
    AsyncNotifierProvider<WorkoutsRepository, WorkoutsRepositoryState>(
  () => WorkoutsRepository(),
);

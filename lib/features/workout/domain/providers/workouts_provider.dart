import 'package:gym/features/workout/workout.dart';
import 'package:riverpod/riverpod.dart';

final workoutsProvider =
    AsyncNotifierProvider<WorkoutsRepository, WorkoutsRepositoryState>(
  () => WorkoutsRepository(),
);

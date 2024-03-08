import 'dart:async';

import 'package:gym/features/auth/auth.dart';
import 'package:gym/features/workout/workout.dart';
import 'package:gym/shared/shared.dart';
import 'package:riverpod/riverpod.dart';

class WorkoutsRepository extends AsyncNotifier<WorkoutsRepositoryState> {
  late WorkoutsDataSource workoutsDataSource;
  late User? user;

  @override
  FutureOr<List<Workout>> build() async {
    workoutsDataSource = ref.watch(workoutsDataSourceProvider);
    user = ref.watch(userProvider);

    ref.watch(collection("workouts"));

    if (state is! AsyncData) {
      return workoutsDataSource.getWorkouts();
    }

    workoutsDataSource.getWorkouts().then((value) {
      state = AsyncData(value);
    });

    return state.requireValue;
  }

  /// Creates a new workout with the given [name].
  Future<void> createWorkout(String name) {
    if (user == null) {
      throw Exception('User is not authenticated');
    }

    final workout = Workout(
      id: workoutsDataSource.generateId(),
      creatorId: user!.id,
      name: name,
      exercises: [],
    );

    return workoutsDataSource.write(workout);
  }

  /// Adds an [exercise] to the given [workout].
  Future<void> addExercise(Workout workout, WorkoutExercise exercise) async {
    final updatedWorkout = workout.copyWith(
      exercises: [...workout.exercises, exercise],
    );

    await workoutsDataSource.write(updatedWorkout);
  }

  /// Removes an exercise with the given [exerciseId] from the given [workout].
  Future<void> removeExercise(Workout workout, String exerciseId) async {
    final updatedWorkout = workout.copyWith(
      exercises: workout.exercises
          .where((exercise) => exercise.id != exerciseId)
          .toList(),
    );

    await workoutsDataSource.write(updatedWorkout);
  }

  /// Updates an exercise with the given [exerciseId] in the given [workout] with the [updatedExercise].
  Future<void> updateExercise(
    Workout workout,
    String exerciseId,
    WorkoutExercise updatedExercise,
  ) async {
    final updatedWorkout = workout.copyWith(
      exercises: workout.exercises
          .map((exercise) =>
              exercise.id == exerciseId ? updatedExercise : exercise)
          .toList(),
    );

    await workoutsDataSource.write(updatedWorkout);
  }
}

typedef WorkoutsRepositoryState = List<Workout>;

import 'dart:async';

import 'package:gym/features/auth/auth.dart';
import 'package:gym/features/workout/workout.dart';
import 'package:gym/shared/shared.dart';
import 'package:riverpod/riverpod.dart';

class WorkoutSessionsRepository
    extends AsyncNotifier<WorkoutSessionsRepositoryState> {
  late WorkoutSessionsDataSource workoutSessionsDataSource;
  late User? user;

  @override
  FutureOr<WorkoutSessionsRepositoryState> build() {
    workoutSessionsDataSource = ref.watch(workoutSessionsDataSourceProvider);
    user = ref.watch(userProvider);
    ref.watch(collection("sessions"));

    if (state is! AsyncData) {
      return workoutSessionsDataSource.getWorkoutSessions();
    }

    workoutSessionsDataSource.getWorkoutSessions().then((value) {
      state = AsyncData(value);
    });

    return state.requireValue;
  }

  /// Starts a new workout session for the workout with the given [workoutId].
  Future<void> startWorkout(String workoutId) async {
    if (user == null) {
      throw Exception('User is not authenticated');
    }

    final session = WorkoutSession(
      id: workoutSessionsDataSource.generateId(),
      userId: user!.id,
      workoutId: workoutId,
      startedAtTimestamp: DateTime.now().millisecondsSinceEpoch,
      completedAtTimestamp: null,
    );

    await workoutSessionsDataSource.write(session);
  }

  /// Completes a workout [session].
  Future<void> completeWorkout(WorkoutSession session) async {
    final updatedSession = session.copyWith(
      completedAtTimestamp: DateTime.now().millisecondsSinceEpoch,
    );

    await workoutSessionsDataSource.write(updatedSession);
  }

  /// Hot swaps an [exercise] with the given [id] during a workout [session].
  Future<void> hotSwapExercise(
    WorkoutSession session,
    String id,
    WorkoutExercise exercise,
  ) async {
    final updatedSession = session.copyWith(
      hotSwaps: {
        ...session.hotSwaps,
        id: exercise,
      },
    );

    await workoutSessionsDataSource.write(updatedSession);
  }

  /// Skips the given [exerciseId] during a workout [session].
  Future<void> skipExercise(WorkoutSession session, String exerciseId) async {
    final updatedSession = session.copyWith(
      skippedExercises: [...session.skippedExercises, exerciseId],
    );

    await workoutSessionsDataSource.write(updatedSession);
  }

  /// Records a [set] that was completed during a workout [session].
  Future<void> recordSet(
    WorkoutSession session,
    ExerciseEntry set,
  ) async {
    final updatedSession = session.copyWith(
      completedSets: [
        ...session.completedSets,
        set,
      ],
    );

    await workoutSessionsDataSource.write(updatedSession);
  }
}

typedef WorkoutSessionsRepositoryState = List<WorkoutSession>;

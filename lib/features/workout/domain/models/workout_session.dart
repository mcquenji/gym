import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym/features/workout/workout.dart';

part 'workout_session.freezed.dart';
part 'workout_session.g.dart';

@freezed
class WorkoutSession with _$WorkoutSession {
  const WorkoutSession._();

  factory WorkoutSession({
    /// The id of the workout session.
    required String id,

    /// The id of the workout that the session is based on.
    required String workoutId,

    /// The id of the user who completed the workout.
    required String userId,

    /// The date and time that the workout was completed.
    ///
    /// If this workout has not been completed yet, this value will be null.
    required int? completedAtTimestamp,

    /// The date and time that the workout was started.
    required int startedAtTimestamp,

    /// A list of the sets that were completed during the workout.
    @Default([]) List<ExerciseEntry> completedSets,

    /// A map of the hot swaps that were made during the workout.
    ///
    /// The key is the id of the exercise that was swapped out, and the value is the exercise that was swapped in.
    @Default({}) Map<String, WorkoutExercise> hotSwaps,

    /// A list of the id's of skipped exercises during the workout.
    @Default([]) List<String> skippedExercises,
  }) = _WorkoutSession;

  DateTime get startedAt =>
      DateTime.fromMillisecondsSinceEpoch(startedAtTimestamp);

  DateTime? get completedAt => completedAtTimestamp != null
      ? DateTime.fromMillisecondsSinceEpoch(completedAtTimestamp!)
      : null;

  factory WorkoutSession.fromJson(Map<String, dynamic> json) =>
      _$WorkoutSessionFromJson(json);
}

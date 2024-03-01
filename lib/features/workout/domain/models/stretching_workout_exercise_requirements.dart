import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym/features/workout/workout.dart';

part 'stretching_workout_exercise_requirements.freezed.dart';
part 'stretching_workout_exercise_requirements.g.dart';

@freezed
class StretchingWorkoutExerciseRequirements
    with _$StretchingWorkoutExerciseRequirements
    implements WorkoutExerciseRequirements {
  const StretchingWorkoutExerciseRequirements._();

  factory StretchingWorkoutExerciseRequirements({
    /// The min duration of the stretching exercise in seconds.
    ///
    /// Use [minDuration] to get this value as a [Duration].
    required int minSeconds,

    /// The max duration of the stretching exercise in seconds.
    ///
    /// Use [maxDuration] to get this value as a [Duration].
    required int maxSeconds,
  }) = _StretchingWorkoutExerciseRequirements;

  /// The min duration of the stretching exercise.
  Duration get minDuration => Duration(seconds: minSeconds);

  /// The max duration of the stretching exercise.
  Duration get maxDuration => Duration(seconds: maxSeconds);

  factory StretchingWorkoutExerciseRequirements.fromJson(
          Map<String, dynamic> json) =>
      _$StretchingWorkoutExerciseRequirementsFromJson(json);
}

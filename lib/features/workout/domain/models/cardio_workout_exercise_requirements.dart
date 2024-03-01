import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym/features/workout/workout.dart';

part 'cardio_workout_exercise_requirements.freezed.dart';
part 'cardio_workout_exercise_requirements.g.dart';

@freezed
class CardioWorkoutExerciseRequirements
    with _$CardioWorkoutExerciseRequirements
    implements WorkoutExerciseRequirements {
  const CardioWorkoutExerciseRequirements._();

  factory CardioWorkoutExerciseRequirements({
    /// The min duration of the cardio exercise in seconds.
    ///
    /// Use [minDuration] to get this value as a [Duration].
    required int minSeconds,

    /// The max duration of the cardio exercise in seconds.
    ///
    /// Use [maxDuration] to get this value as a [Duration].
    required int maxSeconds,
  }) = _CardioWorkoutExerciseRequirements;

  /// The min duration of the cardio exercise.
  Duration get minDuration => Duration(seconds: minSeconds);

  /// The max duration of the cardio exercise.
  Duration get maxDuration => Duration(seconds: maxSeconds);

  factory CardioWorkoutExerciseRequirements.fromJson(
          Map<String, dynamic> json) =>
      _$CardioWorkoutExerciseRequirementsFromJson(json);
}

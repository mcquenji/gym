import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym/features/workout/workout.dart';

part 'stretching_workout_exercise_data.freezed.dart';
part 'stretching_workout_exercise_data.g.dart';

@freezed
class StretchingWorkoutExerciseData
    with _$StretchingWorkoutExerciseData
    implements WorkoutExerciseData {
  const StretchingWorkoutExerciseData._();

  factory StretchingWorkoutExerciseData({
    /// The min duration of the stretching exercise in seconds.
    ///
    /// Use [minDuration] to get this value as a [Duration].
    required int minSeconds,

    /// The max duration of the stretching exercise in seconds.
    ///
    /// Use [maxDuration] to get this value as a [Duration].
    required int maxSeconds,
  }) = _StretchingWorkoutExerciseData;

  /// The min duration of the stretching exercise.
  Duration get minDuration => Duration(seconds: minSeconds);

  /// The max duration of the stretching exercise.
  Duration get maxDuration => Duration(seconds: maxSeconds);

  factory StretchingWorkoutExerciseData.fromJson(Map<String, dynamic> json) =>
      _$StretchingWorkoutExerciseDataFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym/features/workout/workout.dart';

part 'cardio_workout_exercise_data.freezed.dart';
part 'cardio_workout_exercise_data.g.dart';

@freezed
class CardioWorkoutExerciseData
    with _$CardioWorkoutExerciseData
    implements WorkoutExerciseData {
  const CardioWorkoutExerciseData._();

  factory CardioWorkoutExerciseData({
    /// The min duration of the cardio exercise in seconds.
    ///
    /// Use [minDuration] to get this value as a [Duration].
    required int minSeconds,

    /// The max duration of the cardio exercise in seconds.
    ///
    /// Use [maxDuration] to get this value as a [Duration].
    required int maxSeconds,
  }) = _CardioWorkoutExerciseData;

  /// The min duration of the cardio exercise.
  Duration get minDuration => Duration(seconds: minSeconds);

  /// The max duration of the cardio exercise.
  Duration get maxDuration => Duration(seconds: maxSeconds);

  factory CardioWorkoutExerciseData.fromJson(Map<String, dynamic> json) =>
      _$CardioWorkoutExerciseDataFromJson(json);
}

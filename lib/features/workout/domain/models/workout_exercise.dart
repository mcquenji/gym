import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_exercise.freezed.dart';
part 'workout_exercise.g.dart';

@freezed
class WorkoutExercise with _$WorkoutExercise {
  factory WorkoutExercise({
    /// The id of the underlying exercise
    required String id,

    /// The number of sets
    required int sets,

    /// The maximum number of reps per set
    required int maxReps,

    /// The minimum number of reps per set
    required int minReps,
  }) = _WorkoutExercise;

  factory WorkoutExercise.fromJson(Map<String, dynamic> json) =>
      _$WorkoutExerciseFromJson(json);
}

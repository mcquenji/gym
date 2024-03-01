import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym/features/workout/workout.dart';

part 'weight_lifting_workout_exercise_data.freezed.dart';
part 'weight_lifting_workout_exercise_data.g.dart';

@freezed
class WeightLiftingWorkoutExerciseData
    with _$WeightLiftingWorkoutExerciseData
    implements WorkoutExerciseData {
  factory WeightLiftingWorkoutExerciseData({
    /// The number of sets
    required int sets,

    /// The maximum number of reps per set
    required int maxReps,

    /// The minimum number of reps per set
    required int minReps,
  }) = _WeightLiftingWorkoutExerciseData;

  factory WeightLiftingWorkoutExerciseData.fromJson(
          Map<String, dynamic> json) =>
      _$WeightLiftingWorkoutExerciseDataFromJson(json);
}

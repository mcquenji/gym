import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym/features/workout/workout.dart';

part 'weight_lifting_workout_exercise_requirements.freezed.dart';
part 'weight_lifting_workout_exercise_requirements.g.dart';

@freezed
class WeightLiftingWorkoutExerciseRequirements
    with _$WeightLiftingWorkoutExerciseRequirements
    implements WorkoutExerciseRequirements {
  factory WeightLiftingWorkoutExerciseRequirements({
    /// The number of sets
    required int sets,

    /// The maximum number of reps per set
    required int maxReps,

    /// The minimum number of reps per set
    required int minReps,
  }) = _WeightLiftingWorkoutExerciseRequirements;

  factory WeightLiftingWorkoutExerciseRequirements.fromJson(
          Map<String, dynamic> json) =>
      _$WeightLiftingWorkoutExerciseRequirementsFromJson(json);
}

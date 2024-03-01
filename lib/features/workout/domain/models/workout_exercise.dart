import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym/features/workout/workout.dart';

part 'workout_exercise.freezed.dart';
part 'workout_exercise.g.dart';

/// An exercise a user has to complete as part of a workout.
///
/// Each [WorkoutExercise] contains additional data specifying requirements that must be met to complete the exercise.
/// These requirements vary based on the type of the exercise.
@freezed
class WorkoutExercise with _$WorkoutExercise {
  const WorkoutExercise._();

  factory WorkoutExercise({
    /// The id of the underlying exercise
    required String id,

    /// The requirements that must be met to complete the exercise.
    ///
    /// The type of the requirements is determined by the [type] field.
    ///
    /// Based on the value of [type], you can cast the requirements to the appropriate type:
    /// - [cardioRequirements] if [type] is [ExerciseDataType.cardio]
    /// - [stretchingRequirements] if [type] is [ExerciseDataType.stretching]
    /// - [weightLiftingRequirements] if [type] is [ExerciseDataType.weightLifting]
    required Map<String, dynamic> requirements,

    /// The type of the [data] the exercise contains.
    required ExerciseDataType type,
  }) = _WorkoutExercise;

  /// The [requirements] of the exercise as a [CardioWorkoutExerciseRequirements].
  CardioWorkoutExerciseRequirements get cardioRequirements =>
      CardioWorkoutExerciseRequirements.fromJson(requirements);

  /// The [requirements] of the exercise as a [StretchingWorkoutExerciseRequirements].
  StretchingWorkoutExerciseRequirements get stretchingRequirements =>
      StretchingWorkoutExerciseRequirements.fromJson(requirements);

  /// The [requirements] of the exercise as a [WeightLiftingWorkoutExerciseRequirements].
  WeightLiftingWorkoutExerciseRequirements get weightLiftingRequirements =>
      WeightLiftingWorkoutExerciseRequirements.fromJson(requirements);

  factory WorkoutExercise.fromJson(Map<String, dynamic> json) =>
      _$WorkoutExerciseFromJson(json);
}

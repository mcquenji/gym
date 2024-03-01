import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym/features/workout/workout.dart';

part 'workout_exercise.freezed.dart';
part 'workout_exercise.g.dart';

@freezed
class WorkoutExercise with _$WorkoutExercise {
  const WorkoutExercise._();

  factory WorkoutExercise({
    /// The id of the underlying exercise
    required String id,

    /// The data of the exercise.
    ///
    /// The type of the data is determined by the [type] field.
    ///
    /// Based on the value of [type], you can cast the data to the appropriate type:
    /// - [cardioData] if [type] is [ExerciseDataType.cardio]
    /// - [stretchingData] if [type] is [ExerciseDataType.stretching]
    /// - [weightLiftingData] if [type] is [ExerciseDataType.weightLifting]
    required Map<String, dynamic> data,

    /// The type of the [data] the exercise contains.
    required ExerciseDataType type,
  }) = _WorkoutExercise;

  /// The [data] of the exercise as a [CardioWorkoutExerciseData].
  CardioWorkoutExerciseData get cardioData =>
      CardioWorkoutExerciseData.fromJson(data);

  /// The [data] of the exercise as a [StretchingWorkoutExerciseData].
  StretchingWorkoutExerciseData get stretchingData =>
      StretchingWorkoutExerciseData.fromJson(data);

  /// The [data] of the exercise as a [WeightLiftingWorkoutExerciseData].
  WeightLiftingWorkoutExerciseData get weightLiftingData =>
      WeightLiftingWorkoutExerciseData.fromJson(data);

  factory WorkoutExercise.fromJson(Map<String, dynamic> json) =>
      _$WorkoutExerciseFromJson(json);
}

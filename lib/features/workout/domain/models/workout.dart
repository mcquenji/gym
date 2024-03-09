import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym/features/workout/workout.dart';
import 'package:gym/features/exercises/exercises.dart';

part 'workout.freezed.dart';
part 'workout.g.dart';

@freezed
class Workout with _$Workout {
  factory Workout({
    /// The id of the workout.
    required String id,

    /// The name of the workout.
    required String name,

    /// The id of the user who created the workout.
    required String creatorId,

    /// The exercises that make up the workout.
    required List<WorkoutExercise> exercises,

    /// The category that the workout falls under.
    ///
    /// This is calculated based on the predominant category of the exercises in the workout.
    ///
    /// If the workout has no exercises, this value will be default to [ExerciseCategory.strength].
    required ExerciseCategory predominantCategory,
  }) = _Workout;

  factory Workout.fromJson(Map<String, dynamic> json) =>
      _$WorkoutFromJson(json);
}

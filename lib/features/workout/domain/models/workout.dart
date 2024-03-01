import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym/features/workout/workout.dart';

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
  }) = _Workout;

  factory Workout.fromJson(Map<String, dynamic> json) =>
      _$WorkoutFromJson(json);
}

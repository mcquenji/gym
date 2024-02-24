import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_set.freezed.dart';
part 'workout_set.g.dart';

/// A recorded set of a workout exercise a user has completed
@freezed
class WorkoutSet with _$WorkoutSet {
  factory WorkoutSet({
    /// The id of the workout set
    required String id,

    /// The id of the workout the set is associated with
    required String workoutId,

    /// The id of the workout exercise the set is associated with
    required String exerciseId,

    /// The number of sets completed
    required int sets,

    /// The number of reps completed
    required int reps,

    /// The weight lifted
    required int weight,
  }) = _WorkoutSet;

  factory WorkoutSet.fromJson(Map<String, dynamic> json) =>
      _$WorkoutSetFromJson(json);
}

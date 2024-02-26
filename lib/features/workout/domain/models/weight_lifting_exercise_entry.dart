import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym/features/workout/workout.dart';

part 'weight_lifting_exercise_entry.freezed.dart';
part 'weight_lifting_exercise_entry.g.dart';

/// A recorded set of a workout exercise (where weights are being lifted) a user has completed.
@freezed
class WeightLiftingExerciseEntry
    with _$WeightLiftingExerciseEntry
    implements ExerciseEntry {
  factory WeightLiftingExerciseEntry({
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

  factory WeightLiftingExerciseEntry.fromJson(Map<String, dynamic> json) =>
      _$WeightLiftingExerciseEntryFromJson(json);
}

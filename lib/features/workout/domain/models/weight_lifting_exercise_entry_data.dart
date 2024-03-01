import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym/features/workout/workout.dart';

part 'weight_lifting_exercise_entry_data.freezed.dart';
part 'weight_lifting_exercise_entry_data.g.dart';

/// A recorded set of a workout exercise (where weights are being lifted) a user has completed.
@freezed
class WeightLiftingExerciseEntryData
    with _$WeightLiftingExerciseEntryData
    implements ExerciseEntryData {
  factory WeightLiftingExerciseEntryData({
    /// The number of sets completed
    required int sets,

    /// The number of reps completed
    required int reps,

    /// The weight lifted
    required int weight,
  }) = _WorkoutSet;

  factory WeightLiftingExerciseEntryData.fromJson(Map<String, dynamic> json) =>
      _$WeightLiftingExerciseEntryDataFromJson(json);
}

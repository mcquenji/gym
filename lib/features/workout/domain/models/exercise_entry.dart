import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym/features/workout/workout.dart';

part 'exercise_entry.freezed.dart';
part 'exercise_entry.g.dart';

/// A recorded entry of a workout exercise a user has completed.
@freezed
class ExerciseEntry with _$ExerciseEntry {
  const ExerciseEntry._();

  factory ExerciseEntry({
    // The id of the entry
    required String id,

    /// The id of the workout the entry is associated with
    required String workoutId,

    /// The id of the workout exercise the entry is associated with
    required String exerciseId,

    /// The timestamp of when the entry was created (in milliseconds since epoch).
    ///
    /// Use [recordedAt] to get the [DateTime] representation of this value.
    required int timestamp,

    /// The data of the entry
    ///
    /// The type of the data is determined by the [type] field.
    ///
    /// Based on the value of [type], you can cast the data to the appropriate type:
    /// - Use [dataAsCardioExerciseEntry] to get the data as a [CardioExerciseEntryData].
    /// - Use [dataAsStretchingExerciseEntry] to get the data as a [StretchingExerciseEntryData].
    /// - Use [dataAsWeightLiftingExerciseEntry] to get the data as a [WeightLiftingExerciseEntryData].
    required Map<String, dynamic> data,

    /// The type of the [data] the entry contains.
    required ExerciseEntryDataType type,
  }) = _ExerciseEntry;

  CardioExerciseEntryData get dataAsCardioExerciseEntry =>
      CardioExerciseEntryData.fromJson(data);

  StretchingExerciseEntryData get dataAsStretchingExerciseEntry =>
      StretchingExerciseEntryData.fromJson(data);

  WeightLiftingExerciseEntryData get dataAsWeightLiftingExerciseEntry =>
      WeightLiftingExerciseEntryData.fromJson(data);

  factory ExerciseEntry.fromJson(Map<String, dynamic> json) =>
      _$ExerciseEntryFromJson(json);
}

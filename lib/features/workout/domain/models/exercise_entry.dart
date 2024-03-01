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
    /// - [cardioData] if [type] is [ExerciseDataType.cardio]
    /// - [stretchingData] if [type] is [ExerciseDataType.stretching]
    /// - [weightLiftingData] if [type] is [ExerciseDataType.weightLifting]
    required Map<String, dynamic> data,

    /// The type of the [data] the entry contains.
    required ExerciseDataType type,
  }) = _ExerciseEntry;

  /// The [data] of the entry as a [CardioExerciseEntryData].
  CardioExerciseEntryData get cardioData =>
      CardioExerciseEntryData.fromJson(data);

  /// The [data] of the entry as a [StretchingExerciseEntryData].
  StretchingExerciseEntryData get stretchingData =>
      StretchingExerciseEntryData.fromJson(data);

  /// The [data] of the entry as a [WeightLiftingExerciseEntryData].
  WeightLiftingExerciseEntryData get weightLiftingData =>
      WeightLiftingExerciseEntryData.fromJson(data);

  factory ExerciseEntry.fromJson(Map<String, dynamic> json) =>
      _$ExerciseEntryFromJson(json);
}

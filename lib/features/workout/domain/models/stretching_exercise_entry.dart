import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym/features/workout/domain/models/exercise_entry.dart';

part 'stretching_exercise_entry.freezed.dart';
part 'stretching_exercise_entry.g.dart';

@freezed
class StretchingExerciseEntry
    with _$StretchingExerciseEntry
    implements ExerciseEntry {
  factory StretchingExerciseEntry({
// The id of the workout set
    required String id,

    /// The id of the workout the set is associated with
    required String workoutId,

    /// The id of the workout exercise the set is associated with
    required String exerciseId,

    /// The duration of the stretching exercise in seconds
    required int duration,

    /// The number of repetitions
    required int repetitions,
  }) = _StretchingExerciseEntry;

  factory StretchingExerciseEntry.fromJson(Map<String, dynamic> json) =>
      _$StretchingExerciseEntryFromJson(json);
}

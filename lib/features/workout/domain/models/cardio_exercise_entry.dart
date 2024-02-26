import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym/features/workout/workout.dart';

part 'cardio_exercise_entry.freezed.dart';
part 'cardio_exercise_entry.g.dart';

@freezed
class CardioExerciseEntry with _$CardioExerciseEntry implements ExerciseEntry {
  factory CardioExerciseEntry({
    // The id of the workout set
    required String id,

    /// The id of the workout the set is associated with
    required String workoutId,

    /// The id of the workout exercise the set is associated with
    required String exerciseId,

    /// The duration of the cardio exercise in seconds
    required int duration,

    /// The distance of the cardio exercise in meters
    required int distance,
  }) = _CardioExerciseEntry;

  factory CardioExerciseEntry.fromJson(Map<String, dynamic> json) =>
      _$CardioExerciseEntryFromJson(json);
}

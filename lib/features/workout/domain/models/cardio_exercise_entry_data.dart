import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym/features/workout/workout.dart';

part 'cardio_exercise_entry_data.freezed.dart';
part 'cardio_exercise_entry_data.g.dart';

@freezed
class CardioExerciseEntryData
    with _$CardioExerciseEntryData
    implements ExerciseEntryData {
  const CardioExerciseEntryData._();

  factory CardioExerciseEntryData({
    /// The duration of the cardio exercise in seconds.
    /// This is the total time spent doing the exercise.
    ///
    /// Use [duration] to get this value as a [Duration].
    required int seconds,

    /// The distance of the cardio exercise in meters.
    required int distance,
  }) = _CardioExerciseEntryData;

  /// The duration of the cardio exercise.
  ///
  /// This is the total time spent doing the exercise.
  Duration get duration => Duration(seconds: seconds);

  factory CardioExerciseEntryData.fromJson(Map<String, dynamic> json) =>
      _$CardioExerciseEntryDataFromJson(json);
}

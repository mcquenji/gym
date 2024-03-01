import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym/features/workout/workout.dart';

part 'cardio_exercise_entry_data.freezed.dart';
part 'cardio_exercise_entry_data.g.dart';

@freezed
class CardioExerciseEntryData
    with _$CardioExerciseEntryData
    implements ExerciseEntryData {
  factory CardioExerciseEntryData({
    /// The duration of the cardio exercise in seconds
    required int duration,

    /// The distance of the cardio exercise in meters
    required int distance,
  }) = _CardioExerciseEntryData;

  factory CardioExerciseEntryData.fromJson(Map<String, dynamic> json) =>
      _$CardioExerciseEntryDataFromJson(json);
}

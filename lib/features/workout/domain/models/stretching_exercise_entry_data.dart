import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym/features/workout/domain/models/exercise_entry_data.dart';

part 'stretching_exercise_entry_data.freezed.dart';
part 'stretching_exercise_entry_data.g.dart';

@freezed
class StretchingExerciseEntryData
    with _$StretchingExerciseEntryData
    implements ExerciseEntryData {
  factory StretchingExerciseEntryData({
    /// The duration of the stretching exercise in seconds
    required int duration,

    /// The number of repetitions
    required int repetitions,
  }) = _StretchingExerciseEntryData;

  factory StretchingExerciseEntryData.fromJson(Map<String, dynamic> json) =>
      _$StretchingExerciseEntryDataFromJson(json);
}

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gym/features/workout/domain/models/exercise_entry_data.dart';

part 'stretching_exercise_entry_data.freezed.dart';
part 'stretching_exercise_entry_data.g.dart';

@freezed
class StretchingExerciseEntryData
    with _$StretchingExerciseEntryData
    implements ExerciseEntryData {
  const StretchingExerciseEntryData._();

  factory StretchingExerciseEntryData({
    /// The duration of the stretching exercise in seconds.
    ///
    /// Use [duration] to get this value as a [Duration].
    required int seconds,
  }) = _StretchingExerciseEntryData;

  /// The duration of the stretching exercise.
  Duration get duration => Duration(seconds: seconds);

  factory StretchingExerciseEntryData.fromJson(Map<String, dynamic> json) =>
      _$StretchingExerciseEntryDataFromJson(json);
}

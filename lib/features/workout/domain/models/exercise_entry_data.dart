import 'package:gym/features/workout/workout.dart';

/// Additional data for a recorded exercise entry.
///
/// See [ExerciseEntry] for more information.
abstract class ExerciseEntryData {
  Map<String, dynamic> toJson();
}

enum ExerciseDataType {
  weightLifting,
  stretching,
  cardio,
}

abstract class ExerciseEntryData {
  Map<String, dynamic> toJson();
}

enum ExerciseEntryDataType {
  weightLifting,
  stretching,
  cardio,
}

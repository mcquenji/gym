import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise.freezed.dart';
part 'exercise.g.dart';

@freezed
class Exercise with _$Exercise {
  factory Exercise({
    required String id,
    required String name,
    required String description,
    @Default({}) Set<MuscleGroup> primaryMuscleGroups,
    @Default({}) Set<MuscleGroup> secondaryMuscleGroups,
    @Default(ExerciseLevel.nil) ExerciseLevel level,
    @Default(ExerciseEquipment.nil) ExerciseEquipment equipment,
    @Default(ExerciseForce.nil) ExerciseForce force,
    @Default(ExerciseCategory.nil) ExerciseCategory category,
    @Default(ExerciseMechanic.nil) ExerciseMechanic mechanics,
  }) = _Exercise;

  factory Exercise.fromJson(Map<String, dynamic> json) =>
      _$ExerciseFromJson(json);
}

enum MuscleGroup {
  abdominals,
  middleBack,
  adductors,
  biceps,
  quadriceps,
  lowerBack,
  lats,
  hamstrings,
  chest,
  neck,
  abductors,
  glutes,
  calves,
  triceps,
  traps,
  shoulders,
  forearms,
}

enum ExerciseLevel {
  beginner,
  intermediate,
  expert,
  nil,
}

enum ExerciseEquipment {
  cable,
  bands,
  exerciseBall,
  machine,
  dumbbell,
  eZCurlBar,
  other,
  barbell,
  bodyOnly,
  foamRoll,
  medicineBall,
  kettlebells,
  nil,
}

enum ExerciseForce {
  static,
  push,
  pull,
  nil,
}

enum ExerciseCategory {
  stretching,
  powerlifting,
  strongman,
  cardio,
  olympicWeightlifting,
  plyometrics,
  strength,
  nil,
}

enum ExerciseMechanic {
  compound,
  isolation,
  nil,
}

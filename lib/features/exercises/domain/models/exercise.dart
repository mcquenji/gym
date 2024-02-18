import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise.freezed.dart';
part 'exercise.g.dart';

@freezed
class Exercise with _$Exercise {
  factory Exercise({
    /// A string identifier unique to each exercise instance, required for database management and retrieval.
    required String id,

    /// The name of the exercise, providing a quick reference to the type of activity.
    required String name,

    /// Detailed information about how to perform the exercise, its benefits, and any necessary precautions.
    required String description,

    /// The level of difficulty of the exercise, helping users identify if it's suitable for their fitness level.
    required ExerciseLevel level,

    /// A categorization of the exercise which helps in organizing exercises by their nature or the goals they help achieve.
    required ExerciseCategory category,

    /// A set of the primary muscle groups that the exercise primarily targets, with a default of an empty set.
    @Default({}) Set<MuscleGroup> primaryMuscleGroups,

    /// A set of secondary muscle groups that the exercise also engages, supplementing the primary targets, with a default of an empty set.
    @Default({}) Set<MuscleGroup> secondaryMuscleGroups,

    /// Optional. Specifies the equipment required to perform the exercise, if any.
    ExerciseEquipment? equipment,

    /// Optional. Specifies the type of force (e.g., push, pull) involved in the exercise.
    ExerciseForce? force,

    /// Optional. Describes whether the exercise is compound (involving more than one joint and muscle group) or isolation (targeting a specific muscle group with minimal involvement from others).
    ExerciseMechanic? mechanic,
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
}

enum ExerciseForce {
  static,
  push,
  pull,
}

enum ExerciseCategory {
  stretching,
  powerlifting,
  strongman,
  cardio,
  olympicWeightlifting,
  plyometrics,
  strength,
}

enum ExerciseMechanic {
  compound,
  isolation,
}

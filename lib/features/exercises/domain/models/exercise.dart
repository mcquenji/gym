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

    /// A list of image URLs that provide visual references for the exercise.
    required List<String> images,

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

/// Enum representing different muscle groups targeted by exercises.
///
/// Each value represents a specific muscle group that can be focused on during workout routines.
enum MuscleGroup {
  /// The muscle group in the abdomen area.
  abdominals,

  /// The muscle group in the middle back area.
  middleBack,

  /// The muscle group of the inner thigh.
  adductors,

  /// The muscle group in the upper arm, front side.
  biceps,

  /// The muscle group in the front of the thigh.
  quadriceps,

  /// The muscle group in the lower back area.
  lowerBack,

  /// The muscle group in the back that extends from the lower half of the ribs to the spine.
  lats,

  /// The muscle group in the back of the thigh.
  hamstrings,

  /// The muscle group in the chest area.
  chest,

  /// The muscle group in the neck area.
  neck,

  /// The muscle group of the outer thigh.
  abductors,

  /// The muscle group in the buttocks.
  glutes,

  /// The muscle group in the back of the lower leg.
  calves,

  /// The muscle group in the upper arm, back side.
  triceps,

  /// The muscle group in the upper back, near the neck.
  traps,

  /// The muscle group in the shoulder area.
  shoulders,

  /// The muscle group in the lower part of the arm.
  forearms,
}

/// Enum representing the level of difficulty of an exercise.
enum ExerciseLevel {
  /// Suitable for individuals just starting their fitness journey.
  beginner,

  /// For individuals with some experience in fitness routines.
  intermediate,

  /// For individuals with advanced fitness training and skills.
  expert,
}

/// Enum representing different types of equipment that can be used in exercises.
enum ExerciseEquipment {
  /// Exercises that use a cable machine.
  cable,

  /// Exercises that use resistance bands.
  bands,

  /// Exercises that use an exercise ball.
  exerciseBall,

  /// Exercises that require a specific machine.
  machine,

  /// Exercises that use dumbbells.
  dumbbell,

  /// Exercises that use an EZ curl bar.
  eZCurlBar,

  /// Exercises that do not fit into the other categories.
  other,

  /// Exercises that use a barbell.
  barbell,

  /// Exercises that can be performed with body weight only.
  bodyOnly,

  /// Exercises that use a foam roller.
  foamRoll,

  /// Exercises that use a medicine ball.
  medicineBall,

  /// Exercises that use kettlebells.
  kettlebells,
}

/// Enum representing the type of force an exercise requires.
enum ExerciseForce {
  /// Exercises where the muscle tension is constant without visible movement.
  static,

  /// Exercises that involve a pushing motion.
  push,

  /// Exercises that involve a pulling motion.
  pull,
}

/// Enum representing different categories of exercises.
enum ExerciseCategory {
  /// Exercises focused on stretching and flexibility.
  stretching,

  /// Exercises associated with powerlifting.
  powerlifting,

  /// Exercises common in strongman competitions.
  strongman,

  /// Exercises that primarily focus on cardiovascular fitness.
  cardio,

  /// Exercises associated with Olympic weightlifting.
  olympicWeightlifting,

  /// Exercises that involve jump training or plyometrics.
  plyometrics,

  /// Exercises focused on building strength.
  strength,
}

/// Enum representing the mechanical nature of an exercise.
enum ExerciseMechanic {
  /// Exercises that work multiple muscle groups at once.
  compound,

  /// Exercises that target a single muscle group.
  isolation,
}

import 'package:list_ext/list_ext.dart';
import 'package:riverpod/riverpod.dart';
import 'package:gym/features/exercises/exercises.dart';

final exercisesProvider = FutureProvider<List<Exercise>>(
  (ref) async {
    final exercisesDataSource = ref.watch(exercisesDataSourceProvider);

    return exercisesDataSource.getExercises();
  },
);

extension ExercisesExt on List<Exercise> {
  Exercise byId(String id) {
    return firstWhere((e) => e.id == id);
  }

  Exercise? byIdOrNull(String id) {
    return firstWhereOrNull((e) => e.id == id);
  }

  List<Exercise> filterBy({
    MuscleGroup? primaryMuscle,
    Set<MuscleGroup>? primaryMuscles,
    MuscleGroup? secondaryMuscle,
    Set<MuscleGroup>? secondaryMuscles,
    ExerciseCategory? category,
    ExerciseMechanic? mechanic,
    ExerciseForce? force,
    ExerciseEquipment? equipment,
    ExerciseLevel? level,
    String? name,
  }) {
    return where((e) {
      if (primaryMuscle != null && !e.primaryMuscles.contains(primaryMuscle)) {
        return false;
      }

      if (primaryMuscles != null &&
          !e.primaryMuscles.containsAll(primaryMuscles)) {
        return false;
      }
      if (secondaryMuscle != null &&
          !e.secondaryMuscles.contains(secondaryMuscle)) {
        return false;
      }

      if (secondaryMuscles != null &&
          !e.secondaryMuscles.containsAll(secondaryMuscles)) {
        return false;
      }

      if (category != null && e.category != category) {
        return false;
      }

      if (mechanic != null && e.mechanic != mechanic) {
        return false;
      }

      if (force != null && e.force != force) {
        return false;
      }

      if (equipment != null && e.equipment != equipment) {
        return false;
      }

      if (level != null && e.level != level) {
        return false;
      }

      if (name != null && !e.name.toLowerCase().contains(name.toLowerCase())) {
        return false;
      }

      return true;
    }).toList();
  }
}

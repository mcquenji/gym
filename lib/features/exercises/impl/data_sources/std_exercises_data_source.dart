import 'package:gym/features/exercises/exercises.dart';

class StdExercisesDataSource extends ExercisesDataSource {
  final ExercisesIndexService exercisesIndexService;

  StdExercisesDataSource(this.exercisesIndexService);

  @override
  Future<List<Exercise>> getExercises() async {
    log('Fetching exercises list');

    var exercisesIndex = await exercisesIndexService.getExercises();

    var exercises = <Exercise>[];

    for (var exercise in exercisesIndex) {
      exercise['images'] = await exercisesIndexService.getExerciseImages(
        exercise['id'],
      );

      exercises.add(Exercise.fromJson(exercise));
    }

    log('Got ${exercises.length} exercises');

    return exercises;
  }
}

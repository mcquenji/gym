import 'package:gym/shared/shared.dart';
import 'package:gym/features/exercises/exercises.dart';

abstract class ExercisesDataSource extends DataSource {
  ExercisesDataSource() : super('Exercises');

  Future<List<Exercise>> getExercises();
}

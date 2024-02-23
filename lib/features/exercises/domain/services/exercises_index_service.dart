import 'package:gym/shared/shared.dart';

/// A service that provides a list of exercises and their respective example images.
abstract class ExercisesIndexService extends Service {
  ExercisesIndexService() : super('ExercisesIndex');

  /// Returns a list of all exercises available in the database.
  Future<List<Map<String, dynamic>>> getExercises();

  /// Returns a list of image urls for a specific exercise with the given [exerciseId].
  Future<List<String>> getExerciseImages(String exerciseId);
}

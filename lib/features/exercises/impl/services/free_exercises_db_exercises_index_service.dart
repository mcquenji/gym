import 'dart:convert';

import 'package:gym/shared/shared.dart';
import 'package:gym/features/exercises/exercises.dart';

/// Implements [ExercisesIndexService] using the [free-exercise-db](https://github.com/yuhonas/free-exercise-db) repository
class FreeExercisesDbExercisesIndexService extends ExercisesIndexService {
  /// The owner of the repository.
  static const repoOwner = 'yuhonas';

  /// The name of the repository.
  static const repoName = 'free-exercise-db';

  final NetworkService networkService;

  FreeExercisesDbExercisesIndexService(this.networkService) : super();

  @override
  Future<List<String>> getExerciseImages(String exerciseId) async {
    if (_cachedExercises == null) {
      await getExercises();
    }

    final exercise = _cachedExercises!.firstWhere(
      (element) => element['id'] == exerciseId,
      orElse: () {
        log("Exercise with id '$exerciseId' not found");

        throw Exception('Exercise not found');
      },
    );

    List<String> images = [];

    for (var image in exercise["images"]) {
      images.add(
        "https://raw.githubusercontent.com/$repoOwner/$repoName/main/exercises/$image",
      );
    }

    return images;
  }

  @override
  Future<List<Map<String, dynamic>>> getExercises() async {
    log('Fetching exercises from $repoOwner/$repoName repository');

    if (_cachedExercises != null) {
      log('Returning cached exercises');

      return _cachedExercises!;
    }

    log("No cached exercises found, fetching from the repository");

    final response = await networkService.get<String>(
      'https://raw.githubusercontent.com/$repoOwner/$repoName/main/dist/exercises.json',
    );

    if (response.isNotOk) {
      log('Failed to fetch exercises');

      throw Exception('Failed to fetch exercises');
    }

    var json = jsonDecode(response.body!) as List<dynamic>;

    _cachedExercises = json.map((e) => e as Map<String, dynamic>).toList();

    log('Fetched ${_cachedExercises!.length} exercises from the repository');

    return _cachedExercises!;
  }

  List<Map<String, dynamic>>? _cachedExercises;
}

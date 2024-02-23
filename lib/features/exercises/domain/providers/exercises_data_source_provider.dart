import 'package:riverpod/riverpod.dart';
import 'package:gym/features/exercises/exercises.dart';
import 'package:gym/features/exercises/impl/impl.dart';

final exercisesDataSourceProvider = Provider<ExercisesDataSource>(
  (ref) {
    final exercisesIndexService = ref.watch(exercisesIndexServiceProvider);

    return StdExercisesDataSource(exercisesIndexService);
  },
);

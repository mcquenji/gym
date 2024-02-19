import 'package:riverpod/riverpod.dart';
import 'package:gym/features/exercises/exercises.dart';

final exercisesProvider = FutureProvider<List<Exercise>>(
  (ref) async {
    final exercisesDataSource = ref.watch(exercisesDataSourceProvider);

    return exercisesDataSource.getExercises();
  },
);

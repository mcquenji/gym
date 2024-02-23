import 'package:riverpod/riverpod.dart';
import 'package:gym/features/exercises/exercises.dart';
import 'package:gym/shared/shared.dart';
import 'package:gym/features/exercises/impl/impl.dart';

final exercisesIndexServiceProvider = Provider<ExercisesIndexService>(
  (ref) {
    final networkService = ref.watch(networkServiceProvider);

    return FreeExercisesDbExercisesIndexService(networkService);
  },
);

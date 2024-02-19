import 'package:list_ext/list_ext.dart';
import 'package:riverpod/riverpod.dart';
import 'package:gym/features/exercises/exercises.dart';

final exerciseProvider = FutureProvider.family<Exercise?, String>(
  (ref, id) async {
    final exercises = await ref.watch(exercisesProvider.future);

    return exercises.firstWhereOrNull((e) => e.id == id);
  },
);

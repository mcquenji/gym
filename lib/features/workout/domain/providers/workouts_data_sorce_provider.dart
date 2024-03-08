import 'package:gym/features/workout/workout.dart';
import 'package:gym/features/workout/impl/impl.dart';
import 'package:riverpod/riverpod.dart';

final workoutsDataSourceProvider = Provider<WorkoutsDataSource>(
  (ref) => const StdWorkoutsDataSource("workouts"),
);

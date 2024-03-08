import 'package:gym/features/auth/auth.dart';
import 'package:gym/features/workout/workout.dart';
import 'package:gym/features/workout/impl/impl.dart';
import 'package:riverpod/riverpod.dart';

final workoutSessionsDataSourceProvider = Provider<WorkoutSessionsDataSource>(
  (ref) {
    final authService = ref.watch(authServiceProvider);

    return StdWorkoutSessionsDataSource("sessions", authService);
  },
);

import 'package:gym/features/auth/auth.dart';
import 'package:gym/features/profile/profile.dart';
import 'package:gym/features/workout/workout.dart';
import 'package:gym/features/workout/impl/impl.dart';
import 'package:riverpod/riverpod.dart';

final userWorkoutsDataSourceProvider = Provider<UserWorkoutsDataSource>(
  (ref) {
    final authService = ref.read(authServiceProvider);
    final userDataService = ref.read(userDataServiceProvider);

    return StdUserWorkoutsDataSource("workouts", authService, userDataService);
  },
);

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gym/features/auth/auth.dart';
import 'package:gym/features/workout/workout.dart';

class StdUserWorkoutsDataSource extends UserWorkoutsDataSource {
  final String collection;
  final AuthService authService;

  StdUserWorkoutsDataSource(this.collection, this.authService);

  static const field = 'workouts';

  @override
  Future<List<String>> getUserWorkouts() async {
    log('Getting user workouts');

    if (!authService.isAuthenticated) {
      log('User not authenticated. Aborting.');

      throw Exception('User not authenticated');
    }

    try {
      final workouts = await FirebaseFirestore.instance
          .collection(collection)
          .doc(authService.getCurrentUserId())
          .get();

      if (!workouts.exists) {
        log('No workouts found for user. Aborting.');

        return [];
      }

      return List<String>.from(workouts[field]);
    } catch (e, s) {
      log('Failed to get user workouts', e, s);
      return [];
    }
  }

  @override
  Future<void> writeUserWorkouts(List<String> workouts) async {
    log('Writing user workouts');

    if (!authService.isAuthenticated) {
      log('User not authenticated. Aborting.');

      throw Exception('User not authenticated');
    }

    try {
      await FirebaseFirestore.instance
          .collection(collection)
          .doc(authService.getCurrentUserId())
          .set({field: workouts});

      log("Successfully wrote ${workouts.length} user workouts");
    } catch (e, s) {
      log("Failed to write user workouts", e, s);
    }
  }
}

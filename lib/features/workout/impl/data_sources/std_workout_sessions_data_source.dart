import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gym/features/auth/auth.dart';
import 'package:gym/features/workout/workout.dart';

class StdWorkoutSessionsDataSource extends WorkoutSessionsDataSource {
  final String collection;
  final AuthService authService;

  const StdWorkoutSessionsDataSource(this.collection, this.authService);

  @override
  Future<void> deleteWorkoutSession(String workoutSessionId) async {
    log('Deleting workout session with id: $workoutSessionId');

    try {
      await FirebaseFirestore.instance
          .collection(collection)
          .doc(workoutSessionId)
          .delete();

      log('Deleted workout session with id: $workoutSessionId');
    } catch (e, s) {
      log('Failed to delete workout session with id: $workoutSessionId', e, s);
      rethrow;
    }
  }

  @override
  Future<List<WorkoutSession>> getWorkoutSessions() async {
    log('Retrieving workout sessions');

    final userId = authService.getCurrentUserId();

    if (userId == null) {
      log('User is not authenticated. Aborting.');

      throw Exception('User is not authenticated');
    }

    try {
      final querySnapshot = await FirebaseFirestore.instance
          .collection(collection)
          .where('userId', isEqualTo: userId)
          .get();

      final workoutSessions = querySnapshot.docs
          .map((doc) => WorkoutSession.fromJson(doc.data()))
          .toList();

      log('Retrieved ${workoutSessions.length} workout sessions');

      return workoutSessions;
    } catch (e, s) {
      log('Failed to retrieve workout sessions', e, s);
      rethrow;
    }
  }

  @override
  Future<void> write(WorkoutSession workoutSession) async {
    log('Writing workout session: $workoutSession');

    try {
      await FirebaseFirestore.instance
          .collection(collection)
          .doc(workoutSession.id)
          .set(
            workoutSession.toJson(),
          );

      log('Wrote workout session: $workoutSession');
    } catch (e, s) {
      log('Failed to write workout session: $workoutSession', e, s);
      rethrow;
    }
  }
}

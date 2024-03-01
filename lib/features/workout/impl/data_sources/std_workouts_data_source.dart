import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:gym/features/workout/workout.dart';

class StdWorkoutsDataSource extends WorkoutsDataSource {
  final String collection;

  const StdWorkoutsDataSource(this.collection);

  @override
  Future<void> deleteWorkout(String workoutId) async {
    log('Deleting workout with id: $workoutId');

    try {
      await FirebaseFirestore.instance
          .collection(collection)
          .doc(workoutId)
          .delete();

      log('Deleted workout with id: $workoutId');
    } catch (e, s) {
      log('Failed to delete workout with id: $workoutId', e, s);
      rethrow;
    }
  }

  @override
  Future<List<Workout>> getWorkouts() async {
    log('Retrieving workouts');

    try {
      final querySnapshot =
          await FirebaseFirestore.instance.collection(collection).get();

      final workouts = querySnapshot.docs
          .map((doc) => Workout.fromJson(doc.data()))
          .toList();

      log('Retrieved ${workouts.length} workouts');

      return workouts;
    } catch (e, s) {
      log('Failed to retrieve workouts', e, s);
      rethrow;
    }
  }

  @override
  Future<void> write(Workout workout) async {
    log('Writing workout with id: ${workout.id}');

    try {
      await FirebaseFirestore.instance
          .collection(collection)
          .doc(workout.id)
          .set(workout.toJson());

      log('Wrote workout with id: ${workout.id}');
    } catch (e, s) {
      log('Failed to write workout with id: ${workout.id}', e, s);
      rethrow;
    }
  }
}

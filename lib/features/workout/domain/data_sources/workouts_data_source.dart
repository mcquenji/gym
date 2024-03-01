import 'package:gym/shared/shared.dart';
import 'package:gym/features/workout/workout.dart';

abstract class WorkoutsDataSource extends DataSource {
  WorkoutsDataSource() : super('Workouts');

  /// Retrieves a list of all workouts created.
  Future<List<Workout>> getWorkouts();

  /// Writes a workout to the database.
  Future<void> write(Workout workout);

  /// Deletes a workout from the database.
  Future<void> deleteWorkout(String workoutId);
}

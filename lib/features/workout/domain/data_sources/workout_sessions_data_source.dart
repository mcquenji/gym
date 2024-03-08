import 'package:gym/shared/shared.dart';
import 'package:gym/features/workout/workout.dart';

abstract class WorkoutSessionsDataSource extends DataSource {
  const WorkoutSessionsDataSource() : super('WorkoutSessions');

  /// Retrieves a list of all workout sessions for the current user.
  Future<List<WorkoutSession>> getWorkoutSessions();

  /// Writes a workout session to the database.
  Future<void> write(WorkoutSession workoutSession);

  /// Deletes a workout session from the database.
  Future<void> deleteWorkoutSession(String workoutSessionId);

  String generateId();
}

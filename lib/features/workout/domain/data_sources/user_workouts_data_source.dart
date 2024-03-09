import 'package:gym/shared/shared.dart';

abstract class UserWorkoutsDataSource extends DataSource {
  const UserWorkoutsDataSource() : super('UserWorkouts');

  Future<List<String>> getUserWorkouts();

  Future<void> writeUserWorkouts(List<String> workouts);
}

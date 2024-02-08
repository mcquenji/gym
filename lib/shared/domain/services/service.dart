import 'package:logging/logging.dart';

/// Base class for all services.
///
/// Use this class to create specific services for your application.
///
/// It provides a logger instance setup for the specific service.
abstract class Service {
  /// The [Logger] instance for this class.
  Logger get log => Logger("Service.$_name.$runtimeType");

  final String _name;

  /// Creates a new [Service] with the specified name.
  Service(this._name);
}

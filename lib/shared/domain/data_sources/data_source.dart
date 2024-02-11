import 'package:logging/logging.dart';

/// Base class for all data sources.
///
/// Use this class to create specific data sources for your application.
///
/// It provides a logger instance setup for the specific data source.
abstract class DataSource {
  /// The [Logger] instance for this class.
  Logger get log => Logger("DataSource.$_name.$runtimeType");

  final String _name;

  /// Creates a new [Service] with the specified name.
  DataSource(this._name);
}

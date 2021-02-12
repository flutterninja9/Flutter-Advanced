import 'package:cross_connectivity/cross_connectivity.dart';
import 'package:data_connection_checker/data_connection_checker.dart';

abstract class NetworkInfo {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfo {
  final Connectivity dataConnectionChecker;

  NetworkInfoImpl(this.dataConnectionChecker);
  @override
  Future<bool> get isConnected => dataConnectionChecker.checkConnection();
}

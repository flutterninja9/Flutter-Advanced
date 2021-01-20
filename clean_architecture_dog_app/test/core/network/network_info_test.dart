import 'package:clean_architecture_dog_app/core/network/connection_status.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockDataConnectionChecker extends Mock implements DataConnectionChecker {}

void main() {
  NetworkInfoImpl networkInfoImpl;
  MockDataConnectionChecker dataConnectionChecker

  setUp(() {
    dataConnectionChecker = MockDataConnectionChecker();
    networkInfoImpl = NetworkInfoImpl(dataConnectionChecker);
  });

  group('getNetworkConnectionStatus', () {
    test('should give the network connection status when connected', () async {
      //arrange
      when(dataConnectionChecker.hasConnection).thenAnswer((_) async => true);
      //act
      final result = await networkInfoImpl.isConnected;
      //assert
      verify(dataConnectionChecker.hasConnection);
      expect(result, true);
    });
    test('should give the network connection status when not_connected',
        () async {
      //arrange
      when(dataConnectionChecker.hasConnection).thenAnswer((_) async => false);
      //act
      final result = await networkInfoImpl.isConnected;
      //assert
      verify(dataConnectionChecker.hasConnection);
      expect(result, false);
    });
  });
}

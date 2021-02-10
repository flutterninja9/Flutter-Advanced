import 'dart:math';

import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:weather_web_app_tdd/core/platform/network_info.dart';

class MockDataConnectionChecker extends Mock implements DataConnectionChecker {}

void main() {
  MockDataConnectionChecker mockDataConnectionChecker;
  NetworkInfoImpl networkInfoImpl;

  mockDataConnectionChecker = MockDataConnectionChecker();
  networkInfoImpl = NetworkInfoImpl(mockDataConnectionChecker);
  group('isConnected', () {
    test('should forward the call to dataConnectionChecker', () async {
      //arrange
      when(mockDataConnectionChecker.hasConnection)
          .thenAnswer((_) async => Future.value(true));
      //act
      final result = await networkInfoImpl.isConnected;
      //assert
      verify(mockDataConnectionChecker.hasConnection);
      expect(result, await Future.value(true));
    });
  });
}

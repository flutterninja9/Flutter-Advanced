import '../../domain/entities/number_trivia.dart';

abstract class NumberTriviaRemoteDataSource {
  // Tries fetching raw_data from api)endpoint
  // Throws a [ServerException] when any mis-thing happens, for all the error codes
  Future<NumberTrivia> getConcreteNumberTrivia(int number);
  // same as above , but the endpoint changes to /random
  Future<NumberTrivia> getRadnomNumberTrivia();
}

import '../models/number_trivia_model.dart';

abstract class NumberTriviaRemoteDataSource {
  // Tries fetching raw_data from api)endpoint
  // Throws a [ServerException] when any mis-thing happens, for all the error codes
  Future<NumberTriviaModel> getConcreteNumberTrivia(int number);
  // same as above , but the endpoint changes to /random
  Future<NumberTriviaModel> getRadnomNumberTrivia();
}

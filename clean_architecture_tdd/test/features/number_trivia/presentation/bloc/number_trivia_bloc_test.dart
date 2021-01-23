import 'package:clean_architecture_tdd/core/utils/input_converter.dart';
import 'package:clean_architecture_tdd/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_architecture_tdd/features/number_trivia/domain/use_cases/get_concrete_number_trivia.dart';
import 'package:clean_architecture_tdd/features/number_trivia/domain/use_cases/get_random_number_trivia.dart';
import 'package:clean_architecture_tdd/features/number_trivia/presentation/bloc/number_trivia_bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockGetConcreteNumberTrivia extends Mock
    implements GetConcreteNumberTrivia {}

class MockGetRandomNumberTrivia extends Mock implements GetRandomNumberTrivia {}

class MockInputConverter extends Mock implements InputConverter {}

void main() {
  NumberTriviaBloc bloc;
  MockGetConcreteNumberTrivia getConcreteNumberTrivia;
  MockGetRandomNumberTrivia getRandomNumberTrivia;
  MockInputConverter inputConverter;

  setUp(() {
    getConcreteNumberTrivia = MockGetConcreteNumberTrivia();
    getRandomNumberTrivia = MockGetRandomNumberTrivia();
    inputConverter = MockInputConverter();

    // bLoc instantiated
    bloc = NumberTriviaBloc(
      getConcreteNumberTrivia: getConcreteNumberTrivia,
      getRandomNumberTrivia: getRandomNumberTrivia,
      inputConverter: inputConverter,
    );
  });

  test('initial state if bloc should be Empty()', () async {
    //assert
    expect(bloc.initialState, equals(Empty()));
  });

  // Group of tests for GetTriviaForConcreteNumber
  group('GetTriviaForConcreteNumber', () {
    final tNumberString = "1";
    final tNumberParsed = 1;
    final tNumberTrivia =
        NumberTrivia(number: tNumberParsed, text: "Test Text");

    // tests goes here
    test('should call InputConverter for parsing the String to Unsigned Int',
        () async {
      //arrange
      when(inputConverter.stringToUnsignedInt(any))
          .thenReturn(Right(tNumberParsed));
      //act
      bloc.dispatch(GetTriviaForConcreteNumber(tNumberString));
      // For awaiting for this call coz. its a stream and it takes time to complete
      await untilCalled(inputConverter.stringToUnsignedInt(any));
      //assert
      verify(inputConverter.stringToUnsignedInt(tNumberString));
    });
    test('should emit [Error] when the input is invalid', () {
      //arange

      //act

      // assert
    });
  });
}

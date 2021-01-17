import 'package:clean_architecture_tdd/core/error/failures.dart';
import 'package:clean_architecture_tdd/core/usecases/use_cases.dart';
import 'package:clean_architecture_tdd/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_architecture_tdd/features/number_trivia/domain/repository/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';

class GetRandomNumberTrivia implements UseCase<NumberTrivia, NoParams> {
  NumberTriviaRepository numberTriviaRepository;
  GetRandomNumberTrivia(this.numberTriviaRepository);
  @override
  Future<Either<Failure, NumberTrivia>> call(params) async {
    return await numberTriviaRepository.getRandomNumberTrivia();
  }
}

class NoParams extends Equatable {}

import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:first_project/core/error/failures.dart';
import 'package:first_project/core/usecases/usecase.dart';
import 'package:first_project/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:first_project/features/number_trivia/domain/repositories/number_trivia_repository.dart';


class GetConcreteNumberTrivia implements UseCase<NumberTrivia ,Parameters>{
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  @override
  Future<Either<Failure,NumberTrivia>> call(Parameters parameters) async{
    return await repository.getConcreteNumberTrivia(parameters.number);
  }
}

class Parameters extends Equatable{
  final int number;

  Parameters({required this.number});

  @override
  List<Object?> get props => [Parameters(number: number)];


}
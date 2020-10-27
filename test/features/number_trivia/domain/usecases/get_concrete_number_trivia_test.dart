import 'package:clean_tdd_flutter/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_tdd_flutter/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:clean_tdd_flutter/features/number_trivia/domain/usecases/get_concrete_number_trivia.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  GetConcreteNumberTrivia usecase;
  MockNumberTriviaRepository repository;

  setUp(() {
    repository = MockNumberTriviaRepository();
    usecase = GetConcreteNumberTrivia(repository);
  });

  final tNumber = 1;
  final tNumberTrivia = NumberTrivia(number: 1, text: 'Something');

  test('should return the trivia for the number from repository', () async {
    // arrange
    when(repository.getConreteNumberTrivia(any))
        .thenAnswer((_) async => Right(tNumberTrivia));
    // act
    final result = await usecase.execute(number: tNumber);
    // assert
    expect(result, Right(tNumberTrivia));
    verify(repository.getConreteNumberTrivia(tNumber));
    verifyNoMoreInteractions(repository);
  });
}

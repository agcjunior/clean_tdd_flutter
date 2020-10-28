import 'package:clean_tdd_flutter/core/usecases/usecase.dart';
import 'package:clean_tdd_flutter/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_tdd_flutter/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:clean_tdd_flutter/features/number_trivia/domain/usecases/get_random_number_trivia.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  GetRandomNumberTrivia usecase;
  MockNumberTriviaRepository repository;

  setUp(() {
    repository = MockNumberTriviaRepository();
    usecase = GetRandomNumberTrivia(repository);
  });
  
  final tNumberTrivia = NumberTrivia(number: 1, text: 'Something');

  test('should return the trivia from repository', () async {
    // arrange
    when(repository.getRandomNumberTrivia())
        .thenAnswer((_) async => Right(tNumberTrivia));
    // act
    final result = await usecase(NoParams());
    // assert
    expect(result, Right(tNumberTrivia));
    verify(repository.getRandomNumberTrivia());
    verifyNoMoreInteractions(repository);
  });
}

import 'package:clean_tdd_flutter/features/number_trivia/data/models/number_trivia_model.dart';

abstract class NumberTriviaRemoteDatasource {
  /// Calls the http://numberapi.com/{number} endpoint
  /// 
  /// throws a [ServerException] for all  error codes
  Future<NumberTriviaModel> getConreteNumberTrivia(int number);
  // Calls the http://numberapi.com/random endpoint
  /// 
  /// throws a [ServerException] for all  error codes
  Future<NumberTriviaModel> getRandomNumberTrivia();
}
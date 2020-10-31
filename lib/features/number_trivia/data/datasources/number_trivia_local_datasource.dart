import 'package:clean_tdd_flutter/features/number_trivia/data/models/number_trivia_model.dart';

abstract class  NumberTriviaLocalDatasource {
  /// Gets the cached [NumberTriviaModel] which was gottenlast time
  /// the user had  an internet connection
  /// 
  /// Throws [CacheExcetion] if no cached data is present
  Future<NumberTriviaModel> getLastNumberTrivia();

  Future<void> cacheNumberTrivia(NumberTriviaModel triviaCache);
}
import 'package:clean_tdd_flutter/core/platform/network_info.dart';
import 'package:clean_tdd_flutter/features/number_trivia/data/datasources/number_trivia_local_datasource.dart';
import 'package:clean_tdd_flutter/features/number_trivia/data/datasources/number_trivia_remote_datasource.dart';
import 'package:clean_tdd_flutter/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_tdd_flutter/core/error/failures.dart';
import 'package:clean_tdd_flutter/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:meta/meta.dart';

class NumberTriviaRepositoryImpl implements NumberTriviaRepository {
  final NumberTriviaRemoteDatasource remoteDatasource;
  final NumberTriviaLocalDatasource localDatasource;
  final NetworkInfo networkInfo;

  NumberTriviaRepositoryImpl({
    @required this.remoteDatasource,
    @required this.localDatasource,
    @required this.networkInfo
  });

  
  @override
  Future<Either<Failure, NumberTrivia>> getConreteNumberTrivia(int number) {
    // TODO: implement getConreteNumberTrivia
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia() {
    // TODO: implement getRandomNumberTrivia
    throw UnimplementedError();
  }
  
}
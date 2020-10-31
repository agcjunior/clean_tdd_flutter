import 'package:clean_tdd_flutter/core/platform/network_info.dart';
import 'package:clean_tdd_flutter/features/number_trivia/data/datasources/number_trivia_local_datasource.dart';
import 'package:clean_tdd_flutter/features/number_trivia/data/datasources/number_trivia_remote_datasource.dart';
import 'package:clean_tdd_flutter/features/number_trivia/data/repositories/number_trivia_repository_impl.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MockRemoteDatasource extends Mock  implements NumberTriviaRemoteDatasource {}
class MockLocalDatasource extends Mock implements NumberTriviaLocalDatasource {}
class MockNetworkInfo extends Mock implements NetworkInfo {}

void main() {
  NumberTriviaRepositoryImpl repository;
  MockRemoteDatasource  mockRemoteDatasource;
  MockLocalDatasource mockLocalDatasource;
  MockNetworkInfo mockNetworkInfo;

  setUp(() {
    mockRemoteDatasource = MockRemoteDatasource();
    mockLocalDatasource = MockLocalDatasource();
    mockNetworkInfo = MockNetworkInfo();
    repository = NumberTriviaRepositoryImpl(
      remoteDatasource: mockRemoteDatasource,
      localDatasource: mockLocalDatasource,
      networkInfo: mockNetworkInfo
    );
  });
}
import 'package:experian_challenge/data/services/services.dart';
import 'package:experian_challenge/domain/usecases/usecases.dart';
import 'package:mocktail/mocktail.dart';

//? Infra
class MockHttpClient extends Mock implements HttpClient {}

//? Use Cases
class MockCharacterUseCase extends Mock implements GetCharacterUseCase {}

class MockCharactersListUseCase extends Mock implements GetCharactersListUseCase {}

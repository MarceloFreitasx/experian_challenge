import '../entities/entities.dart';

abstract class GetCharactersListUseCase {
  Future<List<CharacterEntity>> execute({int? limit, int? offset});
}

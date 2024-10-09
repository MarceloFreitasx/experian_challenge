import '../../domain/entities/entities.dart';
import '../../domain/repositories/repositories.dart';
import '../../domain/usecases/usecases.dart';

class GetCharactersUseCaseImpl implements GetCharactersListUseCase {
  final CharactersRepository repository;

  GetCharactersUseCaseImpl(this.repository);

  @override
  Future<List<CharacterEntity>> execute({int? limit, int? offset}) async {
    try {
      return await repository.getCharactersList(
        limit: limit,
        offset: offset,
      );
    } catch (_) {
      rethrow;
    }
  }
}

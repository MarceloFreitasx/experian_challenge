import '../../domain/entities/entities.dart';
import '../../domain/repositories/repositories.dart';
import '../../domain/usecases/usecases.dart';

class GetCharacterUseCaseImpl implements GetCharacterUseCase {
  final CharactersRepository repository;

  GetCharacterUseCaseImpl(this.repository);

  @override
  Future<CharacterEntity> execute(int id) async {
    try {
      return await repository.getCharacter(id);
    } catch (_) {
      rethrow;
    }
  }
}

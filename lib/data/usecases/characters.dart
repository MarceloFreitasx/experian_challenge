import '../../domain/entities/entities.dart';
import '../../domain/params/params.dart';
import '../../domain/repositories/repositories.dart';
import '../../domain/usecases/usecases.dart';

class GetCharactersUseCaseImpl implements GetCharactersListUseCase {
  final CharactersRepository repository;

  GetCharactersUseCaseImpl(this.repository);

  @override
  Future<List<CharacterEntity>> execute(OptionsParams options) async {
    try {
      return await repository.getCharactersList(options);
    } catch (_) {
      rethrow;
    }
  }
}

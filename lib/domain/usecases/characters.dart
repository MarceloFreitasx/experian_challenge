import '../entities/entities.dart';
import '../params/params.dart';

abstract class GetCharactersListUseCase {
  Future<List<CharacterEntity>> execute(OptionsParams options);
}

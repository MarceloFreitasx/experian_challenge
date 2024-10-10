import '../../domain/entities/entities.dart';
import '../../domain/repositories/repositories.dart';
import '../../domain/usecases/usecases.dart';

class SendEventUseCaseImpl implements SendEventUseCase {
  SendEventUseCaseImpl(this.repository);

  final EventsRepository repository;

  @override
  Future<bool> sendOnDetailsTapEvent(CharacterEntity character) {
    return repository.selectContentEvent(
      character.name ?? '',
      character.id.toString(),
    );
  }

  @override
  Future<bool> sendSearchEvent(String searchTerm) {
    return repository.searchEvent(searchTerm);
  }
}

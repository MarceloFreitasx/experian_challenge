import '../entities/entities.dart';

abstract class SendEventUseCase {
  Future<bool> sendSearchEvent(String searchTerm);
  Future<bool> sendOnDetailsTapEvent(CharacterEntity character);
}

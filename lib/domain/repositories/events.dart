abstract class EventsRepository {
  Future<bool> searchEvent(String searchTerm);
  Future<bool> selectContentEvent(String contentName, String contentId);
}

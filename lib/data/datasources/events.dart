import '../../domain/repositories/repositories.dart';
import '../services/services.dart';

class EventsDataSource implements EventsRepository {
  EventsDataSource(this.platformChannel);

  final PlatformChannel platformChannel;

  @override
  Future<bool> searchEvent(String searchTerm) {
    try {
      return platformChannel.sendEvent(eventName: "search", properties: {
        "search_term": searchTerm,
      });
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<bool> selectContentEvent(String contentName, String contentId) {
    try {
      return platformChannel.sendEvent(eventName: "select_content", properties: {
        "content_name": contentName,
        "content_id": contentId,
      });
    } catch (_) {
      rethrow;
    }
  }
}

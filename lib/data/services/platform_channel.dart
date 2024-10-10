abstract class PlatformChannel {
  Future<bool> sendEvent({
    required String eventName,
    Map<String, dynamic>? properties,
  });
}

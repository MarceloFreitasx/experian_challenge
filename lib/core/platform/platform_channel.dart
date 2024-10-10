import 'package:flutter/services.dart';

import '../../data/services/services.dart';

class PlatformChannelImpl implements PlatformChannel {
  final MethodChannel _channel = const MethodChannel('com.example.experian_challenge/methods');

  @override
  Future<bool> sendEvent({
    required String eventName,
    Map<String, dynamic>? properties,
  }) async {
    try {
      final bool result = await _channel.invokeMethod('logEvent', {
        "eventName": eventName,
        "properties": properties,
      });
      return result;
    } on PlatformException catch (_) {
      rethrow;
    }
  }
}

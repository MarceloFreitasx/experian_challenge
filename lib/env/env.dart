import 'package:flutter/material.dart';

import '../main.dart';

class Env {
  Env() {
    to = this;
    baseUrl = const String.fromEnvironment("baseUrl");
    apiKey = const String.fromEnvironment("apiKey");

    main();
  }

  static Env? to;
  late String baseUrl;
  late String apiKey;

  Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
    await initServices();
    runApp(const MyApp());
  }

  initServices() async {
    await Future.wait([]);
  }
}

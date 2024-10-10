import 'package:flutter/material.dart';

import '../main.dart';

class Env {
  Env() {
    to = this;
    baseUrl = const String.fromEnvironment("baseUrl");
    apiKey = const String.fromEnvironment("apiKey");
    privateKey = const String.fromEnvironment("privateKey");

    main();
  }

  static Env? to;
  late String baseUrl;
  late String apiKey;
  late String privateKey;

  Future<void> main() async {
    WidgetsFlutterBinding.ensureInitialized();
    runApp(const MyApp());
  }
}

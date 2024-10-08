import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'env/env.dart';
import 'ui/styles/styles.dart';

void main() => Env();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Experian Challenge',
      theme: lightTheme,
      home: const Scaffold(
        body: Center(
          child: Text("Experian Challenge"),
        ),
      ),
    );
  }
}

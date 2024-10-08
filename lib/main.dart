import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'env/env.dart';

void main() => Env();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Experian Challenge',
      home: Scaffold(
        body: Center(
          child: Text("Experian Challenge"),
        ),
      ),
    );
  }
}

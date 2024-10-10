import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/components.dart';
import '../pages.dart';
import 'widgets/widgets.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LogoImage(),
      ),
      body: SafeArea(
        bottom: false,
        child: NotificationListener<ScrollUpdateNotification>(
          onNotification: controller.onScrollNotification,
          child: const CustomScrollView(
            slivers: [
              FeatureCharactersList(),
              CharactersList(),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../ui/pages/pages.dart';
import '../navigator/navigator.dart';

class SplashControllerImpl extends GetxController
    with GetSingleTickerProviderStateMixin
    implements SplashController {
  final _opacity = 0.0.obs;

  @override
  double get opacity => _opacity.value;

  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void onInit() {
    playAnimation();
    super.onInit();
  }

  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }

  void playAnimation() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    animation = Tween<double>(begin: 0, end: 1).animate(animationController)
      ..addListener(() {
        _opacity.value = animation.value;
      });
    animationController.forward().whenComplete(() {
      Future.delayed(const Duration(milliseconds: 1500), () {
        Get.offAndToNamed(AppRoutes.home);
      });
    });
  }
}

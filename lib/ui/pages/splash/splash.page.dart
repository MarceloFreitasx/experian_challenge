import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/components.dart';
import '../../styles/styles.dart';
import 'splash.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Obx(
          () => Opacity(
            opacity: controller.opacity,
            child: const LogoImage(),
          ),
        ),
      ),
    );
  }
}

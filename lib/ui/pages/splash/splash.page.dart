import 'package:flutter/material.dart';

import '../../styles/styles.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Image.asset(
          AppAssets.logo,
          width: 98,
        ),
      ),
    );
  }
}

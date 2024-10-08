import 'package:flutter/material.dart';

import '../../styles/styles.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: "logo",
      child: Image.asset(
        AppAssets.logo,
        width: 98,
      ),
    );
  }
}

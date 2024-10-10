import 'package:flutter/material.dart';

import '../../components/components.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const LogoImage(),
      ),
      body: const Center(
        child: Text("Details Page"),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/components.dart';
import '../pages.dart';

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
        child: Obx(() => controller.isLoading
            ? const Center(child: CircularProgressIndicator())
            : SizedBox(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  padding: const EdgeInsets.all(24),
                  itemBuilder: (_, index) {
                    final item = controller.characters[index];
                    return CharacterCard(
                      title: item.name ?? '',
                      image: item.thumbnail?.url ?? '',
                      onTap: () => controller.onTapCharacter(item),
                    );
                  },
                  itemCount: controller.characters.length,
                ),
              )),
      ),
    );
  }
}

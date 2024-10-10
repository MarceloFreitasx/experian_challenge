import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/components.dart';
import '../../../styles/styles.dart';
import '../home.dart';

class FeatureCharactersList extends GetView<HomeController> {
  const FeatureCharactersList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverMainAxisGroup(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(24).copyWith(bottom: 16),
          sliver: const SliverToBoxAdapter(
            child: Text(
              "FEATURED CHARACTERS",
              style: AppTextStyle.bodyMedium,
            ),
          ),
        ),
        Obx(() => SliverToBoxAdapter(
              child: SizedBox(
                height: 180,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  itemBuilder: (context, index) {
                    final item = controller.featuredCharacters[index];
                    return CharacterCard(
                      title: item.name ?? '',
                      image: item.thumbnail?.url ?? '',
                      heroTag: item.id.toString(),
                      onTap: () => controller.onTapCharacter(item),
                    );
                  },
                  separatorBuilder: (context, index) => const SizedBox(width: 16),
                  itemCount: controller.featuredCharacters.length,
                ),
              ),
            )),
      ],
    );
  }
}

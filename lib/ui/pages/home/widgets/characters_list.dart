import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../components/components.dart';
import '../../../styles/styles.dart';
import '../home.dart';

class CharactersList extends GetView<HomeController> {
  const CharactersList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverMainAxisGroup(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(24).copyWith(bottom: 16),
          sliver: const SliverToBoxAdapter(
            child: Text(
              "MARVEL CHARACTERS LIST",
              style: AppTextStyle.bodyMedium,
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          sliver: SliverToBoxAdapter(
            child: TextFieldInput(
              controller: controller.searchController,
              hintText: "Search characters",
              prefixIcon: Icons.search,
              onChanged: controller.onChangedSearch,
              onEditingComplete: controller.onSearch,
            ),
          ),
        ),
        Obx(() => SliverPadding(
              padding: const EdgeInsets.all(24),
              sliver: SliverGrid.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemBuilder: (_, index) {
                  final item = controller.characters[index];
                  return CharacterCard(
                    title: item.name ?? '',
                    image: item.thumbnail?.url ?? '',
                    heroTag: item.id.toString(),
                    onTap: () => controller.onTapCharacter(item),
                  );
                },
                itemCount: controller.characters.length,
              ),
            )),
        SliverToBoxAdapter(
          child: Obx(() => controller.isLoading
              ? const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Center(child: CircularProgressIndicator()),
                )
              : const SizedBox()),
        ),
      ],
    );
  }
}

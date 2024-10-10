import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../components/components.dart';
import '../../infra/infra.dart';
import '../../styles/styles.dart';
import '../pages.dart';

class DetailsPage extends GetView<DetailsController> {
  const DetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        title: const LogoImage(),
      ),
      body: ListView(
        children: [
          Hero(
            tag: controller.character.id.toString(),
            child: BackgroundNetworkImage(
              imageUrl: controller.character.thumbnail?.url ?? '',
              alignment: const Alignment(0.0, 1.01),
              fit: BoxFit.cover,
              height: 375,
              child: Container(
                height: 127,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      AppColors.raisinBlack,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  controller.character.name ?? '',
                  style: AppTextStyle.head1.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 16),
                Text(
                  "BIOGRAPHY",
                  style: AppTextStyle.bodyMedium.copyWith(color: Colors.white),
                ),
                const SizedBox(height: 8),
                Text(
                  controller.character.description ?? '',
                  style: AppTextStyle.bodyRegular.copyWith(color: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

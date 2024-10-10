import 'package:flutter/material.dart';

import '../../infra/infra.dart';
import '../../styles/styles.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard({
    super.key,
    required this.title,
    required this.image,
    this.heroTag,
    this.onTap,
  });

  final String title;
  final String image;
  final String? heroTag;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Hero(
        tag: heroTag ?? image,
        child: BackgroundNetworkImage(
          imageUrl: image,
          width: 180,
          height: 180,
          borderRadius: BorderRadius.circular(15),
          alignment: Alignment.bottomCenter,
          fit: BoxFit.cover,
          child: Container(
            alignment: Alignment.bottomCenter,
            height: 61,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 7),
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(15),
              ),
              gradient: LinearGradient(
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.62),
                ],
                stops: const [0, .6],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: AppTextStyle.bodyMedium.copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}

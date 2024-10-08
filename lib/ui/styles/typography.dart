import 'package:flutter/material.dart';

class AppTextStyle {
  AppTextStyle._();

  //! Heading
  /// Heading 1 - 28 - Bold
  static const TextStyle head1 = TextStyle(
    fontSize: 28,
    fontWeight: FontWeight.w700,
  );

  //! Body
  /// Body Regular - 14 - Regular
  static const TextStyle bodyRegular = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );

  /// Body Medium - 15 - Bold
  static const TextStyle bodyMedium = TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.w700,
  );
}

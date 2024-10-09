import 'package:experian_challenge/ui/components/components.dart';
import 'package:experian_challenge/ui/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helpers.dart';

void main() {
  group("Component LogoImage widgets tests:", () {
    testWidgets("Should pump LogoImage with correct Image", (WidgetTester tester) async {
      await tester.pumpWidget(
        makeTestable(const LogoImage()),
      );

      await tester.pumpAndSettle();
      expect(find.image(const AssetImage(AppAssets.logo)), findsOneWidget);
    });
  });
}

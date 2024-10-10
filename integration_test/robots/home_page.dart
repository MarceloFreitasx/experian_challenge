import 'package:experian_challenge/ui/components/components.dart';
import 'package:experian_challenge/ui/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../utils/utils.dart';

class HomePageRobot {
  HomePageRobot(this.tester);

  final WidgetTester tester;

  Future<void> run() async {
    await tester.runAsync(() async {
      await verify();
      await search();
      await validation();
    });
  }

  Future<void> verify() async {
    await TestHelper.pumpApp(tester);
    await tester.pumpAndSettle(const Duration(seconds: 1));
    final card = find.byType(CharacterCard).first;
    expect(card, findsOneWidget);
  }

  Future<void> search() async {
    final searchField = find.byType(TextFieldInput);
    await tester.enterText(searchField, "black");
    FocusManager.instance.primaryFocus?.unfocus();
    await tester.pump();
  }

  Future<void> validation() async {
    await tester.pumpAndSettle(const Duration(seconds: 1));
    final character = find.text("Black Bird");
    expect(character, findsOneWidget);

    await tester.tap(character.first);
    await tester.pumpAndSettle(const Duration(seconds: 1));
    expect(find.byType(DetailsPage), findsOneWidget);
    expect(character, findsOneWidget);
  }
}

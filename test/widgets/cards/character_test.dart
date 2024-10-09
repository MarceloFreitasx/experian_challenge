import 'package:experian_challenge/ui/components/components.dart';
import 'package:experian_challenge/ui/infra/infra.dart';
import 'package:faker/faker.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:network_image_mock/network_image_mock.dart';

import '../helpers.dart';

void main() {
  group("Component CharacterCard widgets tests:", () {
    late String title;
    late String image;

    setUp(() {
      title = faker.person.name();
      image = faker.image.loremPicsum(imageFormat: ImageFormat.jpg);
    });

    testWidgets("Should pump CharacterCard with correct Image", (WidgetTester tester) async {
      await mockNetworkImagesFor(() async => await tester.pumpWidget(
            makeTestable(CharacterCard(
              title: title,
              image: image,
            )),
          ));

      await tester.pumpAndSettle();
      expect(find.text(title), findsOneWidget);
      expect(find.byType(BackgroundNetworkImage), findsOneWidget);
    });
  });
}

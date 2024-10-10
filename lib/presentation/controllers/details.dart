import 'package:get/get.dart';

import '../../domain/entities/character.dart';
import '../../ui/pages/pages.dart';

class DetailsControllerImpl extends GetxController implements DetailsController {
  final _character = Rxn<CharacterEntity>();

  @override
  CharacterEntity get character => _character.value!;

  @override
  void onInit() {
    if (Get.arguments == null) {
      Get.back(result: "Character not found!");
    }

    _character.value = Get.arguments as CharacterEntity;
    super.onInit();
  }
}

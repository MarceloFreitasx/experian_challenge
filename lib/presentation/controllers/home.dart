import 'dart:developer';

import 'package:get/get.dart';

import '../../domain/entities/entities.dart';
import '../../domain/params/options.dart';
import '../../domain/usecases/usecases.dart';
import '../../ui/pages/pages.dart';
import '../mixins/mixins.dart';
import '../navigator/routes.dart';

class HomeControllerImpl extends GetxController with LoadingManager implements HomeController {
  HomeControllerImpl(this.getCharactersListUseCase);

  final GetCharactersListUseCase getCharactersListUseCase;

  final _characters = <CharacterEntity>[].obs;

  @override
  List<CharacterEntity> get characters => _characters;

  @override
  void onInit() {
    getCharactersList();
    super.onInit();
  }

  Future<void> getCharactersList() async {
    try {
      setLoadingStarted();
      _characters.assignAll(await getCharactersListUseCase.execute(OptionsParams()));
      setLoadingCompleted();
    } on Exception catch (e) {
      log(e.toString());
    }
  }

  @override
  void onTapCharacter(CharacterEntity item) {
    Get.toNamed(AppRoutes.details, arguments: item.id);
  }
}

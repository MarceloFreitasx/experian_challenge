import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../domain/entities/entities.dart';
import '../../domain/params/options.dart';
import '../../domain/usecases/usecases.dart';
import '../../ui/pages/pages.dart';
import '../mixins/mixins.dart';
import '../navigator/routes.dart';

class HomeControllerImpl extends GetxController
    with LoadingManager, DebouncerManager, PaginationManager
    implements HomeController {
  HomeControllerImpl(this.getCharactersListUseCase);

  final GetCharactersListUseCase getCharactersListUseCase;

  final _characters = <CharacterEntity>[].obs;
  final _featuredCharacters = <CharacterEntity>[].obs;
  final _options = OptionsParams();

  @override
  List<CharacterEntity> get characters => _characters;

  @override
  List<CharacterEntity> get featuredCharacters => _featuredCharacters;

  @override
  TextEditingController searchController = TextEditingController();

  @override
  void onInit() async {
    await getCharactersList();
    _featuredCharacters.assignAll(characters);
    super.onInit();
  }

  Future<void> getCharactersList({bool loadMore = false}) async {
    if (!loadMore) _options.resetPages();

    try {
      setLoadingStarted();
      final characters = await getCharactersListUseCase.execute(_options);
      if (loadMore) {
        _characters.addAll(characters);
      } else {
        _characters.assignAll(characters);
      }
      setLoadingCompleted();
    } on Exception catch (e) {
      log(e.toString());
    }
  }

  @override
  void onTapCharacter(CharacterEntity item) {
    Get.toNamed(AppRoutes.details, arguments: item);
  }

  @override
  void onChangedSearch(String searchTerm) {
    _options.nameStartsWith = searchTerm;
    debouncerRun(() async {
      await getCharactersList();
    });
  }

  @override
  Future<void> onSearch() async {
    await getCharactersList();
  }

  @override
  void loadMore() {
    if (isLoading) return;

    _options.nextPage();
    getCharactersList(loadMore: true);
  }
}

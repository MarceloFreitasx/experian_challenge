import 'package:flutter/material.dart';

import '../../../domain/entities/entities.dart';
import '../../../domain/mixins/mixins.dart';

abstract class HomeController with LoadingMixin, DebouncerMixin, PaginationMixin {
  List<CharacterEntity> get characters;
  TextEditingController get searchController;

  void onTapCharacter(CharacterEntity item);
  void onChangedSearch(String searchTerm);
  void onSearch();
}

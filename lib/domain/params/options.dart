class OptionsParams {
  String? nameStartsWith;
  int limit;
  int offset;
  String orderBy;

  OptionsParams({
    this.nameStartsWith,
    this.limit = 20,
    this.offset = 0,
    this.orderBy = "name",
  });

  void nextPage() {
    offset += limit;
  }

  void resetPages() {
    offset = 0;
  }

  Map<String, dynamic> toMap() => {
        "nameStartsWith": nameStartsWith,
        "limit": limit,
        "offset": offset,
        "orderBy": orderBy,
      }..removeWhere((key, value) => value == null || value == "");
}

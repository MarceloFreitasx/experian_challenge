class OptionsParams {
  String? nameStartsWith;
  int limit;
  int offset;
  String orderBy;

  OptionsParams({
    this.nameStartsWith,
    this.limit = 10,
    this.offset = 0,
    this.orderBy = "name",
  });

  Map<String, dynamic> toMap() => {
        "nameStartsWith": nameStartsWith,
        "limit": limit,
        "offset": offset,
        "orderBy": orderBy,
      }..removeWhere((key, value) => value == null);
}

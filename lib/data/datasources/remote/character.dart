import '../../../domain/entities/character.dart';
import '../../../domain/repositories/repositories.dart';
import '../../helpers/helpers.dart';
import '../../models/models.dart';
import '../../services/services.dart';

class RemoteCharacterDataSource implements CharactersRepository {
  RemoteCharacterDataSource(this.httpClient);

  final HttpClient httpClient;

  @override
  Future<CharacterEntity> getCharacter(int id) async {
    try {
      final request = await httpClient.request(
        method: HttpMethod.get,
        url: "/characters/$id",
      );

      final result = request.data["data"] as Map<String, dynamic>;
      final data = result["results"] as List<dynamic>;
      return data.first.map((element) => CharacterModel.fromJson(element).toEntity()).toList();
    } catch (_) {
      rethrow;
    }
  }

  @override
  Future<List<CharacterEntity>> getCharactersList({int? limit, int? offset}) async {
    try {
      final request = await httpClient.request(
        method: HttpMethod.get,
        url: "/characters",
        data: {
          "limit": limit,
          "offset": offset,
        },
      );

      final result = request.data as Map<String, dynamic>;
      final data = result["data"] as List<dynamic>;
      return data.map((element) => CharacterModel.fromJson(element).toEntity()).toList();
    } catch (_) {
      rethrow;
    }
  }
}

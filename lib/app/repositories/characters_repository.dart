import 'dart:convert';

import 'package:app_rick_morty/app/model/character_model.dart';
import 'package:dio/dio.dart';
import 'package:dio/native_imp.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'characters_repository.g.dart';

@Injectable()
class CharacterRepository extends Disposable {
  final DioForNative client;
  String baseUrl = 'https://rickandmortyapi.com/api/';

  CharacterRepository(this.client);

  Future<List<CharacterModel>> getCharacters(int page) async {
    try {
      final response = await client.get('$baseUrl/character?page=$page');
      List<CharacterModel> characterModels;
      Iterable l = json.decode(response.data['results']);
      print(l);
      characterModels = (json.decode(response.data['results']) as List)
          .map((i) => CharacterModel.fromJson(i))
          .toList();
      return characterModels;
    } on DioError catch (e) {
      throw Exception(e);
    }
  }

  @override
  void dispose() {}
}

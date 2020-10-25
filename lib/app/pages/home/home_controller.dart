import 'package:app_rick_morty/app/model/character_model.dart';
import 'package:app_rick_morty/app/repositories/characters_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final CharacterRepository characterRepository;

  _HomeControllerBase(this.characterRepository) {
    reloadCharacters();
  }

  @observable
  List<CharacterModel> characterModel = [];

  @observable
  int page = 1;

  @observable
  bool hasMore = true;

  @action
  loadMoreCharacters() async {
    page += 1;
    var newCharacters = [];
    if (hasMore) {
      newCharacters = await characterRepository.getCharacters(page);
      characterModel = [...characterModel, ...newCharacters];
    }
    if (newCharacters.length == 20) {
      hasMore = true;
      return;
    }
    hasMore = false;
  }

  @action
  reloadCharacters() async {
    characterModel = await characterRepository.getCharacters(1);
  }
}

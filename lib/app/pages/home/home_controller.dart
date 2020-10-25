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
    getCharacters(1);
  }

  @observable
  List<CharacterModel> characterModel;

  @observable
  bool isLoading = false;

  @action
  getCharacters(int page) async {
    isLoading = true;
    characterModel = await characterRepository.getCharacters(page);
    isLoading = false;
  }
}

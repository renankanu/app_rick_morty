import 'package:dio/native_imp.dart';

import 'home_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../repositories/characters_repository.dart';

import 'home_page.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $HomeController,
        $CharacterRepository,
        Bind((i) => DioForNative()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}

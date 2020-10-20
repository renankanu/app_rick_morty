import 'package:app_rick_morty/app/pages/home/home_module.dart';
import 'package:app_rick_morty/app/pages/home/home_page.dart';
import 'package:app_rick_morty/app/pages/intro/intro_screen.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:app_rick_morty/app/app_widget.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        $AppController,
      ];

  @override
  List<ModularRouter> get routers => [
        // ModularRouter(Modular.initialRoute, child: (_, args) => IntroScreen()),
        ModularRouter('/', module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}

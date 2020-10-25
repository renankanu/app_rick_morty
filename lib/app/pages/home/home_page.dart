import 'package:app_rick_morty/app/pages/home/widgets/image_character.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  int page;
  bool initial = true;
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    page = 2;
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        controller.getCharacters(page);
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: statusBarHeight,
          ),
          Text(
            'Personagens',
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: Observer(builder: (_) {
              return controller.isLoading == false
                  ? MediaQuery.removePadding(
                      context: context,
                      removeTop: true,
                      child: ListView.builder(
                          controller: _scrollController,
                          itemCount: controller.characterModel.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Card(
                                child: Row(
                                  children: [
                                    ImageCharacter(
                                        image: controller
                                            .characterModel[index].image),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(controller
                                            .characterModel[index].species),
                                        Text(
                                          controller.characterModel[index].name,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    )
                  : Center(
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
                      ),
                    );
            }),
          )
        ],
      ),
    );
  }
}

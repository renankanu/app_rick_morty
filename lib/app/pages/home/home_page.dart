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
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    double statusBarHeight = MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: statusBarHeight,
          ),
          Expanded(
            child: Observer(builder: (_) {
              return controller.isLoading == false
                  ? ListView.builder(
                      itemCount: controller.characterModel.results.length,
                      itemBuilder: (context, index) {
                        return Card(
                          shadowColor: Colors.red,
                          child: Row(
                            children: [
                              Container(
                                width: 80,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(12),
                                    topRight: Radius.circular(12),
                                  ),
                                  child: Image.network(controller
                                      .characterModel.results[index].image),
                                ),
                              ),
                              Container(
                                child: Text(
                                  controller.characterModel.results[index].name,
                                ),
                              ),
                            ],
                          ),
                        );
                      })
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

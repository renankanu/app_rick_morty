// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// InjectionGenerator
// **************************************************************************

final $HomeController = BindInject(
  (i) => HomeController(i<CharacterRepository>()),
  singleton: true,
  lazy: true,
);

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$characterModelAtom = Atom(name: '_HomeControllerBase.characterModel');

  @override
  CharacterModel get characterModel {
    _$characterModelAtom.reportRead();
    return super.characterModel;
  }

  @override
  set characterModel(CharacterModel value) {
    _$characterModelAtom.reportWrite(value, super.characterModel, () {
      super.characterModel = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_HomeControllerBase.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$getCharactersAsyncAction =
      AsyncAction('_HomeControllerBase.getCharacters');

  @override
  Future getCharacters() {
    return _$getCharactersAsyncAction.run(() => super.getCharacters());
  }

  @override
  String toString() {
    return '''
characterModel: ${characterModel},
isLoading: ${isLoading}
    ''';
  }
}

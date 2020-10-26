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
  List<CharacterModel> get characterModel {
    _$characterModelAtom.reportRead();
    return super.characterModel;
  }

  @override
  set characterModel(List<CharacterModel> value) {
    _$characterModelAtom.reportWrite(value, super.characterModel, () {
      super.characterModel = value;
    });
  }

  final _$pageAtom = Atom(name: '_HomeControllerBase.page');

  @override
  int get page {
    _$pageAtom.reportRead();
    return super.page;
  }

  @override
  set page(int value) {
    _$pageAtom.reportWrite(value, super.page, () {
      super.page = value;
    });
  }

  final _$hasMoreAtom = Atom(name: '_HomeControllerBase.hasMore');

  @override
  bool get hasMore {
    _$hasMoreAtom.reportRead();
    return super.hasMore;
  }

  @override
  set hasMore(bool value) {
    _$hasMoreAtom.reportWrite(value, super.hasMore, () {
      super.hasMore = value;
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

  final _$loadMoreCharactersAsyncAction =
      AsyncAction('_HomeControllerBase.loadMoreCharacters');

  @override
  Future loadMoreCharacters() {
    return _$loadMoreCharactersAsyncAction
        .run(() => super.loadMoreCharacters());
  }

  final _$reloadCharactersAsyncAction =
      AsyncAction('_HomeControllerBase.reloadCharacters');

  @override
  Future reloadCharacters() {
    return _$reloadCharactersAsyncAction.run(() => super.reloadCharacters());
  }

  @override
  String toString() {
    return '''
characterModel: ${characterModel},
page: ${page},
hasMore: ${hasMore},
isLoading: ${isLoading}
    ''';
  }
}

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeBase, Store {
  final _$currentIndexAtom = Atom(name: '_HomeBase.currentIndex');

  @override
  int get currentIndex {
    _$currentIndexAtom.context.enforceReadPolicy(_$currentIndexAtom);
    _$currentIndexAtom.reportObserved();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.context.conditionallyRunInAction(() {
      super.currentIndex = value;
      _$currentIndexAtom.reportChanged();
    }, _$currentIndexAtom, name: '${_$currentIndexAtom.name}_set');
  }

  final _$_HomeBaseActionController = ActionController(name: '_HomeBase');

  @override
  void updateCurrentIndex(int index) {
    final _$actionInfo = _$_HomeBaseActionController.startAction();
    try {
      return super.updateCurrentIndex(index);
    } finally {
      _$_HomeBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string = 'currentIndex: ${currentIndex.toString()}';
    return '{$string}';
  }
}

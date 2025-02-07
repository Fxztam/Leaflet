// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_info.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppInfo on _AppInfoBase, Store {
  final _$_systemAccentDataValueAtom =
      Atom(name: '_AppInfoBase._systemAccentDataValue');

  @override
  int get _systemAccentDataValue {
    _$_systemAccentDataValueAtom.reportRead();
    return super._systemAccentDataValue;
  }

  @override
  set _systemAccentDataValue(int value) {
    _$_systemAccentDataValueAtom
        .reportWrite(value, super._systemAccentDataValue, () {
      super._systemAccentDataValue = value;
    });
  }

  final _$_accentDataValueAtom = Atom(name: '_AppInfoBase._accentDataValue');

  @override
  Color get _accentDataValue {
    _$_accentDataValueAtom.reportRead();
    return super._accentDataValue;
  }

  @override
  set _accentDataValue(Color value) {
    _$_accentDataValueAtom.reportWrite(value, super._accentDataValue, () {
      super._accentDataValue = value;
    });
  }

  final _$_lightThemeValueAtom = Atom(name: '_AppInfoBase._lightThemeValue');

  @override
  LeafletThemeData? get _lightThemeValue {
    _$_lightThemeValueAtom.reportRead();
    return super._lightThemeValue;
  }

  @override
  set _lightThemeValue(LeafletThemeData? value) {
    _$_lightThemeValueAtom.reportWrite(value, super._lightThemeValue, () {
      super._lightThemeValue = value;
    });
  }

  final _$_darkThemeValueAtom = Atom(name: '_AppInfoBase._darkThemeValue');

  @override
  LeafletThemeData? get _darkThemeValue {
    _$_darkThemeValueAtom.reportRead();
    return super._darkThemeValue;
  }

  @override
  set _darkThemeValue(LeafletThemeData? value) {
    _$_darkThemeValueAtom.reportWrite(value, super._darkThemeValue, () {
      super._darkThemeValue = value;
    });
  }

  final _$_activeNotificationsValueAtom =
      Atom(name: '_AppInfoBase._activeNotificationsValue');

  @override
  List<ActiveNotification> get _activeNotificationsValue {
    _$_activeNotificationsValueAtom.reportRead();
    return super._activeNotificationsValue;
  }

  @override
  set _activeNotificationsValue(List<ActiveNotification> value) {
    _$_activeNotificationsValueAtom
        .reportWrite(value, super._activeNotificationsValue, () {
      super._activeNotificationsValue = value;
    });
  }

  final _$_AppInfoBaseActionController = ActionController(name: '_AppInfoBase');

  @override
  void updateAccent(dynamic event) {
    final _$actionInfo = _$_AppInfoBaseActionController.startAction(
        name: '_AppInfoBase.updateAccent');
    try {
      return super.updateAccent(event);
    } finally {
      _$_AppInfoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void pollForActiveNotifications() {
    final _$actionInfo = _$_AppInfoBaseActionController.startAction(
        name: '_AppInfoBase.pollForActiveNotifications');
    try {
      return super.pollForActiveNotifications();
    } finally {
      _$_AppInfoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void refreshThemes() {
    final _$actionInfo = _$_AppInfoBaseActionController.startAction(
        name: '_AppInfoBase.refreshThemes');
    try {
      return super.refreshThemes();
    } finally {
      _$_AppInfoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void _updateAccent() {
    final _$actionInfo = _$_AppInfoBaseActionController.startAction(
        name: '_AppInfoBase._updateAccent');
    try {
      return super._updateAccent();
    } finally {
      _$_AppInfoBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''

    ''';
  }
}

import 'package:flutter/widgets.dart';

class CustomIcons {
  CustomIcons._();

  static const _kFontFam1 = 'descending_menu_icon';
  static const _kFontFam2 = 'filter_icon';
  static const _kFontFam3 = 'map_icon';
  static const _kFontFam4 = 'meal_icon';
  static const String _kFontPkg = null;

  static const IconData descending_menu_icon =
      IconData(0xe801, fontFamily: _kFontFam1, fontPackage: _kFontPkg);
  static const IconData filter_icon =
      IconData(0xe801, fontFamily: _kFontFam2, fontPackage: _kFontPkg);
  static const IconData map_icon =
      IconData(0xe801, fontFamily: _kFontFam3, fontPackage: _kFontPkg);
  static const IconData meal_icon =
      IconData(0xe801, fontFamily: _kFontFam4, fontPackage: _kFontPkg);
}

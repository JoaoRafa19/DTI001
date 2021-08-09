import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class LocaleProvider extends ChangeNotifier {
  Locale _locale = Locale('pt');

  Locale get locale => _locale;
  set locale(locale) {
    _locale = locale;
    notifyListeners();
  }

  void switchLocale() {
    _locale = Locale('en') == _locale ? Locale('pt') : Locale('en');
    notifyListeners();
  }
}

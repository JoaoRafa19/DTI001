import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class LocaleProvider extends ChangeNotifier{
  Locale _locale = Locale('en');

  Locale get locale => _locale;
  set locale(locale) {
    _locale = locale;
  }
}

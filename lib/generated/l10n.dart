// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class Localization {
  Localization();

  static Localization? _current;

  static Localization get current {
    assert(_current != null,
        'No instance of Localization was loaded. Try to initialize the Localization delegate before accessing Localization.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<Localization> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = Localization();
      Localization._current = instance;

      return instance;
    });
  }

  static Localization of(BuildContext context) {
    final instance = Localization.maybeOf(context);
    assert(instance != null,
        'No instance of Localization present in the widget tree. Did you add Localization.delegate in localizationsDelegates?');
    return instance!;
  }

  static Localization? maybeOf(BuildContext context) {
    return Localizations.of<Localization>(context, Localization);
  }

  /// `thinness`
  String get thinness {
    return Intl.message(
      'thinness',
      name: 'thinness',
      desc: '',
      args: [],
    );
  }

  /// `normal`
  String get normal {
    return Intl.message(
      'normal',
      name: 'normal',
      desc: '',
      args: [],
    );
  }

  /// `overweight`
  String get overweight {
    return Intl.message(
      'overweight',
      name: 'overweight',
      desc: '',
      args: [],
    );
  }

  /// `obesity`
  String get obesity {
    return Intl.message(
      'obesity',
      name: 'obesity',
      desc: '',
      args: [],
    );
  }

  /// `severe obesity`
  String get severe_obesity {
    return Intl.message(
      'severe obesity',
      name: 'severe_obesity',
      desc: '',
      args: [],
    );
  }

  /// `Height (cm)`
  String get height {
    return Intl.message(
      'Height (cm)',
      name: 'height',
      desc: '',
      args: [],
    );
  }

  /// `Weight (Kg)`
  String get weight {
    return Intl.message(
      'Weight (Kg)',
      name: 'weight',
      desc: '',
      args: [],
    );
  }

  /// `Calculate CMI`
  String get calculate {
    return Intl.message(
      'Calculate CMI',
      name: 'calculate',
      desc: '',
      args: [],
    );
  }

  /// `Result will appear here`
  String get result_placeholder {
    return Intl.message(
      'Result will appear here',
      name: 'result_placeholder',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<Localization> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'pt'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<Localization> load(Locale locale) => Localization.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}

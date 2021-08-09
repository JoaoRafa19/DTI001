import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:imc_bloc/controllers/locale.provider.dart';
import 'package:imc_bloc/generated/l10n.dart';
import 'package:imc_bloc/view/android/home.page.dart';
import 'package:provider/provider.dart';

class AndroidMyApp extends StatelessWidget {
  LocaleProvider _locale = LocaleProvider();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      supportedLocales: Localization.delegate.supportedLocales,
      localizationsDelegates: [Localization.delegate, GlobalMaterialLocalizations.delegate, GlobalWidgetsLocalizations.delegate],
      // localeResolutionCallback: (locale, locales) {
      //   return _locale.locale;
      // },
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider.value(
        value: _locale,
        child: MyHomePage(),
      ),
    );
  }
}

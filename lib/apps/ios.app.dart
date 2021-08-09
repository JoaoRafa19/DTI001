import 'package:flutter/cupertino.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:imc_bloc/generated/l10n.dart';

class IOSMyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        primaryColor: CupertinoColors.activeBlue
      ),
      supportedLocales: Localization.delegate.supportedLocales,
      localizationsDelegates: [
        Localization.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      home: Container(),
    );
  }
}

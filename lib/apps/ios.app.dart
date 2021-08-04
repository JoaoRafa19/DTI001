import 'package:flutter/cupertino.dart';

class IOSMyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        primaryColor: CupertinoColors.activeBlue
      ),
      home: Container(),
    );
  }
}

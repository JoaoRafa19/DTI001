import 'dart:io';

import 'package:flutter/material.dart';
import 'package:imc_bloc/apps/android.app.dart';
import 'package:imc_bloc/apps/ios.app.dart';

void main() {
  runApp(Platform.isIOS ? IOSMyApp() : AndroidMyApp());
}
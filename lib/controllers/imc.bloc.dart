import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:imc_bloc/utils/enums.dart';

class IMCBLoC {
  String result = "Resultado aparecerá aqui";
  final TextEditingController heightController = TextEditingController();
  final TextEditingController weightController = TextEditingController();

  // ignore: close_sinks
  StreamController _streamController = StreamController<String>();

  Stream get output => _streamController.stream;
  Sink get input => _streamController.sink;

  String calculaImc(BuildContext context, {double? height, double? weight}) {
    double heightInMeters = height != null ? height / 100 : int.parse(heightController.text) / 100;
    double pesoEmKg = weight != null ? weight : double.parse(weightController.text);
    double imc = pesoEmKg / pow(heightInMeters, 2);
    result = BodyMassIndex.category(imc, context);
    input.add(result);
    return result;
  }
}

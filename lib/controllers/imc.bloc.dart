import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class IMCType {
  static String abaixo = "Abaixo do peso";
  static String normal = "Normal";
  static String sobrepesoI = "Sobrepeso I";
  static String obesidade = "Obesidade II";
  static String obesidadeGrave = "Obesidade Grave III";
}

class IMCBLoC {
  String resultado = "Resultado aparecerá aqui";
  TextEditingController controllerAltura = TextEditingController();
  TextEditingController controllerPeso = TextEditingController();

  // ignore: close_sinks
  StreamController _streamController = StreamController<String>();

  Stream get output => _streamController.stream;
  Sink get input => _streamController.sink;

  String calculaImc({double? altura, double? peso}) {
    double alturaEmMetros =
        altura != null ? altura / 100 : int.parse(controllerAltura.text) / 100;
    double pesoEmKg = peso != null ? peso : double.parse(controllerPeso.text);
    double imc = pesoEmKg / pow(alturaEmMetros, 2);
    if (imc < 18.5)
      resultado = IMCType.abaixo;
    else if (imc < 24.9)
      resultado = IMCType.normal;
    else if (imc < 29)
      resultado = IMCType.sobrepesoI;
    else if (imc < 39.9)
      resultado = IMCType.obesidade;
    else if (imc > 40) resultado = IMCType.obesidadeGrave;

    input.add(resultado);
    return resultado;
  }
}

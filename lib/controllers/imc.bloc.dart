import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

class IMCBLoC {
  String resultado = "Resultado aparecerá aqui";
  TextEditingController controllerAltura = TextEditingController();
  TextEditingController controllerPeso = TextEditingController();

  StreamController _streamController = StreamController<String>();

  Stream get output => _streamController.stream;
  Sink get input => _streamController.sink;

  String calculaImc() {
    double alturaEmMetros = int.parse(controllerAltura.text) / 100;
    double peso = double.parse(controllerPeso.text);
    double imc = peso / pow(alturaEmMetros, 2);
    if (imc < 18.5)
      resultado = "Abaixo do peso";
    else if (imc < 24.9)
      resultado = "Normal";
    else if (imc < 29)
      resultado = "Sobrepeso I";
    else if (imc < 39.9)
      resultado = "Obesidade II";
    else if (imc > 40) resultado = "Obesidade Grave III";

    input.add(resultado);
    return resultado;
  }
}

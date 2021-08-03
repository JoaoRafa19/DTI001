
import 'package:flutter_test/flutter_test.dart';

import '../lib/controllers/imc.bloc.dart';

void main() {
  IMCBLoC bloc = IMCBLoC();
  test("Imc deve vir Sobrepeso I", () {
    bloc.calculaImc(height: 188, weight: 95.0);
    expect(bloc.result, "Sobrepeso I");
  });
  test("IMC deve ser Abaixo", () {
    bloc.calculaImc(height: 200, weight: 60.0);
    expect(bloc.result, "Abaixo do peso");
  });
}

import 'package:flutter_test/flutter_test.dart';
import 'package:imc_bloc/controllers/imc.bloc.dart';

void main() {
  IMCBLoC bloc = IMCBLoC();
  test("Imc deve vir Sobrepeso I", () {
    bloc.calculaImc(altura: 188, peso: 95.0);
    expect(bloc.resultado, "Sobrepeso I");
  });
  test("IMC deve ser Abaixo", () {
    bloc.calculaImc(altura: 200, peso: 60.0);
    expect(bloc.resultado, "Abaixo do peso");
  });
}

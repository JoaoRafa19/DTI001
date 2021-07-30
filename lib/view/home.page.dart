import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imc_bloc/controllers/imc.bloc.dart';

class MyHomePage extends StatelessWidget {
  final IMCBLoC bloc = IMCBLoC();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BLoC"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextFormField(
              controller: bloc.controllerAltura,
              keyboardType: TextInputType.number,
              style: TextStyle(),
              decoration: InputDecoration(labelText: "Altura (cm) "),
            ),
            TextFormField(
              controller: bloc.controllerPeso,
              keyboardType: TextInputType.number,
              style: GoogleFonts.lato(),
              decoration: InputDecoration(labelText: "Peso (Kg) "),
            ),
            StreamBuilder(
                stream: bloc.output,
                builder: (context, snapshot) {
                  return Text(
                    bloc.resultado,
                  );
                }),
            TextButton(
              onPressed: () => bloc.calculaImc(),
              child: Text("Calcular"),
              style: ButtonStyle(
                alignment: Alignment.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}

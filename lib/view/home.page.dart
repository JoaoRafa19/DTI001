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
            Container(
              padding: EdgeInsets.only(
                  top: 28,
                  left: MediaQuery.of(context).size.width * 0.1,
                  right: MediaQuery.of(context).size.width * 0.1),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: TextFormField(
                controller: bloc.heightController,
                keyboardType: TextInputType.number,
                style: GoogleFonts.lato(),
                decoration: InputDecoration(
                  labelText: "Altura (cm) ",
                  suffix: Text("cm"),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                  top: 28,
                  left: MediaQuery.of(context).size.width * 0.1,
                  right: MediaQuery.of(context).size.width * 0.1),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(25))),
              child: TextFormField(
                controller: bloc.weightController,
                keyboardType: TextInputType.number,
                style: GoogleFonts.lato(),
                decoration: InputDecoration(
                    labelText: "Peso (Kg) ", suffix: Text("Kg")),
              ),
            ),
            StreamBuilder(
                stream: bloc.output,
                builder: (context, snapshot) {
                  return Container(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      bloc.result,
                    ),
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

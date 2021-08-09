import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:imc_bloc/controllers/imc.bloc.dart';
import 'package:imc_bloc/controllers/locale.provider.dart';
import 'package:imc_bloc/generated/l10n.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatelessWidget {
  final IMCBLoC bloc = IMCBLoC();

  @override
  Widget build(BuildContext context) {
    bloc.result = Localization.of(context).result_placeholder;
    return Scaffold(
      appBar: AppBar(
        title: Text("BLoC"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 28, left: MediaQuery.of(context).size.width * 0.1, right: MediaQuery.of(context).size.width * 0.1),
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(25))),
              child: TextFormField(
                controller: bloc.heightController,
                keyboardType: TextInputType.number,
                style: GoogleFonts.lato(),
                decoration: InputDecoration(
                  labelText: Localization.of(context).height,
                  suffix: Text("cm"),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 28, left: MediaQuery.of(context).size.width * 0.1, right: MediaQuery.of(context).size.width * 0.1),
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(25))),
              child: TextFormField(
                controller: bloc.weightController,
                keyboardType: TextInputType.number,
                style: GoogleFonts.lato(),
                decoration: InputDecoration(labelText: Localization.of(context).weight, suffix: Text("Kg")),
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
              onPressed: () => bloc.calculaImc(context),
              child: Text(Localization.of(context).calculate),
              style: ButtonStyle(
                alignment: Alignment.center,
              ),
            )
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () => Provider.of<LocaleProvider>(context, listen: false).switchLocale(),
      //   child: Icon(Icons.flag),
      // ),
    );
  }
}

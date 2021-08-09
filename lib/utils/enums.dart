import 'package:flutter/material.dart';
import 'package:imc_bloc/generated/l10n.dart';

enum BodyMassIndexType { thinness, normal, overweight, obesity, severe_obesity }

extension BodyMassIndex on BodyMassIndexType {
  static String category(double imc, BuildContext context) {
    if (imc <= 18.5) {
      return Localization.of(context).thinness;
    } else if (imc <= 24.9) {
      return Localization.of(context).normal;
    } else if (imc <= 29) {
      return Localization.of(context).overweight;
    } else if (imc <= 39.9) {
      return Localization.of(context).obesity;
    } else if (imc >= 40) {
      return Localization.of(context).severe_obesity;
    } else {
      return Localization.of(context).result_placeholder;
    }
  }
}

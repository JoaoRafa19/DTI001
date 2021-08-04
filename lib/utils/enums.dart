
enum BodyMassIndexType { thinness, normal, overweight, obesity, severe_obesity }

extension BodyMassIndex on BodyMassIndexType {
  static String category (double imc) {
    return '';
  }
}

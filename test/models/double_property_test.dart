import 'package:test/test.dart';
import 'package:units_converter/properties/mass.dart';
import 'package:units_converter/properties/temperature.dart';

void main() {
  test('generate formula', () {
    expect(Mass().generateFormula(MASS.ounces), '1 oz = 1 lb * 0.0625');
    expect(Temperature().generateFormula(TEMPERATURE.celsius), '1 °C = (1 °F * 1.8) +32.0');
    expect(Temperature().generateFormula(TEMPERATURE.kelvin), '1 K = 1 °C -273.15');
    expect(Temperature().generateFormula(TEMPERATURE.romer), '1 °Rø = (1 °C * 1.9047619047619047) -14.285714285714286');
  });
}

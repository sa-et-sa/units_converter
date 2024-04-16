import 'package:units_converter/models/property.dart';
import 'package:units_converter/models/ratio_property.dart';
import 'package:units_converter/models/unit.dart';
import 'package:units_converter/properties/mass.dart';
import 'package:units_converter/properties/volume.dart';
import 'package:units_converter/utils/utils.dart';

enum DENSITY {
  gramsPerLiter(MASS.grams, VOLUME.liters),
  gramsPerCubicCentimeter(MASS.grams, VOLUME.cubicCentimeters),
  gramsPerCubicMeter(MASS.grams, VOLUME.cubicMeters),
  gramsPerMilliliter(MASS.grams, VOLUME.milliliters),
  gramsPerDeciliter(MASS.grams, VOLUME.deciliters),
  kilogramsPerLiter(MASS.kilograms, VOLUME.liters),
  kilogramsPerCubicMeter(MASS.kilograms, VOLUME.cubicMeters),
  milligramsPerLiter(MASS.milligrams, VOLUME.liters),
  milligramsPerDeciliter(MASS.milligrams, VOLUME.deciliters),
  milligramsPerMilliliter(MASS.milligrams, VOLUME.milliliters),
  milligramsPerCubicMeter(MASS.milligrams, VOLUME.cubicMeters),
  milligramsPerCubicCentimeter(MASS.milligrams, VOLUME.cubicCentimeters),
  microgramsPerLiter(MASS.micrograms, VOLUME.liters),
  microgramsPerDeciliter(MASS.micrograms, VOLUME.deciliters),
  microgramsPerMilliliter(MASS.micrograms, VOLUME.milliliters),
  nanogramsPerLiter(MASS.nanograms, VOLUME.liters),
  nanogramsPerMilliliter(MASS.nanograms, VOLUME.milliliters),
  picogramsPerLiter(MASS.picograms, VOLUME.liters),
  picogramsPerMilliliter(MASS.picograms, VOLUME.milliliters),
  poundsPerCubicInch(MASS.pounds, VOLUME.cubicInches),
  poundsPerCubicYard(MASS.pounds, VOLUME.cubicYards),
  shortTonsPerCubicYard(MASS.shorttons, VOLUME.cubicYards),
  poundsPerCubicFoot(MASS.pounds, VOLUME.cubicFeet);

  final MASS numerator;
  final VOLUME denominator;
  const DENSITY(this.numerator, this.denominator);
}

class Density extends RatioProperty<DENSITY, MASS, VOLUME> {
  // NOTE: All values of DENSITY must be reported in this variable
  static const Map<DENSITY, String?> _mapSymbols = {
    DENSITY.gramsPerLiter: 'g/l',
    DENSITY.gramsPerCubicCentimeter: 'g/cm³',
    DENSITY.gramsPerMilliliter: 'g/ml',
    DENSITY.gramsPerDeciliter: 'g/dl',
    DENSITY.kilogramsPerLiter: 'kg/l',
    DENSITY.kilogramsPerCubicMeter: 'kg/m³',
    DENSITY.milligramsPerLiter: 'mg/l',
    DENSITY.milligramsPerDeciliter: 'mg/dl',
    DENSITY.milligramsPerMilliliter: 'mg/ml',
    DENSITY.milligramsPerCubicMeter: 'mg/m³',
    DENSITY.milligramsPerCubicCentimeter: 'mg/cm³',
    DENSITY.microgramsPerLiter: 'µg/l',
    DENSITY.microgramsPerDeciliter: 'µg/dl',
    DENSITY.microgramsPerMilliliter: 'µg/ml',
    DENSITY.nanogramsPerLiter: 'ng/l',
    DENSITY.nanogramsPerMilliliter: 'ng/ml',
    DENSITY.picogramsPerLiter: 'pg/l',
    DENSITY.picogramsPerMilliliter: 'pg/ml',
    DENSITY.poundsPerCubicInch: 'lb/in³',
    DENSITY.poundsPerCubicYard: 'lb/yd³',
    DENSITY.shortTonsPerCubicYard: 'short ton/yd³',
    DENSITY.poundsPerCubicFoot: 'lb/ft³',
    DENSITY.gramsPerCubicMeter: 'g/m³',
  };

  ///Class for density conversions, e.g. if you want to convert 1 gram per liter
  ///in kilograms per liter:
  ///```dart
  ///var density = Density(removeTrailingZeros: false);
  ///density.convert(Unit(DENSITY.gramsPerLiter, value: 1));
  ///print(DENSITY.kilogramsPerLiter);
  /// ```
  Density({super.significantFigures, super.removeTrailingZeros, super.useScientificNotation, name})
      : assert(_mapSymbols.length == DENSITY.values.length),
        super(
            name: name ?? PROPERTY.density,
            numeratorProperty: getPropertyFromEnum(DENSITY.values[0].numerator)!,
            denominatorProperty: getPropertyFromEnum(DENSITY.values[0].denominator)!,
            mapSymbols: _mapSymbols);

  Unit get gramsPerCubicCentimeter => getUnit(DENSITY.gramsPerCubicCentimeter);
  Unit get gramsPerCubicMeter => getUnit(DENSITY.gramsPerCubicMeter);
  Unit get gramsPerDeciliter => getUnit(DENSITY.gramsPerDeciliter);
  Unit get gramsPerLiter => getUnit(DENSITY.gramsPerLiter);
  Unit get gramsPerMilliliter => getUnit(DENSITY.gramsPerMilliliter);
  Unit get kilogramsPerCubicMeter => getUnit(DENSITY.kilogramsPerCubicMeter);
  Unit get kilogramsPerLiter => getUnit(DENSITY.kilogramsPerLiter);
  Unit get microgramsPerDeciliter => getUnit(DENSITY.microgramsPerDeciliter);
  Unit get microgramsPerLiter => getUnit(DENSITY.microgramsPerLiter);
  Unit get microgramsPerMilliliter => getUnit(DENSITY.microgramsPerMilliliter);
  Unit get milligramsPerCubicCentimeter => getUnit(DENSITY.milligramsPerCubicCentimeter);
  Unit get milligramsPerCubicMeter => getUnit(DENSITY.milligramsPerCubicMeter);
  Unit get milligramsPerDeciliter => getUnit(DENSITY.milligramsPerDeciliter);
  Unit get milligramsPerLiter => getUnit(DENSITY.milligramsPerLiter);
  Unit get milligramsPerMilliliter => getUnit(DENSITY.milligramsPerMilliliter);
  Unit get nanogramsPerLiter => getUnit(DENSITY.nanogramsPerLiter);
  Unit get nanogramsPerMilliliter => getUnit(DENSITY.nanogramsPerMilliliter);
  Unit get picogramsPerLiter => getUnit(DENSITY.picogramsPerLiter);
  Unit get picogramsPerMilliliter => getUnit(DENSITY.picogramsPerMilliliter);
  Unit get poundsPerCubicFoot => getUnit(DENSITY.poundsPerCubicFoot);
  Unit get poundsPerCubicInch => getUnit(DENSITY.poundsPerCubicInch);
  Unit get poundsPerCubicYard => getUnit(DENSITY.poundsPerCubicYard);
  Unit get shortTonsPerCubicYard => getUnit(DENSITY.shortTonsPerCubicYard);
}

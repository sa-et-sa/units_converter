// ignore_for_file: camel_case_types

import 'package:units_converter/models/conversion_node.dart';
import 'package:units_converter/models/double_property.dart';
import 'package:units_converter/models/unit.dart';

enum MAPLE_PRODUCTS {
  imperialGallonsSyrup,
  lbsSyrup,
  kilogramSyrup,
  lbsButter,
  kilogramButter,
  lbsSnowTaffy,
  kilogramSnowTaffy,
  lbsSoftSugar,
  kilogramSoftSugar,
  lbsHardSugar,
  kilogramHardSugar,
  lbsGranulatedSugar,
  kilogramGranulatedSugar,
  taffyAndOrButterCones,
  literSyrup,
}

class MapleProducts extends DoubleProperty<MAPLE_PRODUCTS> {
  ///Class for Maple syrup conversions, e.g. if you want to convert 1 liter of syrup to pounds
  ///Source : https://www.agrireseau.net/erable/documents/equivalence.xls
  ///```dart
  ///var pounds = Maple().convert(Unit(MAPLE.literSyrup, value: 1), MAPLE.lbsSyrup);
  /// ```
  MapleProducts({super.removeTrailingZeros, super.useScientificNotation, name})
      : super(
          name: name ?? MAPLE_PRODUCTS.imperialGallonsSyrup,
          significantFigures: 4,
          mapSymbols: {
            MAPLE_PRODUCTS.imperialGallonsSyrup: 'gal',
            MAPLE_PRODUCTS.lbsSyrup: 'lbs',
            MAPLE_PRODUCTS.kilogramSyrup: 'kg',
            MAPLE_PRODUCTS.lbsButter: 'lbs',
            MAPLE_PRODUCTS.kilogramButter: 'kg',
            MAPLE_PRODUCTS.lbsSnowTaffy: 'lbs',
            MAPLE_PRODUCTS.kilogramSnowTaffy: 'kg',
            MAPLE_PRODUCTS.lbsSoftSugar: 'lbs',
            MAPLE_PRODUCTS.kilogramSoftSugar: 'kg',
            MAPLE_PRODUCTS.lbsHardSugar: 'lbs',
            MAPLE_PRODUCTS.kilogramHardSugar: 'kg',
            MAPLE_PRODUCTS.lbsGranulatedSugar: 'lbs',
            MAPLE_PRODUCTS.kilogramGranulatedSugar: 'kg',
            MAPLE_PRODUCTS.taffyAndOrButterCones: 'cones',
            MAPLE_PRODUCTS.literSyrup: 'L',
          },
          conversionTree: ConversionNode(name: MAPLE_PRODUCTS.imperialGallonsSyrup, children: [
            ConversionNode(
              name: MAPLE_PRODUCTS.literSyrup,
              coefficientProduct: 1 / 4.54596,
            ),
            ConversionNode(coefficientProduct: 1 / 13.2476, name: MAPLE_PRODUCTS.lbsSyrup),
            ConversionNode(coefficientProduct: 1 / 6.009, name: MAPLE_PRODUCTS.kilogramSyrup),
            ConversionNode(coefficientProduct: 1 / 10.5, name: MAPLE_PRODUCTS.lbsButter), //	Livres de beurre2
            ConversionNode(coefficientProduct: 1 / 4.8, name: MAPLE_PRODUCTS.kilogramButter), //	Kg de beurre2
            ConversionNode(
                coefficientProduct: 1 / 10.4, name: MAPLE_PRODUCTS.lbsSnowTaffy), //	Livres de tire sur neige3
            ConversionNode(
                coefficientProduct: 1 / 4.7, name: MAPLE_PRODUCTS.kilogramSnowTaffy), // 	Kg de tire sur neige3
            ConversionNode(
                coefficientProduct: 1 / 10.2,
                name: MAPLE_PRODUCTS.lbsSoftSugar), //	Livres de tire en pot.sucre mou. bonbon mou4
            ConversionNode(
                coefficientProduct: 1 / 4.6,
                name: MAPLE_PRODUCTS.kilogramSoftSugar), // 	Kg de tire en pot. sucre mou. bonbon mou4
            ConversionNode(coefficientProduct: 1 / 9.2, name: MAPLE_PRODUCTS.lbsHardSugar), //	Livres de sucre dur5
            ConversionNode(coefficientProduct: 1 / 4.2, name: MAPLE_PRODUCTS.kilogramHardSugar), //	Kg de sucre dur5
            ConversionNode(
                coefficientProduct: 1 / 8.9, name: MAPLE_PRODUCTS.lbsGranulatedSugar), //	Livres de sucre granulé6
            ConversionNode(
                coefficientProduct: 1 / 4.0, name: MAPLE_PRODUCTS.kilogramGranulatedSugar), //	Kg de sucre granulé6
            ConversionNode(
                coefficientProduct: 1 / 180.0,
                name: MAPLE_PRODUCTS.taffyAndOrButterCones), //Cornets de tire. beurre. ou de beurre et tire
          ]),
        );

  Unit get imperialGallonsSyrup => getUnit(MAPLE_PRODUCTS.imperialGallonsSyrup);
  Unit get kilogramButter => getUnit(MAPLE_PRODUCTS.kilogramButter);
  Unit get kilogramGranulatedSugar => getUnit(MAPLE_PRODUCTS.kilogramGranulatedSugar);
  Unit get kilogramHardSugar => getUnit(MAPLE_PRODUCTS.kilogramHardSugar);
  Unit get kilogramSnowTaffy => getUnit(MAPLE_PRODUCTS.kilogramSnowTaffy);
  Unit get kilogramSoftSugar => getUnit(MAPLE_PRODUCTS.kilogramSoftSugar);
  Unit get kilogramSyrup => getUnit(MAPLE_PRODUCTS.kilogramSyrup);
  Unit get lbsButter => getUnit(MAPLE_PRODUCTS.lbsButter);
  Unit get lbsGranulatedSugar => getUnit(MAPLE_PRODUCTS.lbsGranulatedSugar);
  Unit get lbsHardSugar => getUnit(MAPLE_PRODUCTS.lbsHardSugar);
  Unit get lbsSnowTaffy => getUnit(MAPLE_PRODUCTS.lbsSnowTaffy);
  Unit get lbsSoftSugar => getUnit(MAPLE_PRODUCTS.lbsSoftSugar);
  Unit get lbsSyrup => getUnit(MAPLE_PRODUCTS.lbsSyrup);
  Unit get literSyrup => getUnit(MAPLE_PRODUCTS.literSyrup);
  Unit get taffyAndOrButterCones => getUnit(MAPLE_PRODUCTS.taffyAndOrButterCones);
}

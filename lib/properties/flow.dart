import 'package:units_converter/models/conversion_node.dart';
import 'package:units_converter/models/double_property.dart';
import 'package:units_converter/models/property.dart';
import 'package:units_converter/models/unit.dart';

//Available FLOW units
enum FLOW {
  litersPerDay,
  litersPerHour,
  litersPerMinute,
  litersPerSecond,
  usGallonsPerDay,
  usGallonsPerHour,
  usGallonsPerMinute,
  usGallonsPerSecond,
  imperialGallonsPerDay,
  imperialGallonsPerHour,
  imperialGallonsPerMinute,
  imperialGallonsPerSecond,
}

class Flow extends DoubleProperty<FLOW> {
  ///Class for flow conversions, e.g. if you want to convert 1 l/d in usgal/h:

  Flow({super.significantFigures, super.removeTrailingZeros, super.useScientificNotation, name})
      : super(
          name: name ?? PROPERTY.flow,
          mapSymbols: {
            FLOW.imperialGallonsPerDay: 'imp gal/d',
            FLOW.imperialGallonsPerHour: 'imp gal/h',
            FLOW.imperialGallonsPerMinute: 'imp gal/min',
            FLOW.imperialGallonsPerSecond: 'imp gal/s',
            FLOW.usGallonsPerDay: 'US gal/d',
            FLOW.usGallonsPerHour: 'US gal/h',
            FLOW.usGallonsPerMinute: 'US gal/min',
            FLOW.usGallonsPerSecond: 'US gal/s',
            FLOW.litersPerDay: 'l/d',
            FLOW.litersPerHour: 'l/h',
            FLOW.litersPerMinute: 'l/min',
            FLOW.litersPerSecond: 'l/s',
          },
          conversionTree: ConversionNode(name: FLOW.litersPerSecond, children: [
            ConversionNode(name: FLOW.usGallonsPerSecond, coefficientProduct: 0.2641720523581484, children: [
              ConversionNode(name: FLOW.usGallonsPerMinute, coefficientProduct: 60),
              ConversionNode(name: FLOW.usGallonsPerHour, coefficientProduct: 60 * 60),
              ConversionNode(name: FLOW.usGallonsPerDay, coefficientProduct: 24 * 60 * 60),
            ]),
            ConversionNode(name: FLOW.imperialGallonsPerSecond, coefficientProduct: 0.219969152, children: [
              ConversionNode(name: FLOW.imperialGallonsPerMinute, coefficientProduct: 60),
              ConversionNode(name: FLOW.imperialGallonsPerHour, coefficientProduct: 60 * 60),
              ConversionNode(name: FLOW.imperialGallonsPerDay, coefficientProduct: 24 * 60 * 60),
            ]),
            ConversionNode(coefficientProduct: 60, name: FLOW.litersPerMinute),
            ConversionNode(coefficientProduct: 60 * 60, name: FLOW.litersPerHour),
            ConversionNode(coefficientProduct: 24 * 60 * 60, name: FLOW.litersPerDay),
          ]),
        );

  Unit get imperialGallonsPerDay => getUnit(FLOW.imperialGallonsPerDay);
  Unit get imperialGallonsPerHour => getUnit(FLOW.imperialGallonsPerHour);
  Unit get imperialGallonsPerMinute => getUnit(FLOW.imperialGallonsPerMinute);
  Unit get imperialGallonsPerSecond => getUnit(FLOW.imperialGallonsPerSecond);
  Unit get litersPerDay => getUnit(FLOW.litersPerDay);
  Unit get litersPerHour => getUnit(FLOW.litersPerHour);
  Unit get litersPerMinute => getUnit(FLOW.litersPerMinute);
  Unit get litersPerSecond => getUnit(FLOW.litersPerSecond);
  Unit get usGallonsPerDay => getUnit(FLOW.usGallonsPerDay);
  Unit get usGallonsPerHour => getUnit(FLOW.usGallonsPerHour);
  Unit get usGallonsPerMinute => getUnit(FLOW.usGallonsPerMinute);
  Unit get usGallonsPerSecond => getUnit(FLOW.usGallonsPerSecond);
}

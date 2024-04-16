import 'dart:math';

import 'package:units_converter/units_converter.dart';
import 'package:units_converter/utils/utils.dart';

extension ConvertUnitNum on num {
  double? convertFromTo(dynamic from, dynamic to, {int? precision}) {
    assert(from.runtimeType == to.runtimeType, 'from and to must be of the same type, e.g. LENGTH');
    Property? property = getPropertyFromEnum(from);
    if (property == null) {
      return null;
    } else {
      property.convert(from, toDouble());
      if (precision != null) {
        double? value = property.getUnit(to).value;
        if (value != null && value < pow(10, -precision)) {
          return value;
        } else {
          return property.getUnit(to).value?.roundOffTo(precision);
        }
      } else {
        return property.getUnit(to).value;
      }
    }
  }

  double roundOffTo(int precision) {
    var precisionWithPow10 = pow(10, precision);
    return (this * precisionWithPow10).round() / precisionWithPow10;
  }
}

extension ConvertUnitString on String {
  String? convertFromTo(NUMERAL_SYSTEMS from, NUMERAL_SYSTEMS to) {
    Property property = NumeralSystems()..convert(from, this);
    return property.getUnit(to).stringValue;
  }
}

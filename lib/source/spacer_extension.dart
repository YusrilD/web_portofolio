import 'package:flutter/widgets.dart';

extension spaceXY on double {
  SizedBox get spaceX => SizedBox(
        width: this,
      );
  SizedBox get spaceY => SizedBox(
        height: this,
      );
}

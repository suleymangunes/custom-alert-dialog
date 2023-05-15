import 'package:flutter/material.dart';

extension ScreenSize on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
}

extension AlertSizes on BuildContext {
  double get alertHeight => width * 0.40;
  double get alertWidht => width * 0.95;
  double get circleAvatarRadius => width * 0.2;
  double get alertAvatarSpace => width * 0.04;
  double get alertDialogHeight => width * 0.32;
  double get alertDialogWidht => width * 0.91;
  double get iconSize => width * 0.24;
  double get textWidth => width * 0.55;
}

extension FloatSpacers on BuildContext {
  SizedBox get floatWidthSpace => SizedBox(width: width * 0.1);
  SizedBox get titlePadSpace => SizedBox(height: width * 0.015);
  SizedBox get circleAvatarSpace => SizedBox(width: alertAvatarSpace);
}

extension PaddingsAlertDialog on BuildContext {
  EdgeInsets get imagePading => EdgeInsets.all(width * 0.03);
}

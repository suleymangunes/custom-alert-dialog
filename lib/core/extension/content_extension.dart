import 'package:flutter/material.dart';

extension ContentExtension on BuildContext {
  double get titleHeight => Theme.of(this).textTheme.titleLarge!.fontSize! * 1;
  double get descriptionHeight => Theme.of(this).textTheme.bodySmall!.fontSize! * 3;
  double get actionButtonsHeight => Theme.of(this).textTheme.bodySmall!.fontSize! * 3;
}

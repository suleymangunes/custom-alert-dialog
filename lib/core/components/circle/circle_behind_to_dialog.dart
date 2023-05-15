import 'package:custom_dialog/product/enum/dialog_type.dart';
import 'package:custom_dialog/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

class CircleBehindToAlert extends StatelessWidget {
  const CircleBehindToAlert({
    super.key,
    required this.dialogType,
  });
  final DialogType dialogType;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: dialogType.getColor,
      radius: context.circleAvatarRadius,
    );
  }
}

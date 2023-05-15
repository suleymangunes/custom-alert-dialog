import 'package:custom_dialog/core/extension/context_extension.dart';
import 'package:custom_dialog/product/enum/dialog_type.dart';
import 'package:flutter/material.dart';

class AlertDialogImage extends StatelessWidget {
  const AlertDialogImage({
    super.key,
    required this.dialogType,
  });

  final DialogType dialogType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.imagePading,
      child: Image.asset(dialogType.getImage),
    );
  }
}

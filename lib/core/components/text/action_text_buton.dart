import 'package:custom_dialog/product/enum/dialog_type.dart';
import 'package:flutter/material.dart';

class ActionsTextButton extends StatelessWidget {
  const ActionsTextButton({
    super.key,
    required this.text,
    required this.function,
    required this.dialogType,
  });
  final void Function() function;
  final String text;
  final DialogType dialogType;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: function,
      style: ButtonStyle(
        overlayColor: MaterialStateProperty.all(dialogType.getShadeColor),
        padding: MaterialStateProperty.all(EdgeInsets.zero),
      ),
      child: Text(
        text,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}

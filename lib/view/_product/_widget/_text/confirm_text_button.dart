import 'package:custom_dialog/core/components/text/action_text_buton.dart';
import 'package:custom_dialog/product/enum/dialog_type.dart';
import 'package:custom_dialog/product/keys/project_keys.dart';
import 'package:flutter/material.dart';

class ConfirmTextButton extends StatelessWidget {
  const ConfirmTextButton({
    super.key,
    required this.okFunction,
    required this.dialogType,
  });
  final void Function() okFunction;
  final DialogType dialogType;

  @override
  Widget build(BuildContext context) {
    return ActionsTextButton(
      text: ProjectKeys.ok,
      function: okFunction,
      dialogType: dialogType,
    );
  }
}

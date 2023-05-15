import 'package:custom_dialog/core/components/text/action_text_buton.dart';
import 'package:custom_dialog/product/enum/dialog_type.dart';
import 'package:custom_dialog/product/keys/project_keys.dart';
import 'package:flutter/material.dart';

class CancelTextButton extends StatelessWidget {
  const CancelTextButton({
    super.key,
    required this.cancelFunction,
    required this.dialogType,
  });
  final void Function() cancelFunction;
  final DialogType dialogType;

  @override
  Widget build(BuildContext context) {
    return ActionsTextButton(
      text: ProjectKeys.cancel,
      function: cancelFunction,
      dialogType: dialogType,
    );
  }
}

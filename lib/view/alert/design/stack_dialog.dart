import 'package:custom_dialog/core/components/circle/circle_behind_to_dialog.dart';
import 'package:custom_dialog/view/alert/design/alert_dialog_view.dart';
import 'package:flutter/material.dart';
import 'package:custom_dialog/product/enum/dialog_type.dart';
import 'package:custom_dialog/core/extension/context_extension.dart';

class StackDialog extends StatelessWidget {
  const StackDialog({
    super.key,
    required this.title,
    required this.description,
    required this.dialogType,
    required this.okFunction,
    required this.cancelFunction,
  });
  final String title;
  final String description;
  final DialogType dialogType;
  final void Function() okFunction;
  final void Function() cancelFunction;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: context.alertHeight,
        width: context.alertWidht,
        child: Stack(
          children: [
            CircleBehindToAlert(dialogType: dialogType),
            AlertDialogView(
              dialogType: dialogType,
              title: title,
              description: description,
              cancelFunction: cancelFunction,
              okFunction: okFunction,
            )
          ],
        ),
      ),
    );
  }
}

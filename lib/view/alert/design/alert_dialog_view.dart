import 'package:custom_dialog/core/extension/context_extension.dart';
import 'package:custom_dialog/product/enum/dialog_type.dart';
import 'package:custom_dialog/view/alert/design/card/alert_dialog_card.dart';
import 'package:flutter/material.dart';

class AlertDialogView extends StatelessWidget {
  const AlertDialogView({
    super.key,
    required this.dialogType,
    required this.title,
    required this.description,
    required this.cancelFunction,
    required this.okFunction,
  });

  final DialogType dialogType;
  final String title;
  final String description;
  final void Function() cancelFunction;
  final void Function() okFunction;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: context.alertAvatarSpace,
      top: context.alertAvatarSpace,
      child: SizedBox(
        height: context.alertDialogHeight,
        width: context.alertDialogWidht,
        child: AlertDialogCard(
          dialogType: dialogType,
          title: title,
          description: description,
          cancelFunction: cancelFunction,
          okFunction: okFunction,
        ),
      ),
    );
  }
}

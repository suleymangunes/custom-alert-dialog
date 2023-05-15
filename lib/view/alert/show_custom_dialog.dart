import 'package:custom_dialog/alert/making_dialog.dart';
import 'package:custom_dialog/enum/dialog_type.dart';
import 'package:flutter/material.dart';

class ShowCustomDialog {
  late final BuildContext context;
  late final String title;
  late final String description;
  late final DialogType dialogType;
  late final void Function() okFunction;
  late final void Function() cancelFunction;

  ShowCustomDialog({
    required this.context,
    required this.title,
    required this.description,
    required this.dialogType,
    required this.okFunction,
    required this.cancelFunction,
  }) {
    myShowDialog(context: context);
  }
  void myShowDialog({required BuildContext context}) {
    showDialog(
      context: context,
      builder: (context) {
        return MakingDialog(
          description: description,
          dialogType: dialogType,
          title: title,
          okFunction: okFunction,
          cancelFunction: cancelFunction,
        );
      },
    );
  }
}

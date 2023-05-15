import 'package:custom_dialog/alert/making_dialog.dart';
import 'package:custom_dialog/enum/dialog_type.dart';
import 'package:flutter/material.dart';

class ShowCustomDialog {
  late final BuildContext context;
  late final String title;
  late final String description;
  late final DialogType dialogType;
  ShowCustomDialog({
    required this.context,
    required this.title,
    required this.description,
    required this.dialogType,
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
        );
      },
    );
  }
}

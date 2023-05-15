import 'package:custom_dialog/core/extension/alert_card_elevation.dart';
import 'package:custom_dialog/core/extension/rectangle_border_radius.dart';
import 'package:custom_dialog/product/enum/dialog_type.dart';
import 'package:custom_dialog/view/alert/design/content/alert_dialog_content.dart';
import 'package:flutter/material.dart';

class AlertDialogCard extends StatelessWidget {
  const AlertDialogCard({
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
    return Card(
      elevation: context.alertCardElevation,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: context.leftRadius,
          topLeft: context.leftRadius,
          bottomRight: context.rightRadius,
          topRight: context.rightRadius,
        ),
      ),
      child: AlertDialogContent(
        dialogType: dialogType,
        title: title,
        description: description,
        cancelFunction: cancelFunction,
        okFunction: okFunction,
      ),
    );
  }
}

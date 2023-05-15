// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:custom_dialog/alert/stack_dialog.dart';
import 'package:custom_dialog/enum/dialog_type.dart';

class MakingDialog extends StatelessWidget {
  const MakingDialog({
    Key? key,
    required this.title,
    required this.description,
    required this.dialogType,
  }) : super(key: key);
  final String title;
  final String description;
  final DialogType dialogType;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: const BoxConstraints(minWidth: 280),
      child: Material(
        color: Colors.transparent,
        elevation: 1,
        shape: DialogTheme.of(context).shape,
        type: MaterialType.card,
        clipBehavior: Clip.none,
        child: StackDialog(
          description: description,
          dialogType: dialogType,
          title: title,
        ),
      ),
    );
  }
}

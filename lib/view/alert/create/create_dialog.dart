import 'package:flutter/material.dart';
import 'package:custom_dialog/view/alert/design/stack_dialog.dart';
import 'package:custom_dialog/product/enum/dialog_type.dart';

class CreateDialog extends StatelessWidget {
  const CreateDialog({
    Key? key,
    required this.title,
    required this.description,
    required this.dialogType,
    required this.okFunction,
    required this.cancelFunction,
  }) : super(key: key);
  final String title;
  final String description;
  final DialogType dialogType;
  final void Function() okFunction;
  final void Function() cancelFunction;

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
          okFunction: okFunction,
          cancelFunction: cancelFunction,
        ),
      ),
    );
  }
}

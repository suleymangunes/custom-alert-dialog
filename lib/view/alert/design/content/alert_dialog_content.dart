import 'package:custom_dialog/core/extension/content_extension.dart';
import 'package:custom_dialog/core/extension/context_extension.dart';
import 'package:custom_dialog/product/enum/dialog_type.dart';
import 'package:custom_dialog/product/widget/text/description_text_alert.dart';
import 'package:custom_dialog/product/widget/text/title_text_alert.dart';
import 'package:custom_dialog/view/_product/_widget/_text/cancel_text_button.dart';
import 'package:custom_dialog/view/_product/_widget/_text/confirm_text_button.dart';
import 'package:custom_dialog/view/_product/_widget/image/alert_dialog_image.dart';
import 'package:flutter/cupertino.dart';

class AlertDialogContent extends StatelessWidget {
  const AlertDialogContent({
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
    return Row(
      children: [
        context.circleAvatarSpace,
        _alertIcon(context),
        context.circleAvatarSpace,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            context.titlePadSpace,
            _alertTitle(context),
            _alertDescription(context),
            _alertActions(context),
          ],
        ),
      ],
    );
  }

  SizedBox _alertActions(BuildContext context) {
    return SizedBox(
      height: context.actionButtonsHeight,
      child: Row(
        children: [
          CancelTextButton(cancelFunction: cancelFunction, dialogType: dialogType),
          ConfirmTextButton(okFunction: okFunction, dialogType: dialogType),
        ],
      ),
    );
  }

  SizedBox _alertDescription(BuildContext context) {
    return SizedBox(
      height: context.descriptionHeight,
      width: context.textWidth,
      child: DescriptionTextAlert(description: description),
    );
  }

  SizedBox _alertTitle(BuildContext context) {
    return SizedBox(
      height: context.titleHeight,
      width: context.textWidth,
      child: TitleTextAlert(title: title),
    );
  }

  SizedBox _alertIcon(BuildContext context) {
    return SizedBox(
      height: context.iconSize,
      width: context.iconSize,
      child: AlertDialogImage(dialogType: dialogType),
    );
  }
}

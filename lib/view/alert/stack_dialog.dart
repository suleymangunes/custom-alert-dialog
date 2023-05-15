import 'package:custom_dialog/core/components/circle/circle_behind_to_dialog.dart';
import 'package:custom_dialog/core/extension/content_extension.dart';
import 'package:custom_dialog/product/widget/text/description_text_alert.dart';
import 'package:custom_dialog/product/widget/text/title_text_alert.dart';
import 'package:custom_dialog/view/_product/_widget/_text/cancel_text_button.dart';
import 'package:custom_dialog/view/_product/_widget/_text/confirm_text_button.dart';
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
            Positioned(
              left: context.alertAvatarSpace,
              top: context.alertAvatarSpace,
              child: SizedBox(
                height: context.alertDialogHeight,
                width: context.alertDialogWidht,
                child: Card(
                  elevation: 10,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(150),
                      topLeft: Radius.circular(150),
                      bottomRight: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                  margin: EdgeInsets.zero,
                  child: Row(
                    children: [
                      SizedBox(
                        width: context.alertAvatarSpace,
                      ),
                      SizedBox(
                        height: context.iconSize,
                        width: context.iconSize,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(dialogType.getImage),
                        ),
                      ),
                      SizedBox(
                        width: context.alertAvatarSpace,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          context.titlePadSpace,
                          SizedBox(
                            height: context.titleHeight,
                            width: context.textWidth,
                            child: TitleTextAlert(title: title),
                          ),
                          SizedBox(
                            height: context.descriptionHeight,
                            width: context.textWidth,
                            child: DescriptionTextAlert(description: description),
                          ),
                          SizedBox(
                            height: context.actionButtonsHeight,
                            child: Row(
                              children: [
                                CancelTextButton(cancelFunction: cancelFunction, dialogType: dialogType),
                                ConfirmTextButton(okFunction: okFunction, dialogType: dialogType),
                              ],
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

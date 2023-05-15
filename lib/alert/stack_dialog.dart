// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:custom_dialog/enum/dialog_type.dart';
import 'package:custom_dialog/extension/context_extension.dart';

class StackDialog extends StatelessWidget {
  const StackDialog({
    super.key,
    required this.title,
    required this.description,
    required this.dialogType,
  });
  final String title;
  final String description;
  final DialogType dialogType;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: context.alertHeight,
        width: context.alertWidht,
        child: Stack(
          children: [
            Positioned(
              child: CircleAvatar(
                backgroundColor: dialogType.getColor,
                radius: context.circleAvatarRadius,
              ),
            ),
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
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            height: Theme.of(context).textTheme.titleLarge?.fontSize,
                            width: context.textWidth,
                            child: Text(
                              title,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                          SizedBox(
                            height: Theme.of(context).textTheme.bodySmall!.fontSize! * 3,
                            width: context.textWidth,
                            child: SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              child: Text(
                                description,
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: Theme.of(context).textTheme.bodySmall!.fontSize! * 3,
                            child: Row(
                              children: [
                                TextButton(
                                  style: ButtonStyle(
                                    overlayColor: MaterialStateProperty.all(dialogType.getShadeColor),
                                    padding: MaterialStateProperty.all(EdgeInsets.zero),
                                  ),
                                  onPressed: () {},
                                  child: Text(
                                    "Cancel",
                                    style: Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    overlayColor: MaterialStateProperty.all(dialogType.getShadeColor),
                                  ),
                                  child: Text(
                                    "Ok",
                                    style: Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ),
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

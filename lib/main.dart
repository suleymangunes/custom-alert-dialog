import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomeView());
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          SpeacialCustomClass(context: context, title: "merhaba", description: "aciklama");
        },
      ),
    );
  }
}

class SpeacialCustomClass {
  late final BuildContext context;
  late final String title;
  late final String description;
  SpeacialCustomClass({
    required this.context,
    required this.title,
    required this.description,
  }) {
    myShowDialog(context: context);
  }
  void myShowDialog({required BuildContext context}) {
    showDialog(
      context: context,
      builder: (context) {
        return const SpeacialCustomSomething();
      },
    );
  }
}

class SpeacialCustomSomething extends StatelessWidget {
  const SpeacialCustomSomething({super.key});

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
        child: const StackDialog(),
      ),
    );
  }
}

class StackDialog extends StatelessWidget {
  const StackDialog({
    super.key,
  });

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
                backgroundColor: const Color.fromARGB(255, 255, 57, 42),
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
                  )),
                  margin: EdgeInsets.zero,
                  color: Colors.white,
                  child: Row(
                    children: [
                      SizedBox(
                        width: context.alertAvatarSpace,
                      ),
                      Icon(
                        Icons.error,
                        color: const Color.fromARGB(255, 255, 57, 42),
                        size: context.iconSize,
                        shadows: const [
                          Shadow(
                            color: Colors.black,
                            offset: Offset(2, 2),
                          ),
                        ],
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
                            // height: MediaQuery.of(context).size.width * 0.06,
                            height: Theme.of(context).textTheme.titleLarge?.fontSize,
                            width: context.textWidth,
                            child: Text(
                              "Danger!",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: Theme.of(context).textTheme.titleMedium?.copyWith(
                                    fontWeight: FontWeight.w500,
                                  ),
                            ),
                          ),
                          SizedBox(
                            // height: MediaQuery.of(context).size.width * 0.09,
                            height: Theme.of(context).textTheme.bodySmall!.fontSize! * 3,
                            width: context.textWidth,
                            child: SingleChildScrollView(
                              physics: const BouncingScrollPhysics(),
                              child: Text(
                                "This is description for alert.This is description for alert.",
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
                                    overlayColor: MaterialStateProperty.all(Colors.red.shade100),
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
                                    overlayColor: MaterialStateProperty.all(Colors.red.shade100),
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

extension ScreenSize on BuildContext {
  double get height => MediaQuery.of(this).size.height;
  double get width => MediaQuery.of(this).size.width;
}

extension AlertSizes on BuildContext {
  double get alertHeight => width * 0.40;
  double get alertWidht => width * 0.95;
  double get circleAvatarRadius => width * 0.2;
  double get alertAvatarSpace => width * 0.04;
  double get alertDialogHeight => width * 0.32;
  double get alertDialogWidht => width * 0.91;
  double get iconSize => width * 0.24;
  double get textWidth => width * 0.55;
}

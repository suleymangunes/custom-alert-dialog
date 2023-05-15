import 'package:custom_dialog/alert/show_custom_dialog.dart';
import 'package:custom_dialog/enum/dialog_type.dart';
import 'package:custom_dialog/extension/context_extension.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.light(), darkTheme: ThemeData.dark(), themeMode: ThemeMode.dark, home: const HomeView());
  }
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Custom Alert Dialog'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            backgroundColor: DialogType.danger.getColor,
            onPressed: () {
              ShowCustomDialog(
                context: context,
                title: "Danger.",
                description: "This is description for alert.This is description for alert.",
                dialogType: DialogType.danger,
                okFunction: () {},
                cancelFunction: () {},
              );
            },
          ),
          context.floatWidthSpace,
          FloatingActionButton(
            backgroundColor: DialogType.warning.getColor,
            onPressed: () {
              ShowCustomDialog(
                context: context,
                title: "Warning!",
                description: "This is description for alert.This is description for alert.",
                dialogType: DialogType.warning,
                okFunction: () {},
                cancelFunction: () {},
              );
            },
          ),
          context.floatWidthSpace,
          FloatingActionButton(
            backgroundColor: DialogType.done.getColor,
            onPressed: () {
              ShowCustomDialog(
                context: context,
                title: "Done!",
                description: "This is description for alert.This is description for alert.",
                dialogType: DialogType.done,
                okFunction: () {},
                cancelFunction: () {},
              );
            },
          ),
        ],
      ),
    );
  }
}

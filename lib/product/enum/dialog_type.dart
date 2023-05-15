import 'package:flutter/material.dart';

enum DialogType {
  danger,
  done,
  warning,
}

extension DialogImages on DialogType {
  String get getImage {
    switch (this) {
      case DialogType.danger:
        return "assets/icons/$name.png";
      case DialogType.done:
        return "assets/icons/$name.png";
      case DialogType.warning:
        return "assets/icons/$name.png";
    }
  }
}

extension DialogIcons on DialogType {
  IconData get getIcon {
    switch (this) {
      case DialogType.danger:
        return Icons.error;
      case DialogType.done:
        return Icons.done;
      case DialogType.warning:
        return Icons.warning;
    }
  }
}

extension DialogColors on DialogType {
  Color get getColor {
    switch (this) {
      case DialogType.danger:
        return const Color.fromRGBO(238, 31, 37, 1);

      case DialogType.done:
        return const Color.fromRGBO(105, 189, 69, 1);

      case DialogType.warning:
        return const Color.fromRGBO(255, 242, 0, 1);
    }
  }
}

extension DialogShadeColors on DialogType {
  Color get getShadeColor {
    switch (this) {
      case DialogType.danger:
        return Colors.red.shade100;

      case DialogType.done:
        return Colors.green.shade100;

      case DialogType.warning:
        return Colors.yellow.shade100;
    }
  }
}

import 'package:flutter/material.dart';

class TitleTextAlert extends StatelessWidget {
  const TitleTextAlert({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
            fontWeight: FontWeight.w500,
          ),
    );
  }
}

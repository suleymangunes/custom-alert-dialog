import 'package:flutter/material.dart';

class DescriptionTextAlert extends StatelessWidget {
  const DescriptionTextAlert({super.key, required this.description});
  final String description;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Text(
        description,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}

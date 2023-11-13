// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

import '../../../core/colors/colors.dart';

class MainCustomButton extends StatelessWidget {
  const MainCustomButton({
    Key? key,
    required this.icon,
    required this.title,
    this.iconSize = 30.0,
    this.textSize = 18,
  }) : super(key: key);
  final IconData icon;
  final String title;
  final double iconSize;
  final double textSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          icon,
          color: kWhiteColor,
          size: iconSize,
        ),
        Text(
          title,
          style: TextStyle(fontSize: textSize),
        )
      ],
    );
  }
}

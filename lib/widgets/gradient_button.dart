import 'dart:io';
import 'package:flutter/material.dart';

import '../constants.dart';

class GradientButton extends StatelessWidget {
  final String label;
  final Function onTap;
  final bool isCurved;

  const GradientButton({
    @required this.context,
    @required this.label,
    @required this.onTap,
    @required this.isCurved,
  });

  final BuildContext context;

  BorderRadius borderRadius(bool isCurved) {
    if (isCurved) {
      return BorderRadius.all(
        Radius.circular(50.0),
      );
    } else {
      return BorderRadius.zero;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Text(
          label,
          style: kTitleTextStyle.copyWith(fontSize: 26.0),
        ),
        alignment: Alignment.center,
        height: Platform.isIOS ? 70 : 60,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: kOnboardBottomButtonGradient,
          borderRadius: borderRadius(isCurved),
        ),
      ),
    );
  }
}

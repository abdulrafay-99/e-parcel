import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

topRightCurve(screenHeight) {
  return Align(
    alignment: Alignment.topRight,
    child: SvgPicture.asset(
      'assets/curve top right.svg',
      fit: BoxFit.scaleDown,
      height: screenHeight * (372 / 974),
    ),
  );
}

bottomCurves(screenWidth, screenHeight) {
  return SizedBox(
    width: screenWidth,
    height: screenHeight * (332 / 974),
    child: SvgPicture.asset(
      'assets/curves bottom.svg',
      fit: BoxFit.fill,
    ),
  );
}

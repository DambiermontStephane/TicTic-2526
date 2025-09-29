import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tictic/constants/sizes.dart';

class LogoWelcome extends StatelessWidget {
  const LogoWelcome({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/icons/logo.svg',
      width: MediaQuery.of(context).size.width * kLogoSizeRatioWelcome,
      height: MediaQuery.of(context).size.height * kLogoSizeRatioWelcome,
      semanticsLabel: 'The tictic logo',
    );
  }
}

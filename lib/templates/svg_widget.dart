import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgWidget extends StatelessWidget {
  final String nameFile;
  const SvgWidget ({required this.nameFile, super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      nameFile,
        height: 200,
      );
  }
}
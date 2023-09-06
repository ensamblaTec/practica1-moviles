import 'package:flutter/material.dart';

class CardLanguageData {
  final String title;
  final String subtitle;
  final Widget image;
  final Color backgroundColor;
  final Color titleColor;
  final Color subtitleColor;
  final Widget? background;
  final AlignmentGeometry alignment;

  const CardLanguageData({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.backgroundColor,
    required this.titleColor,
    required this.subtitleColor,
    required this.alignment,
    this.background,
  });
}

class CardLanguage extends StatelessWidget {
  const CardLanguage({required this.data, super.key});

  final CardLanguageData data;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: data.alignment,
      children: [
        if (data.background != null) data.background!,
        Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const Spacer(flex: 3),
              Flexible(flex: 30, child: data.image),
              const Spacer(flex: 1),
              Text(
                data.title,
                style: TextStyle(
                    letterSpacing: 1,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: data.titleColor),
                maxLines: 1,
              ),
              const Spacer(flex: 1),
              Text(
                data.subtitle,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
              const Spacer(flex: 15)
            ],
          ),
        ),
      ],
    );
  }
}

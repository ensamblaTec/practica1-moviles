import 'package:concentric_transition/concentric_transition.dart';
import 'package:flutter/material.dart';
import 'package:onboarding/templates/card_language.dart';
import 'package:onboarding/templates/svg_widget.dart';
import 'package:lottie/lottie.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  Home({super.key});

  final data = [
    CardLanguageData(
      title: "Favorite Programming Languages",
      subtitle: "Backend Language",
      image: const Image(image: NetworkImage("https://i.giphy.com/media/Dh5q0sShxgp13DwrvG/giphy.webp")),
      backgroundColor: const Color(0xFF285481),
      titleColor: const Color.fromARGB(255, 0, 0, 0),
      subtitleColor: Colors.white,
      background: LottieBuilder.asset("assets/desktop_center.json"),
      alignment: Alignment.bottomCenter,
    ),
    CardLanguageData(
      title: "Go",
      subtitle: "Backend Language",
      image: const SvgWidget(nameFile: "assets/go.svg"),
      backgroundColor: const Color(0xFF027D9C),
      titleColor: Colors.white,
      subtitleColor: Colors.white,
      background: LottieBuilder.asset("assets/buble_right_top.json"),
      alignment: Alignment.topCenter
    ),
    CardLanguageData(
      title: "Dart",
      subtitle: "Multi-paradigm Language",
      image: const SvgWidget(nameFile: "assets/dart.svg"),
      backgroundColor: const Color(0xFF1B2834),
      titleColor: Colors.white,
      subtitleColor: Colors.red,
      background: LottieBuilder.asset("assets/bubble_left_bottom.json"),
      alignment: Alignment.bottomCenter,
    ),
    CardLanguageData(
      title: "Swift",
      subtitle: "Multi-paradigm Language",
      image: const SvgWidget(nameFile: "assets/swift.svg"),
      backgroundColor: const Color(0xFF233055),
      titleColor: Colors.white,
      subtitleColor: Colors.red,
      background: LottieBuilder.asset("assets/figures.json"),
      alignment: Alignment.bottomCenter
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConcentricPageView(
        colors: data.map((e) => e.backgroundColor).toList(),
        itemCount: 4,
        itemBuilder: (int index) {
          return CardLanguage(data: data[index]);
        },
      ),
    );
  }
}

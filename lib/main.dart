import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Who Am I',
      home: TestScreen(),
    );
  }
}

class TestScreen extends StatelessWidget {
  final List<Introduction> list = [
    Introduction(
      title: '현재의 나',
      titleTextStyle: TextStyle(color: Colors.purple, fontSize: 35),
      subTitle: '처음에는 기본 햄버거',
      imageUrl: 'assets/images/ham1.png',
    ),
    Introduction(
      title: '수료 후의 나',
      titleTextStyle: TextStyle(color: Colors.purple, fontSize: 35),
      subTitle: '햄버거 패티 추가',
      imageUrl: 'assets/images/ham2.png',
    ),
    Introduction(
      title: '10년 후의 나',
      titleTextStyle: TextStyle(color: Colors.purple, fontSize: 35),
      subTitle: '햄버거 패티 더 추가',
      imageUrl: 'assets/images/ham3.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      introductionList: list,
      onTapSkipButton: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ), //MaterialPageRoute
        );
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'Welcome to Home Page!',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

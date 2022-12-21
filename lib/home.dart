import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  bool boolmarked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: Column(
          children: [
            Container(
              child: const Text('ｍｅｒｒｙ  ｃｈｒｉｓｔｍａｓ'),
            ),
            GestureDetector(
              onTap: () {
                if (boolmarked == false) {
                  boolmarked = true;
                  _controller.repeat();
                } else {
                  boolmarked = false;
                  _controller.repeat();
                }
              },
              child: Lottie.network(
                  'https://assets7.lottiefiles.com/packages/lf20_tnpa85i2.json',
                  controller: _controller),
            ),
            Container(
              child: const Text(
                'Ｈａｐｐｙ    \n    ｎｅｗ \n       ｙｅａｒ',
                style: TextStyle(fontSize: 50),
              ),
            )
          ],
        ),
      ),
    );
  }
}

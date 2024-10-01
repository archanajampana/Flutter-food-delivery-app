import 'dart:math';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:iship/login_signup.dart';
import 'package:lottie/lottie.dart';

 void main() {
  runApp(
    DevicePreview(
      builder: (context) => MyApp(),
    ),
  );
  // runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,// Add this line
      home: Onboard(
      ),
    );
  }
}

class Onboard extends StatefulWidget {
  const Onboard({Key? key}) : super(key: key);

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          CustomPaint(
            painter: ArcPainter(),
            child: SizedBox(
              height: screenSize.height / 1.4,
              width: screenSize.width,
            ),
          ),
          Positioned(
            top: 130,
            right: 5,
            left: 5,
            child: Lottie.asset(
              tabs[_currentIndex].lottieFile,
              key: Key('${Random().nextInt(999999999)}'),
              width: 600,
              alignment: Alignment.topCenter,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 270,
              child: Column(
                children: [
                  Flexible(
                    child: PageView.builder(
                      controller: _pageController,
                      itemCount: tabs.length,
                      itemBuilder: (BuildContext context, int index) {
                        OnboardingModel tab = tabs[index];
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              tab.title,
                              style: const TextStyle(
                                fontSize: 27.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                              ),
                            ),
                            const SizedBox(height: 50),
                            Text(
                              tab.subtitle,
                              style: const TextStyle(
                                fontSize: 17.0,
                                color: Colors.white70,
                              ),
                              textAlign: TextAlign.center,
                            )
                          ],
                        );
                      },
                      onPageChanged: (value) {
                        _currentIndex = value;
                        setState(() {});
                      },
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      for (int index = 0; index < tabs.length; index++)
                        _DotIndicator(isSelected: index == _currentIndex),
                    ],
                  ),
                  const SizedBox(height: 75)
                ],
              ),
            ),
          ),
          Positioned(
            top: 50,
            left:screenSize.width-100,
            right: 20,
            child: 
          GestureDetector(
            onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>Login()));},
            child: Container(
              decoration: BoxDecoration(color: Colors.orange,borderRadius: BorderRadius.circular(5)),
              child: Center(child: Text('Skip',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),))),
          )
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_currentIndex == 2) {
            _pageController.animateToPage(
              0,
              duration: const Duration(milliseconds: 300),
              curve: Curves.linear,
            );
          } else {
            _pageController.nextPage(
              duration: const Duration(milliseconds: 300),
              curve: Curves.linear,
            );
          }
        },
        child: const Icon(Icons.chevron_right, color: Colors.white),
        backgroundColor: Colors.transparent,
      ),
    );
  }
}


class ArcPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path orngArc = Path()
      ..moveTo(0, 0)
      ..lineTo(0, size.height - 170)
      ..quadraticBezierTo(size.width / 2, size.height, size.width, size.height - 170)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..close();

    canvas.drawPath(orngArc, Paint()..color = Colors.orange);
    Path whtArc = Path()
    ..moveTo(0.0,0.0)..lineTo(0, size.height - 190)
    ..quadraticBezierTo(size.width / 2, size.height - 70, size.width, size.height - 190)
    ..lineTo(size.width, size.height)
    ..lineTo(size.width, 0)
    ..close();
    canvas.drawPath(whtArc, Paint()..color = Colors.white);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

class _DotIndicator extends StatelessWidget {
  final bool isSelected;

  const _DotIndicator({Key? key, required this.isSelected}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 6.0),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 300),
        height: 6.0,
        width: 6.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSelected ? Colors.white : Colors.white38,
        ),
      ),
    );
  }
}

class OnboardingModel {
  final String lottieFile;
  final String title;
  final String subtitle;

  OnboardingModel(this.lottieFile, this.title, this.subtitle);
}

List<OnboardingModel> tabs = [
  OnboardingModel(
    'assets/lottie1.json',
    '\nChoose A Taste',
    'Fast, fresh, and flavorful—your favorite meals, just a tap away.',
  ),
  OnboardingModel(
    'assets/lottie2.json',
    '\nDiscover Places',
    'Explore culinary delights around every corner with nearby food finds',
  ),
  OnboardingModel(
    'assets/lottie3.json',
    '\nPick Up ',
    'Quick, tasty, and right to your door—fast food delivery at its finest.',
  ),
];
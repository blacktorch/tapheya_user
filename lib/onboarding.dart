import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'intro_page.dart';
import 'constants.dart';
import 'package:get/get.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  final controller = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> data = [
    {
      'image': 'assets/intro_1.png',
      'header': 'Pay With Crypto Assets',
      'body': 'Pay for goods and services using crypto assets.'
    },
    {
      'image': 'assets/intro_1.png',
      'header': 'Fund Your Wallet',
      'body': 'Fund your wallet and keep track of all transactions.'
    },
    {
      'image': 'assets/intro_1.png',
      'header': 'Tap or Scan to Pay',
      'body': 'Simply pay by taping or scaning with your phone.'
    },
  ];

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kWhite,
        elevation: 0.1,
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 16.0,
            ),
            child: _currentPage < 2
                ? TextButton(
                    onPressed: () {
                      //Get.toNamed('/sign-in');
                      controller.animateToPage(
                        2,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.ease,
                      );
                    },
                    child: const Text('Skip'),
                    style: TextButton.styleFrom(
                      textStyle: kTextButton,
                    ),
                  )
                : null,
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(bottom: 100),
        child: PageView.builder(
          controller: controller,
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return AnimatedSwitcher(
              duration: const Duration(milliseconds: 500),
              child: IntroPage(
                key: ValueKey<int>(_currentPage),
                urlImage: data[_currentPage]['image'].toString(),
                headerText: data[_currentPage]['header'].toString(),
                bodyText: data[_currentPage]['body'].toString(),
              ),
            );
          },
          onPageChanged: (int page) {
            setState(() {
              _currentPage = page;
            });
          },
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 0),
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SmoothPageIndicator(
              controller: controller,
              count: data.length,
              effect: const ExpandingDotsEffect(
                spacing: 8,
                dotHeight: 8,
                dotWidth: 8,
                expansionFactor: 4,
                activeDotColor: kPrimary,
              ),
              onDotClicked: (int dot) {
                setState(() {
                  _currentPage = dot;
                  controller.animateToPage(
                    dot,
                    duration: const Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                });
                //
              },
            ),
            SizedBox(
              height: _currentPage < 2 ? 60 : 60,
              width: _currentPage < 2 ? 60 : 120,
              child: _currentPage < 2
                  ? ElevatedButton(
                      onPressed: () {
                        controller.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.ease,
                        );
                      },
                      child: const Icon(
                        Icons.chevron_right,
                        size: 20,
                      ),
                      style:
                          ElevatedButton.styleFrom(shape: const CircleBorder()),
                    )
                  : ElevatedButton(
                      onPressed: () {
                        Get.toNamed('/signup');
                      },
                      child: Text(
                        'Get Started',
                        style: kDarkButton2,
                      ),
                      style: ElevatedButton.styleFrom(
                        foregroundColor: kWhite,
                        disabledForegroundColor: kPrimary,
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(50),
                          ),
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

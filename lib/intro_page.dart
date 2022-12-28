import 'package:flutter/material.dart';
import 'constants.dart';

class IntroPage extends StatelessWidget {
  final String urlImage;
  final String headerText;
  final String bodyText;

  const IntroPage(
      {Key? key,
      required this.urlImage,
      required this.headerText,
      required this.bodyText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: kWhite,
              ),
              child: Image.asset(
                urlImage,
                width: 300,
                height: 300,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 100, 0),
                  child: Text(
                    headerText,
                    style: kHeading1,
                    textAlign: TextAlign.start,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(
                    25,
                    10,
                    80,
                    10,
                  ),
                  child: Text(
                    bodyText,
                    style: kHeading4,
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

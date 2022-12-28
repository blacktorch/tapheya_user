import 'package:flutter/material.dart';
import 'constants.dart';
import 'package:get/get.dart';
import 'router.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Map<int, Color> swatch = {
      50: const Color.fromRGBO(70, 18, 214, .1),
      300: const Color.fromRGBO(70, 18, 214, .4),
      100: const Color.fromRGBO(70, 18, 214, .2),
      400: const Color.fromRGBO(70, 18, 214, .5),
      200: const Color.fromRGBO(70, 18, 214, .3),
      500: const Color.fromRGBO(70, 18, 214, .6),
      600: const Color.fromRGBO(70, 18, 214, .7),
      700: const Color.fromRGBO(70, 18, 214, .8),
      800: const Color.fromRGBO(70, 18, 214, .9),
      900: const Color.fromRGBO(70, 18, 214, 1),
    };

    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tapheya',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: MaterialColor(kPrimary.value, swatch),
        // textTheme: GoogleFonts.josefinSansTextTheme(
        //   Theme.of(context).textTheme,
        // )
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      initialRoute: '/onboarding',
      getPages: appScreens,
    );
  }
}

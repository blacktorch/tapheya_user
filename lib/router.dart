import 'package:get/get.dart';
import 'package:tapheya_user/sign_up.dart';
import 'onboarding.dart';

final List<GetPage> appScreens = [
  GetPage(
    name: '/onboarding',
    page: () => const OnBoarding(),
  ),
  GetPage(
    name: '/signup',
    page: () => const UserSignUp(),
  ),
];

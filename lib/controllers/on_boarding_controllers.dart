import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';

import '../models/on_boarding_model.dart';
import '../modules/login_page.dart';

//import 'package:ps_welness/modules_view/sign_in/sigin_screen.dart';

class OnboardingController extends GetxController {
  var selectedPageIndex = 0.obs;
  bool get isLastPage => selectedPageIndex.value == onboardingPages.length - 1;
  var pageController = PageController();

  // forwardAction() {
  //   if (isLastPage) {
  //     //pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  //     Get.to(() => LoginPage());
  //     //LoginPage();
  //     //go to home page
  //   } else
  //     pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  // }

  forwardAct() {
    if (isLastPage)

      Get.to(() => LoginPage());
    //LoginPage());
    else
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo(
        "lib/assets/splash1.json",
        'Get Cabs Onlineeee',
        'We deliver high quality, affordable online cabs services in all over india.'),
    OnboardingInfo(
        "lib/assets/splash2.json",
        'Get Cabs Online',
        'We deliver high quality, affordable online cabs services in all over india.'),
    OnboardingInfo(
        "lib/assets/splash3.json",
        //'lib/assets/image/92309-online-doctor.zip',
        'Consult to expert ',
        'Find the right cabs from our list of experienced driver.'),
    // OnboardingInfo(
    //     "lib/assets/splash_3.json",
    //     // 'lib/assets/image/83028-ambulance.zip',
    //     'Quick Availability',
    //     'Taxi Availability in 30 minutes.'),
  ];
}
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../controllers/splash_controller.dart';
import '../modules/login_page.dart';
import '../modules/on_boarding_page.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final SplashScreenControllers controller = Get.put(SplashScreenControllers());

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: GetBuilder<SplashScreenControllers>(
          init: SplashScreenControllers(),
          builder: (controller) {
            if (controller.animation.status == AnimationStatus.completed) {
              Timer(Duration(seconds: 2), () async {
                await Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => OnboardingPage()));
                // try {
                //   // final accountData2 = await accountService2.getAccountData2;
                //   // if (accountData2 != null) {
                //   //   await ApiProvider.RefreshToken();
                //   //   await attendanceController.AttendanceDetailApi(DateTime.now());
                //   //
                //   //   // Auto-login and fetch the necessary data
                //   //   await _getprofileepersonal.profileemployeeApi();
                //   //   // await locationController.checkAndRequestLocationPermission();
                //   //
                //   //   // await locationController.fetchCurrentLocation(
                //   //   //   // " C 53, 1st Floor, C Block, Sector 2, Noida, Uttar Pradesh 201301"
                //   //   // );
                //   //   // await locationController.fetchCompanyLocationApi();
                //   //   // await locationController.getCoordinatesFromAddress();
                //   //   await _homedashboardController.dashboarddApi();
                //   //   // await attendanceController.AttendanceDetailApi(DateTime.now());
                //   //   //  await attendanceController.updateAttendaneDetail();
                //   //   await locationController.startSendingLocation();
                //   //   await _getprofileepersonal.profileEmployeBankApi();
                //   //   await employeeLoginController.deviceTokenId();
                //   //   await callbackDispatcher();
                //   //   print("Sending splash.");
                //   //   print("attendance activity:${attendanceController.attendanceDetailsModel?.data?.loginStatus}");
                //   //   _homedashboardController.update();
                //     Future.delayed(Duration(seconds: 1));
                //     await Navigator.pushReplacement(
                //       context,
                //       MaterialPageRoute(builder: (context) => OnboardingPage()),
                //     );
                //   } else {
                //     // await attendanceController.AttendanceDetailApi(DateTime.now());
                //     // print("attendance activity:${attendanceController.attendanceActivityModel?.data?.loginStatus}");
                //     // Navigate to the login page if no account is stored
                //     Navigator.pushReplacement(
                //       context,
                //       MaterialPageRoute(builder: (context) => LoginPage()),
                //     );
                //   }
                // } catch (error) {
                //   print('Error in SplashScreen: $error');
                //   // Handle error accordingly
                // }
              });

            }
            return AnimatedBuilder(
              animation: controller.animation,
              builder: (context, child) {
                // Using the animation value to scale the logo
                return Transform.scale(
                  scale: controller?.animation.value,
                  child: SizedBox(
                    width: screenWidth * 0.74,
                    height: screenHeight * 0.4,
                    child:Lottie.asset(
                      'lib/assets/splash_2.json',
                      width: 20,
                      height: 20,
                      fit: BoxFit.fill,
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
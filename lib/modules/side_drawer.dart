import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vardaanadmin/modules/drivers/drivers_list.dart';
import 'package:vardaanadmin/modules/profile.dart';
import 'package:vardaanadmin/modules/vehicles/check_in_drivers.dart';
import 'package:vardaanadmin/modules/vehicles/vehicles_list.dart';

import '../constants/constants.dart';
import 'login_page.dart';


class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // final PhoneLoginController _loginController =
    // Get.put(PhoneLoginController());

    final Uri _urlabout = Uri.parse('https://vardaanrentacar.com/about-us/');
    final Uri _urlprivecy =
    Uri.parse('https://vardaanrentacar.com/privacy-policy/');

    Future<void> _launchURL(Uri url) async {
      if (await canLaunchUrl(url)) {
        await launchUrl(url, mode: LaunchMode.externalApplication);
      } else {
        throw 'Could not launch $url';
      }
    }

    return SafeArea(
      ///top: false,
      child: Drawer(
        // backgroundColor: AppColor.th1wht2,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundColor: MyTheme.drivericon,
                      child: ClipOval(
                        child: Padding(
                          padding: EdgeInsets.all(0),
                          child: Image.asset(
                            'lib/assets/logo.png',
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    Text(
                      'Kumar Prince',
                      style: GoogleFonts.poppins(
                          fontSize: size.height * 0.018,
                          fontWeight: FontWeight.w600,
                          color: MyTheme.t1containercolor),
                    ),
                    Text(
                      'ID:34FGGE45232',
                      style: GoogleFonts.poppins(
                          fontSize: size.height * 0.016,
                          fontWeight: FontWeight.w500,
                          color: MyTheme.t1containercolor),
                    ),
                    Spacer(),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: MyTheme.themecolor,
              ),
            ),

            ///Trip
            // ListTile(
            //   //horizontalTitleGap: 2.h,
            //   leading: Icon(
            //     Icons.trip_origin,
            //     color: Colors.black,
            //     size: 16,
            //   ),
            //   trailing: Icon(
            //     Icons.arrow_forward_ios_sharp,
            //     size: 11,
            //     color: Colors.black,
            //   ),
            //   contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            //   dense: true,
            //   // visualDensity: VisualDensity(horizontal: 0, vertical: -4),
            //   title: Text(
            //     //                                    'Your Driver:'.tr,
            //     'Trip'.tr,
            //     style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            //   ),
            //   // tileColor: Get.currentRoute == '/AllProducts'
            //   //     ? Colors.grey[300]
            //   //     : Colors.transparent,
            //   onTap: () async {
            //     print(Get.currentRoute);
            //     Get.back();
            //     //await Get.to(TripUserTabbar());
            //
            //     //Get.to(SearchLocationScreen());
            //     // _navcontroller.tabIndex(0);
            //
            //     ///
            //     //await Get.to(GoogleSearchPlacesApi());
            //
            //     ///SearchLocationScreen
            //
            //     // Get.to(() => BookingAmb());
            //     //Get.to(() => AllProducts());
            //     //Get.offNamed('/NavBar');
            //   },
            // ),

            ///Profile
            ListTile(
              // horizontalTitleGap: 2.h,
              leading: Icon(
                Icons.person,
                color: Colors.black,
                size: 16,
              ),

              ///........................................
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 11,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              // visualDensity: VisualDensity(horizontal: 0, vertical: -1),
              title: Text(
                'Profile'.tr,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
              tileColor:
              // Get.currentRoute == '/NavBar'
              //     ? Colors.grey[300]
              //     :
              Colors.transparent,
              onTap: () async {
                print(Get.currentRoute);
                //Get.back();
                Get.back();

                ///......................................
                // _navController.tabindex(3);
                Get.to(() => Profile());
                //Get.to(() => BestDeal());
                // Get.offNamed('/NavBar');
              },
            ),

            ///change language
            // ListTile(
            //   //horizontalTitleGap: 2.h,
            //   leading: Icon(
            //     Icons.language,
            //     color: Colors.black,
            //     size: 16,
            //   ),
            //   trailing: Icon(
            //     Icons.arrow_forward_ios_sharp,
            //     size: 11,
            //     color: Colors.black,
            //   ),
            //   contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            //   dense: true,
            //   //visualDensity: VisualDensity(horizontal: 0, vertical: -1),
            //   title: Text(
            //     'Change Language'.tr,
            //     style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            //   ),
            //   tileColor: Get.currentRoute == '/DriverPayoutHistory'
            //       ? Colors.grey[300]
            //       : null,
            //   onTap: () async {
            //     ///
            //     Get.back();
            //
            //  ///   Get.to(() => LanguageDriverUpdate());
            //
            //     ///
            //   },
            //   //
            // ),

            ///Drivers list
            ListTile(
              //horizontalTitleGap: 2.h,
              leading: Icon(
                Icons.password,
                color: Colors.black,
                size: 16,
              ),
              trailing: Icon(
                Icons.person,
                size: 11,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              //visualDensity: VisualDensity(horizontal: 0, vertical: -1),
              title: Text(
                'Drivers list'.tr,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
              tileColor: Get.currentRoute == '/ChangePasswordDriver'
                  ? Colors.grey[300]
                  : null,
              onTap: () async {
                ///
                Get.back();
                Get.to(() => DriversList());

                ///
              },
              //
            ),

            ///Vehicles list
            ListTile(
              //horizontalTitleGap: 2.h,
              leading: Icon(
                Icons.car_rental_sharp,
                color: Colors.black,
                size: 16,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 11,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              //visualDensity: VisualDensity(horizontal: 0, vertical: -1),
              title: Text(
                'Vehicles list'.tr,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
              tileColor: Get.currentRoute == '/DriverPayoutHistory'
                  ? Colors.grey[300]
                  : null,
              onTap: () async {
                Get.back();

               Get.to(() => VehiclesList());
              }
            ),

            ///CompanyPage
            ListTile(
              //horizontalTitleGap: 2.h,
              leading: Icon(
                Icons.business_sharp,
                color: Colors.black,
                size: 14,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 11,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              //visualDensity: VisualDensity(horizontal: 0, vertical: -1),
              title: Text(
                'Companies',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
              tileColor:
                  Get.currentRoute == '/ComplainPage' ? Colors.grey[300] : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();

                ///.................................................28feb....................new
                //  _getProfileController.addressidApi();
                // _getProfileController.update();
                ///........................................................................................

                // Get.to(() => ComplainPage());
                Get.offNamed('/ComplainPage');
              },
            ),

            ///check-in drivers
            ListTile(
              //horizontalTitleGap: 2.h,
              leading: Icon(
                Icons.business_sharp,
                color: Colors.black,
                size: 14,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 11,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              //visualDensity: VisualDensity(horizontal: 0, vertical: -1),
              title: Text(
                'Check-In Drivers',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
              tileColor:
              Get.currentRoute == '/ComplainPage' ? Colors.grey[300] : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                Get.to(()=>CheckInDrivers());
                ///.................................................28feb....................new
                //  _getProfileController.addressidApi();
                // _getProfileController.update();
                ///........................................................................................

                // Get.to(() => ComplainPage());
                // Get.offNamed('/ComplainPage');
              },
            ),

            ///Available drivers
            ListTile(
              //horizontalTitleGap: 2.h,
              leading: Icon(
                Icons.business_sharp,
                color: Colors.black,
                size: 14,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 11,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              //visualDensity: VisualDensity(horizontal: 0, vertical: -1),
              title: Text(
                'Available Drivers',
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
              tileColor:
              Get.currentRoute == '/ComplainPage' ? Colors.grey[300] : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();

                ///.................................................28feb....................new
                //  _getProfileController.addressidApi();
                // _getProfileController.update();
                ///........................................................................................

                // Get.to(() => ComplainPage());
                Get.offNamed('/ComplainPage');
              },
            ),

            ///Routing & Cab Allocation
            ListTile(
              //horizontalTitleGap: 2.h,
              leading: Icon(
                Icons.account_circle,
                color: Colors.black,
                size: 16,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 11,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              //visualDensity: VisualDensity(horizontal: 0, vertical: -1),
              title: Text(
                'Routing & Cab Allocation'.tr,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
              tileColor: Get.currentRoute == '/PersonalProfile'
                  ? Colors.grey[300]
                  : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();

                ///.................................................28feb....................new
                //  _getProfileController.addressidApi();
                // _getProfileController.update();
                ///........................................................................................
              ///  Get.to(() => ContactUs());
                // Get.offNamed('/PersonalProfile');
              },
            ),

            ///Vehicle Inspection
            ListTile(
              //horizontalTitleGap: 2.h,
              leading: Icon(
                Icons.question_mark_sharp,
                color: Colors.black,
                size: 16,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 11,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              //visualDensity: VisualDensity(horizontal: 0, vertical: -1),
              title: Text(
                'Vehicle Inspection'.tr,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
              tileColor: Get.currentRoute == '/ForgotPasswordDriver'
                  ? Colors.grey[300]
                  : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();

                ///.................................................28feb....................new
                //  _getProfileController.addressidApi();
                // _getProfileController.update();
                ///........................................................................................
              ///  Get.to(() => ForgotPasswordDriver());
                // Get.offNamed('/PersonalProfile');
              },
            ),

            //ForgotPasswordDriver

            ///here from profileeee...............................
            ListTile(
              //horizontalTitleGap: 2.h,
              leading: Icon(
                Icons.business,
                color: Colors.black,
                size: 16,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 11,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              //visualDensity: VisualDensity(horizontal: 0, vertical: -1),
              title: Text(
                'About Us'.tr,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
              tileColor: Get.currentRoute == '/UserAboutUsView'
                  ? Colors.grey[300]
                  : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                _launchURL(_urlabout); // Launch URL directly without navigating

                //Get.to(WebViewwebsitess(url: "$_url"));

                ///.................................................28feb....................new
                //  _getProfileController.addressidApi();
                // _getProfileController.update();
                ///........................................................................................

                /// Get.to(() => UserAboutUsView());
                // Get.offNamed('/UserAboutUsView');
              },
            ),

            ///here from profileeee...............................
            ListTile(
              //horizontalTitleGap: 2.h,
              leading: Icon(
                Icons.policy,
                color: Colors.black,
                size: 16,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 11,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              //visualDensity: VisualDensity(horizontal: 0, vertical: -1),
              title: Text(
                'Privacy Policy'.tr,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
              tileColor: Get.currentRoute == '/PersonalProfile'
                  ? Colors.grey[300]
                  : null,
              onTap: () {
                print(Get.currentRoute);
                Get.back();
                _launchURL(
                    _urlprivecy);
                // Launch URL directly without navigating

                // Get.to(WebViewwebsitess(url: "$_url"));
                //  _getProfileController.addressidApi();
                // _getProfileController.update();
                ///...........................................................
                ///Get.to(() => privecy_policy());
                Get.offNamed('/PersonalProfile');
              },
            ),

            // ListTile(
            //   leading: Icon(
            //     Icons.delete_forever_outlined,
            //     color: Colors.black,
            //     size: 16,
            //   ),
            //   trailing: Icon(
            //     Icons.arrow_forward_ios_sharp,
            //     color: Colors.black,
            //     size: 11,
            //   ),
            //   contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            //   dense: true,
            //   visualDensity: VisualDensity(horizontal: 0, vertical: -2),
            //   title: Text(
            //     'Delete Account'.tr,
            //     style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
            //     //fontWeight: FontWeight.w600,
            //     //color: Colors.black,
            //     // ),
            //   ),
            //   onTap: () {
            //     Get.defaultDialog(
            //       title: "Welcome To Vardaan Car",
            //       middleText: "You content goes here...",
            //       content: getContent(),
            //       barrierDismissible: true,
            //       radius: 20.0,
            //       confirm: Padding(
            //         padding: const EdgeInsets.all(12.0),
            //         child: confirmBtn(),
            //       ),
            //       cancel: Padding(
            //         padding: const EdgeInsets.all(12.0),
            //         child: cancelBtn(),
            //       ),
            //     );
            //   }, //PersonalDetails
            // ),

            ListTile(
              // horizontalTitleGap: 2.h,
              leading: Icon(
                Icons.login,
                color: Colors.black,
                size: 16,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios_sharp,
                size: 11,
                color: Colors.black,
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              dense: true,
              //visualDensity: VisualDensity(horizontal: 0, vertical: -1),
              title: Text(
                'Logout'.tr,
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
              tileColor:
              Get.currentRoute == '/LoginPage' ? Colors.grey[300] : null,
              onTap: () async {
                // Show loading dialog
                showDialog(
                  context: context,
                  barrierDismissible: false,
                  builder: (context) {
                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                );

                // _loginController.onInit();

                await Future.delayed(Duration(seconds: 1));

                await SharedPreferences.getInstance()
                    .then((prefs) => prefs.clear());

                // Hide loading dialog
                //Get.back();

                // Navigate to login screen
                Get.offAll(() => LoginPage());

                // Show success snackbar
                // Get.snackbar(
                //   'Success',
                //   'Successfully logged out',
                //   snackPosition: SnackPosition.TOP,
                //   backgroundColor: Colors.green,
                //   duration: snackBarDuration, // Set the duration
                // );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget confirmBtn() {
    return ElevatedButton(
        onPressed: () {
          Get.back();
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
        child: Text(
          "Confirm".tr,
          style: GoogleFonts.roboto(fontSize: 12, color: AppColors.th1wht2),
        ));
  }

  Widget cancelBtn() {
    return ElevatedButton(
        onPressed: () {
          Get.back();
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            textStyle: TextStyle(fontSize: 12, fontWeight: FontWeight.bold)),
        child: Text(
          "Cancel".tr,
          style: GoogleFonts.roboto(fontSize: 12, color: AppColors.th1wht2),
        ));
  }

  Widget getContent() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "If Yow want to remove your account,",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
        ),
        Text(
          "Then you please click confirm button",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
        ),
        Text(
          "Your data will erase if you press confirm.",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
        ),
        Text(
          "If you don't want to delete press cancel",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 12),
        ),
      ],
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:vardaanadmin/modules/widgets/custom_text.dart';
// import 'package:vardaanadmin/modules/widgets/horizontal_btn.dart';
// import '../constants/constants.dart';
// import '../controllers/contact_us__support_controller.dart';
// import '../controllers/help_controller.dart';
// import 'package:url_launcher/url_launcher.dart' as urlLauncher;
//
// class ContactUsUser extends StatelessWidget {
//   ContactUsUser({Key? key}) : super(key: key);
//
//   ContactUsGetController _contactUsGetController = Get.put(ContactUsGetController());
//
//   // Function to launch URL
//   Future<void> _launchURL(String url) async {
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }
//
//   HelpEmployeeController _helpEmployeeController =
//   Get.put(HelpEmployeeController());
//
//   // Function to handle WhatsApp launch
//
//   Future<void> _launchWhatsApp() async {
//     final phoneNumber = _contactUsGetController
//         .getContactUsModel?.data?.employeeContactNumber; // WhatsApp number
//     if (phoneNumber == null || phoneNumber.isEmpty) {
//       Get.snackbar('Error', 'Contact number not available.');
//       return;
//     }
//
//     final whatsappUrl = 'https://wa.me/$phoneNumber';
//     if (await canLaunch(whatsappUrl)) {
//       await launch(whatsappUrl);
//     } else {
//       Get.snackbar('Error', 'Could not launch WhatsApp.');
//     }
//   }
//
//   Future<void> _launchEmail() async {
//     final Uri emailLaunchUri = Uri(
//       scheme: 'mailto',
//       path: '${_contactUsGetController.getContactUsModel?.data?.emailId}',
//       queryParameters: {
//         'subject': 'Support Request',
//         'body': 'Hello, I need help with...', // Customize your email body
//       },
//     );
//
//     try {
//       // Using launchUrl method..................
//       if (await launchUrl(emailLaunchUri)) {
//         // Email client launched successfully
//       } else {
//         Get.snackbar('Error',
//             'Could not launch email client. Please check if an email app is installed.');
//       }
//     } catch (e) {
//       print(
//           'Error launching email client: $e'); // Print the error for debugging
//       Get.snackbar('Error',
//           'An unexpected error occurred while trying to launch the email client.');
//     }
//   }
//
//   // Function to show emergency confirmation dialog
//   void _showEmergencyDialog(BuildContext context) {
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           backgroundColor: Colors.red[50], // Light red background for emergency
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15.0), // Rounded corners
//           ),
//           title: Row(
//             children: [
//               Icon(
//                 Icons.warning_amber_rounded,
//                 color: Colors.red, // Warning icon for emergency
//               ),
//               SizedBox(width: 4),
//               Text(
//                 'Emergency Confirmation',
//                 style: TextStyle(
//                   fontSize: 17,
//                   color: Colors.red,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ],
//           ),
//           content: Text(
//             'Are you sure you want to make an emergency call to ${_contactUsGetController.getContactUsModel?.data?.employeeEmergencyNumber}?',
//             style: TextStyle(
//               fontSize: 16,
//               color: Colors.black,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//           actions: <Widget>[
//             TextButton(
//               style: TextButton.styleFrom(
//                 foregroundColor: Colors.grey[700],
//               ),
//               child: Text(
//                 'Cancel',
//                 style: TextStyle(fontSize: 16),
//               ),
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//             ),
//             ElevatedButton(
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.red, // Emergency color
//               ),
//               child: Text(
//                 'Yes, Call Now',
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 16,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//               onPressed: () {
//                 Navigator.of(context).pop();
//                 _launchURL(
//                     'tel:${_contactUsGetController.getContactUsModel?.data?.employeeEmergencyNumber}');
//               },
//             ),
//           ],
//         );
//       },
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     double w = MediaQuery.of(context).size.width;
//     double h = MediaQuery.of(context).size.height;
//     return Scaffold(
//       backgroundColor: AppColors.white,
//       appBar: AppBar(
//         backgroundColor: MyTheme.themecolor,
//         elevation: 2,
//         centerTitle: true,
//         title:  Text(
//           "Help",
//           style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//             color: MyTheme.t1containercolor,
//           ),
//         ),
//         // leading: IconButton(
//         //   onPressed: () {},
//         //   icon:  Icon(Icons.arrow_back, color: MyTheme.t1containercolor),
//         // ),
//         actions: [
//           IconButton(
//             onPressed: () {
//                   _showEmergencyDialog(context); // Show emergency confirmation dialog
//             },
//             icon:  Icon(Icons.emergency, color: MyTheme.logored),
//           ),
//         ],
//       ),
//       // myAppBar(
//       //   backgroundColor: MyTheme.themecolor,
//       //   title: 'Help',
//       //   leadingIcon: Icons.arrow_back_ios_outlined,
//       //   centerTitle: true,
//       //   onLeadingPressed: () {
//       //     Get.back();
//       //   },
//       //   actionIcon: Icons.emergency,
//       //   onActionPressed: () {
//       //     _showEmergencyDialog(context); // Show emergency confirmation dialog
//       //   },
//       // ),
//       body: Obx(
//             () => _helpEmployeeController.isLoading.value
//             ? Center(
//           child: CircularProgressIndicator(),
//         )
//             : Form(
//           key: _helpEmployeeController.helpemployeeFormKey,
//           autovalidateMode: AutovalidateMode.onUserInteraction,
//           child: Container(
//             height: size.height,
//             width: size.width,
//             child: Column(
//               children: [
//                 // Add image before the first row
//                 Container(
//                   height: size.height * 0.25,
//                   width: size.width * 0.73,
//                   child: Image.asset(
//                     'lib/assets/help.png',
//                     height: size.height * 0.33,
//                     width: size.width,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 // buildContactCard(
//                 //   icon: Icons.call,
//                 //   title: 'Call Us',
//                 //   content: '${_contactUsGetController.getContactUsModel?.data?.employeeContactNumber}',
//                 //   actionLabel: 'Call Now',
//                 //   action: () async {
//                 //      var url = 'tel://${_contactUsGetController.getContactUsModel?.data?.employeeContactNumber}';
//                 //     if (await urlLauncher.canLaunch(url)) {
//                 //       await urlLauncher.launch(url);
//                 //     }
//                 //   },
//                 // ),
//                 Padding(
//                   padding: EdgeInsets.only(bottom: 8, left: 8, right: 8),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       // Call Now Button
//                       Flexible(
//                         flex: 1,
//                         child: GestureDetector(
//                           onTap: () => _launchURL(
//                               'tel:${_contactUsGetController.getContactUsModel?.data?.employeeContactNumber}'),
//                           child: Container(
//                             height: size.height * 0.12,
//                             width: size.width * 0.29,
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               border:
//                               Border.all(color: Colors.grey.shade200),
//                               borderRadius: BorderRadius.circular(7),
//                             ),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Container(
//                                     height: size.height * 0.06,
//                                     width: size.width * 0.16,
//                                     decoration: BoxDecoration(
//                                       shape: BoxShape.circle,
//                                       color: Colors.red.shade100,
//                                     ),
//                                     child: Icon(
//                                       Icons.call,
//                                       color: MyTheme.logored,
//                                     ),
//                                   ),
//                                 ),
//                                 Text(
//                                   "Call Now",
//                                   style: GoogleFonts.poppins(
//                                     fontSize: size.height * 0.015,
//                                     fontWeight: FontWeight.bold,
//                                     color: MyTheme.logored,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                       // Email Us Button
//                       Flexible(
//                         flex: 1,
//                         child: GestureDetector(
//                           onTap: () => _launchEmail(),
//                           //_launchURL('mailto:ndtechland@gmail.com'),
//                           child: Container(
//                             height: size.height * 0.12,
//                             width: size.width * 0.29,
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               border:
//                               Border.all(color: Colors.grey.shade200),
//                               borderRadius: BorderRadius.circular(7),
//                             ),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Container(
//                                     height: size.height * 0.06,
//                                     width: size.width * 0.16,
//                                     decoration: BoxDecoration(
//                                       shape: BoxShape.circle,
//                                       color: Colors.purple.shade100,
//                                     ),
//                                     child: Icon(
//                                       Icons.email,
//                                       color: Colors.purple.shade900,
//                                     ),
//                                   ),
//                                 ),
//                                 Text(
//                                   "Email Us",
//                                   style: GoogleFonts.poppins(
//                                     fontSize: size.height * 0.015,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.purple.shade900,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                       // WhatsApp Chat Button
//                       Flexible(
//                         flex: 1,
//                         child: GestureDetector(
//                           onTap: _launchWhatsApp,
//                           child: Container(
//                             height: size.height * 0.12,
//                             width: size.width * 0.29,
//                             decoration: BoxDecoration(
//                               color: Colors.white,
//                               border:
//                               Border.all(color: Colors.grey.shade200),
//                               borderRadius: BorderRadius.circular(7),
//                             ),
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               children: [
//                                 Padding(
//                                   padding: const EdgeInsets.all(8.0),
//                                   child: Container(
//                                     height: size.height * 0.06,
//                                     width: size.width * 0.16,
//                                     decoration: BoxDecoration(
//                                       shape: BoxShape.circle,
//                                       color: Colors.green.shade100,
//                                     ),
//                                     child: Icon(
//                                       Icons.chat,
//                                       color: Colors.green.shade900,
//                                     ),
//                                   ),
//                                 ),
//                                 Text(
//                                   "Chat Now",
//                                   style: GoogleFonts.poppins(
//                                     fontSize: size.height * 0.015,
//                                     fontWeight: FontWeight.bold,
//                                     color: Colors.green.shade900,
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(
//                   height: size.height * 0.02,
//                 ),
//                 // Spacer(),
//                 Expanded(
//                   child: SingleChildScrollView(
//                     child: Container(
//                       height: size.height * 0.49,
//                       width: size.width,
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: const BorderRadius.only(
//                           topLeft: Radius.circular(30.0),
//                           topRight: Radius.circular(30.0),
//                         ),
//                       ),
//                       child: Column(
//                         children: [
//                           SizedBox(height: size.height * 0.01),
//                           Align(
//                             alignment: Alignment.center,
//                             child: Padding(
//                               padding: EdgeInsets.symmetric(
//                                   horizontal: size.width * 0.05),
//                               child: Text(
//                                 'Quick Help?',
//                                 style: GoogleFonts.poppins(
//                                   fontWeight: FontWeight.w600,
//                                   fontSize: size.width * 0.05,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: size.height * 0.002),
//                           Align(
//                             alignment: Alignment.centerLeft,
//                             child: Padding(
//                               padding: EdgeInsets.symmetric(
//                                   horizontal: size.width * 0.05),
//                               child: Text(
//                                 'Phone',
//                                 style: GoogleFonts.poppins(
//                                   fontWeight: FontWeight.w600,
//                                   fontSize: size.width * 0.027,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: size.height * 0.01),
//                           Directionality(
//                             textDirection: TextDirection.ltr,
//                             child: CustomTextField(
//                               controller: _helpEmployeeController
//                                   .passwordController1,
//                               obscureText: false,
//                               textColor: MyTheme.whitecolor,
//                               fieldColor: MyTheme.themecolor,
//                               hintText: 'Enter Phone',
//                               keyboardType: TextInputType.number,
//                               inputFormatters: [
//                                 FilteringTextInputFormatter
//                                     .digitsOnly, // Restrict input to digits
//                                 LengthLimitingTextInputFormatter(
//                                     10), // Restrict to 10 digits max
//                               ],
//                               prefixIcon: Row(
//                                 mainAxisAlignment:
//                                 MainAxisAlignment.center,
//                                 mainAxisSize: MainAxisSize.min,
//                                 children: [
//                                   Padding(
//                                     padding: EdgeInsets.symmetric(
//                                         horizontal: 8.0),
//                                     child: Icon(
//                                       Icons.phone_android_outlined,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: size.height * 0.01),
//                           Align(
//                             alignment: Alignment.centerLeft,
//                             child: Padding(
//                               padding: EdgeInsets.symmetric(
//                                   horizontal: size.width * 0.05),
//                               child: Text(
//                                 'Reason',
//                                 style: GoogleFonts.poppins(
//                                   fontWeight: FontWeight.w600,
//                                   fontSize: size.width * 0.027,
//                                 ),
//                               ),
//                             ),
//                           ),
//                           SizedBox(height: size.height * 0.005),
//                           Directionality(
//                             textDirection: TextDirection.ltr,
//                             child: CustomTextField(
//                               controller: _helpEmployeeController
//                                   .passwordController2,
//                               maxLines: 3,
//                               obscureText: false,
//                               textColor: MyTheme.whitecolor,
//                               fieldColor: MyTheme.themecolor,
//                               hintText: 'Give Reason',
//                               keyboardType: TextInputType.text,
//                               prefixIcon: Row(
//                                 mainAxisAlignment:
//                                 MainAxisAlignment.start,
//                                 crossAxisAlignment:
//                                 CrossAxisAlignment.start,
//                                 mainAxisSize: MainAxisSize.min,
//                                 children: [
//                                   Padding(
//                                     padding: const EdgeInsets.symmetric(
//                                         horizontal: 8.0),
//                                     child: Icon(
//                                       Icons.question_mark_rounded,
//                                       color: Colors.white,
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             ),
//                           ),
//                           Spacer(),
//                           Center(
//                             child: GestureDetector(
//                               onTap: (){
//                                 // addDriverVehicleController.checkIn();
//                               },
//                               child: Container(
//                                 alignment: Alignment.center,
//                                 height: h/17,
//                                 width: w/1.5,
//                                 decoration: BoxDecoration(
//                                     color: MyTheme.btncolor,
//                                     borderRadius: BorderRadius.circular(12)
//                                 ),
//                                 child: Text("Submit",style: TextStyle(
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 16,
//                                     color: Colors.white
//                                 ),),
//                               ),
//                             ),
//                           ),
//                           // HorizontalButton(
//                           //   text: 'Submit',
//                           //   onClick: () {
//                           //     if (_helpEmployeeController
//                           //         .helpemployeeFormKey.currentState
//                           //         ?.validate() ??
//                           //         false) {
//                           //       _helpEmployeeController
//                           //           .checkHelp(context);
//                           //     }
//                           //     ;
//                           //     // Validate phone number
//                           //
//                           //     //Get.back();
//                           //     print('Submit clicked!');
//                           //   },
//                           // ),
//                           // SizedBox(height: size.height * 0.042),
//                           Spacer(),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//   Widget buildContactCard({
//     required IconData icon,
//     required String title,
//     required String content,
//     required String actionLabel,
//     required VoidCallback action,
//   }) {
//     return Card(
//       elevation: 4,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Icon(icon, size: 30, color: Colors.red),
//                 const SizedBox(width: 16),
//                 Expanded(
//                   child: Text(
//                     title,
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black87,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 8),
//             Text(
//               content,
//               style: TextStyle(
//                 fontSize: 16,
//                 color: Colors.grey[700],
//               ),
//               textAlign: TextAlign.center,
//             ),
//             const SizedBox(height: 12),
//             ElevatedButton(
//               onPressed: action,
//               style: ElevatedButton.styleFrom(
//                 backgroundColor: Colors.blue,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//               ),
//               child: Text(
//                 actionLabel,
//                 style: TextStyle(
//                   color: Colors.white,
//                   fontSize: 16,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vardaanadmin/constants/constants.dart';
import 'package:vardaanadmin/modules/widgets/custom_text.dart';
import '../controllers/contact_us__support_controller.dart';
import '../controllers/help_controller.dart';

class ContactUsUser extends StatelessWidget {
  ContactUsUser({Key? key}) : super(key: key);

  ContactUsGetController _contactUsGetController = Get.put(ContactUsGetController());
  HelpEmployeeController _helpEmployeeController = Get.put(HelpEmployeeController());

  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchWhatsApp() async {
    final phoneNumber = _contactUsGetController.getContactUsModel?.data?.employeeContactNumber;
    if (phoneNumber == null || phoneNumber.isEmpty) {
      Get.snackbar('Error', 'Contact number not available.');
      return;
    }
    final whatsappUrl = 'https://wa.me/$phoneNumber';
    if (await canLaunch(whatsappUrl)) {
      await launch(whatsappUrl);
    } else {
      Get.snackbar('Error', 'Could not launch WhatsApp.');
    }
  }

  Future<void> _launchEmail() async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: '${_contactUsGetController.getContactUsModel?.data?.emailId}',
      queryParameters: {
        'subject': 'Support Request',
        'body': 'Hello, I need help with...',
      },
    );
    try {
      if (await launchUrl(emailLaunchUri)) {
        // Email client launched successfully
      } else {
        Get.snackbar('Error', 'Could not launch email client.');
      }
    } catch (e) {
      Get.snackbar('Error', 'An unexpected error occurred while trying to launch the email client.');
    }
  }

  void _showEmergencyDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: Colors.red[50],
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          title: Row(
            children: [
              Icon(Icons.warning_amber_rounded, color: Colors.red),
              SizedBox(width: 8),
              Text('Emergency Confirmation', style: TextStyle(color: Colors.red,fontSize: 18,fontWeight: FontWeight.w700)),
            ],
          ),
          content: Text('Are you sure you want to make an emergency call?'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel', style: TextStyle(color: Colors.black)),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                Navigator.of(context).pop();
                _launchURL('tel:${_contactUsGetController.getContactUsModel?.data?.employeeEmergencyNumber}');
              },
              child: Text('Yes, Call Now', style: TextStyle(color: Colors.white,fontSize: 16)),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: MyTheme.themecolor,
        title: Text("Help", style: TextStyle(color: MyTheme.t1containercolor,fontWeight: FontWeight.bold)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.emergency, color: Colors.red),
            onPressed: () => _showEmergencyDialog(context),
          ),
        ],
      ),
      body: Obx(
            () => _helpEmployeeController.isLoading.value
            ? Center(child: CircularProgressIndicator())
            : SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Image Section
                Container(
                  height: size.height * 0.25,
                  width: size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.1),
                        blurRadius: 8,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.asset(
                      'lib/assets/help.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 16),

                // Action Buttons Row
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildActionButton(
                      icon: Icons.call,
                      label: 'Call Now',
                      color: Colors.red,
                      onTap: () => _launchURL('tel:${_contactUsGetController.getContactUsModel?.data?.employeeContactNumber}'),
                    ),
                    _buildActionButton(
                      icon: Icons.email,
                      label: 'Email Us',
                      color: Colors.blue,
                      onTap: () => _launchEmail(),
                    ),
                    _buildActionButton(
                      icon: Icons.chat,
                      label: 'Chat Now',
                      color: Colors.green,
                      onTap: _launchWhatsApp,
                    ),
                  ],
                ),
                SizedBox(height: 16),

                // Help Form Section
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue.shade50,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  padding: EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Need Help?', style: GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 10),
                      Text(
                        'Fill out the form below or contact us directly for more assistance.',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      // Align(
                      //       alignment: Alignment.centerLeft,
                      //       child: Padding(
                      //         padding: EdgeInsets.symmetric(
                      //             horizontal: size.width * 0.05),
                      //         child: Text(
                      //           'Phone',
                      //           style: GoogleFonts.poppins(
                      //             fontWeight: FontWeight.w600,
                      //             fontSize: size.width * 0.027,
                      //           ),
                      //         ),
                      //       ),
                      //     ),
                          SizedBox(height: size.height * 0.01),
                          Directionality(
                            textDirection: TextDirection.ltr,
                            child: CustomTextField(
                              controller: _helpEmployeeController
                                  .passwordController1,
                              obscureText: false,
                              textColor: MyTheme.t1containercolor,
                              fieldColor: AppColors.white,
                              hintText: 'Enter Phone',
                              keyboardType: TextInputType.number,
                              inputFormatters: [
                                FilteringTextInputFormatter
                                    .digitsOnly, // Restrict input to digits
                                LengthLimitingTextInputFormatter(
                                    10), // Restrict to 10 digits max
                              ],
                              prefixIcon: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Icon(
                                      Icons.phone_android_outlined,
                                      color: MyTheme.themecolor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // SizedBox(height: size.height * 0.01),
                          // Align(
                          //   alignment: Alignment.centerLeft,
                          //   child: Padding(
                          //     padding: EdgeInsets.symmetric(
                          //         horizontal: size.width * 0.05),
                          //     child: Text(
                          //       'Reason',
                          //       style: GoogleFonts.poppins(
                          //         fontWeight: FontWeight.w600,
                          //         fontSize: size.width * 0.027,
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          SizedBox(height: size.height * 0.02),
                          Directionality(
                            textDirection: TextDirection.ltr,
                            child: CustomTextField(
                              controller: _helpEmployeeController.passwordController2,
                              maxLines: 3,
                              obscureText: false,
                              textColor: MyTheme.t1containercolor,
                              fieldColor: AppColors.white,
                              hintText: 'Give Reason',
                              keyboardType: TextInputType.text,
                              prefixIcon: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.start,
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Icon(
                                      Icons.question_mark_rounded,
                                      color: MyTheme.themecolor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                      SizedBox(height: 20),
                      Center(
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: MyTheme.btncolor,
                            padding: EdgeInsets.symmetric(vertical: 14, horizontal: 30),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                          ),
                          onPressed: () {},
                          child: Text('Contact Support', style: TextStyle(fontSize: 16,color: AppColors.white,fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 90,
        width: 90,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.withOpacity(0.8), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          shape: BoxShape.circle,
          // borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 8,
              offset: Offset(0, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 34, color: Colors.white),
            SizedBox(height: 6),
            Text(label, style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}

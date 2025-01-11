import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vardaanadmin/modules/drivers/available_drivers.dart';
import 'package:vardaanadmin/modules/profile.dart';
import 'package:vardaanadmin/modules/routing_cab_allocations/routing.dart';
import 'package:vardaanadmin/modules/routing_cab_allocations/show_all_routes.dart';
import 'package:vardaanadmin/modules/side_drawer.dart';
import 'package:vardaanadmin/modules/vehicles/check_in_drivers.dart';
import 'package:vardaanadmin/modules/vehicles/vehicle_inspection.dart';
import 'package:vardaanadmin/modules/vehicles/vehicles_list.dart';
import '../constants/constants.dart';
import '../controllers/contact_us__support_controller.dart';
import '../controllers/help_controller.dart';
import 'drivers/drivers_list.dart';
import 'help.dart';
import 'local_notification_service.dart';
import 'notification_sender.dart';
import 'notification_service.dart';

List<String> imageList = [
  'https://plus.unsplash.com/premium_photo-1661714065634-e6430d1f2ff7?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://plus.unsplash.com/premium_photo-1661265896883-7c7fb253f611?q=80&w=2672&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://plus.unsplash.com/premium_photo-1683140697708-bbbea490f52d?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
  'https://plus.unsplash.com/premium_photo-1682091481266-07851df944a9?q=80&w=2670&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
 ];

class HomeDashboard extends StatefulWidget {
  const HomeDashboard({super.key});

  @override
  State<HomeDashboard> createState() => _HomeDashboardState();
}

class _HomeDashboardState extends State<HomeDashboard> {
  GlobalKey<ScaffoldState> _key = new GlobalKey();

  String micccallnumber = "7666008833";

  String customercare = "1912";

  final Uri _url = Uri.parse('https://vardaancab.com');

  ///whats app launcher for mobile.....

  _launchWhatsApp() async {
    var whatsapp = "+917033355555";
    var message = "Hi Vardaan";

    if (Platform.isIOS) {
      var whatsappIOS =
          "whatsapp://wa.me/$whatsapp/?text=${Uri.encodeComponent(message)}";
      if (await canLaunch(whatsappIOS)) {
        await launch(whatsappIOS);
      } else {
        Get.snackbar(
          "WhatsApp not installed",
          "Please install WhatsApp",
          colorText: Colors.red.shade400,
          backgroundColor: Colors.white10,
          icon: Icon(Icons.person, color: Colors.red),
          snackPosition: SnackPosition.TOP,
        );
      }
    } else if (Platform.isAndroid) {
      var whatsappAndroid =
          "whatsapp://send?phone=$whatsapp&text=${Uri.encodeComponent(message)}";
      if (await canLaunch(whatsappAndroid)) {
        await launch(whatsappAndroid);
      } else {
        Get.snackbar(
          "WhatsApp not installed",
          "Please install WhatsApp",
          colorText: Colors.red.shade400,
          backgroundColor: Colors.white10,
          icon: Icon(Icons.person, color: Colors.red),
          snackPosition: SnackPosition.TOP,
        );
      }
    } else {
      // Platform not recognized
      Get.snackbar(
        "WhatsApp not supported on this platform",
        "WhatsApp is not supported on this platform",
        colorText: Colors.red.shade400,
        backgroundColor: Colors.white10,
        icon: Icon(Icons.person, color: Colors.red),
        snackPosition: SnackPosition.TOP,
      );
    }
  }

  ///url launcher for web...
  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  // Function to show emergency confirmation dialog
  void _showEmergencyDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: AppColors.white,
          //Colors.red[50], // Light red background for emergency
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0), // Rounded corners
          ),
          title: Row(
            children: [
              Icon(
                Icons.warning_amber_rounded,
                color: Colors.red, // Warning icon for emergency
              ),
              SizedBox(width: 4),
              Text(
                'Emergency Confirmation',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.red,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          content: Text(
            'Are you sure you want to make an emergency call to 9877889923?',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
              fontWeight: FontWeight.w500,
            ),
          ),
          actions: <Widget>[
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.grey[700],
              ),
              child: Text(
                'Cancel',
                style: TextStyle(fontSize: 16),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Emergency color
              ),
              child: Text(
                'Yes, Call Now',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
                _launchURL('tel:9911879555');
              },
            ),
          ],
        );
      },
    );
  }

// Dialog Function
  Future<void> _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  HelpEmployeeController _helpEmployeeController = Get.put(HelpEmployeeController());

  ContactUsGetController _contactUsGetController = Get.put(ContactUsGetController());
  NotificationService notificationService = NotificationService();

  void _handleMessage(RemoteMessage message) {
    if (message.data.containsKey('id')) {
      String id = message.data['id'];
      // Handle navigation based on the notification
    }
  }
  @override
  void initState(){
    notificationService.notificationRequestPermission();
    notificationService.getDeviceToken();
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      // LocalNotificationService.createanddisplaynotification(message);
      LocalNotificationService.setupFirebaseListeners();
    });
    FirebaseMessaging.instance.getInitialMessage().then((message) {
      if (message != null) {
        _handleMessage(message);
      }
    });
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      if (message.notification != null) {
        _handleMessage(message);
      }
    });
    FirebaseMessaging.instance.getToken().then((deviceId) {
      print("Device ID (FCM Token): $deviceId");
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
        child:Scaffold(
      backgroundColor: AppColors.white,
      key: _key,
      appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: MyTheme.btncolor,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          leading: InkWell(
              onTap: () {
                _key.currentState!.openDrawer();
              },
              child: Icon(
                Icons.menu,
                color: MyTheme.whitecolor,
              )),
          title: Text("Vardaan Admin",style: TextStyle(
              color: MyTheme.whitecolor,
              fontWeight: FontWeight.bold
          ),)
      ),
          drawer: SideDrawer(),
          body: SingleChildScrollView(
            child: Column(
              children: [
                //banner
                Container(
                  height: size.height * 0.19,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: MyTheme.dvrskyblue8,
                  ),
                  child: Container(
                    height: size.height * 0.15,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        height: size.height * 0.14,
                        decoration: BoxDecoration(
                          color: AppColors.black,
                         borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          // child:
                          // Mycrusial(),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: size.height * 0.01,),
                Row(
                  children: [
                    _homeTile(),
                    // _buildContainer(icon: null, label: '', color: null, onTap: () {  })
                  ],
                )
              ],
            ),
          ),
    ));
  }
  Widget _homeTile(){
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        child: GestureDetector(
          onTap: () {},
              // _launchURL('tel:${_contactUsGetController.getContactUsModel?.data?.employeeContactNumber}'),
          child: Container(
            height: size.height * 0.12,
            width: size.width * 0.29,
            decoration: BoxDecoration(
              color: Colors.white,
              border:
              Border.all(color: Colors.grey.shade200),
              borderRadius: BorderRadius.circular(7),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: size.height * 0.06,
                    width: size.width * 0.16,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red.shade100,
                    ),
                    child: Icon(
                      Icons.call,
                      color: MyTheme.logored,
                    ),
                  ),
                ),
                Text(
                  "Call Now",
                  style: GoogleFonts.poppins(
                    fontSize: size.height * 0.015,
                    fontWeight: FontWeight.bold,
                    color: MyTheme.logored,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget _buildContainer({
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 100,
        width: 100,
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
            Icon(icon, size: 40, color: Colors.white),
            SizedBox(height: 8),
            Text(label, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white)),
          ],
        ),
      ),
    );
  }
}
class Mycrusial extends StatelessWidget {
  final _sliderKey = GlobalKey();
  // final BannerController _bannerController = Get.put(BannerController());

  Mycrusial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    // Fetch banners for the role "Driver"
    // _bannerController.BannersApi();

    return Scaffold(
        body:
        //Obx(() {
        // if (_bannerController.isLoading.value) {
        //   return Center(child: CircularProgressIndicator());
        // }
        //
        // if (_bannerController.bannerDriver!.data!.isEmpty) {
        //   return Center(child: Text("No banners available"));
        // }

        // return
        Padding(
          padding: EdgeInsets.all(0.0),
          child: Container(
            height: size.height * 0.23,
            width: size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(
              child: Material(
                borderRadius: BorderRadius.circular(10),
                elevation: 0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: CarouselSlider.builder(
                    key: _sliderKey,
                    unlimitedMode: true,
                    autoSliderTransitionTime: Duration(milliseconds: 500),
                    slideBuilder: (index) {
                      // final imgpath = 'https://new.signatureresorts.in/Images/';
                      // final bannerImage =
                      //     "${FixedText.imgebaseurlvardan}${_bannerController.bannerDriver!.data![index].bannerImage}";
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 1),
                        child: Material(
                          elevation: 12,
                          borderRadius: BorderRadius.circular(5),
                          child: Container(
                            height: size.height * 0.40,
                            width: size.width,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(5),
                              border: Border.all(
                                  color: Colors.grey.shade500, width: 1),
                              image: DecorationImage(
                                image:
                                NetworkImage(imageList[index]),
                                // NetworkImage(bannerImage),
                                fit: BoxFit.fill,
                                onError: (error, stackTrace) {
                                  print('Image Load Error: $error');
                                },
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                    slideTransform: DefaultTransform(),
                    slideIndicator: CircularSlideIndicator(
                      indicatorBorderWidth: 1,
                      indicatorRadius: 3,
                      itemSpacing: 15,
                      currentIndicatorColor: Colors.white,
                      indicatorBackgroundColor: Colors.grey.shade800,
                      padding: EdgeInsets.only(bottom: 0),
                    ),
                    itemCount: imageList.length,
                    // _bannerController.bannerDriver!.data!.length,
                    enableAutoSlider: true,
                  ),
                ),
              ),
            ),
          ),
        )
      // }),
    );
  }
}

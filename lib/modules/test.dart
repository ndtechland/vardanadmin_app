import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
// import 'dart:html' as html;

import 'package:url_launcher/url_launcher.dart';
class PhoneNum extends StatefulWidget {
  PhoneNum({Key? key}) : super(key: key);
  static String uid = "";
  static String cc = "";
  static String ph = "";

  @override
  State<PhoneNum> createState() => _PhoneNumState();
}

void _launchWhatsApp() async {
  // The phone number or group chat link
  String phoneNumber = '+917303472205';

  // Replace the leading "+" sign with "00" for international numbers
  // if (phoneNumber.startsWith('+')) {
  //   phoneNumber = phoneNumber.replaceFirst('+', '00');
  // }

  // Construct the WhatsApp URL
  String url = 'https://api.whatsapp.com/send?phone=917303472205&text=Get%20My%20Score';

  // Check if the URL can be launched
  if (await canLaunch(url)) {
    // Launch the URL
    await launch(url);
  } else {
    // Handle the error if the URL can't be launched
    throw 'Could not launch $url';
  }
}


class _PhoneNumState extends State<PhoneNum> {
  final _formKey = GlobalKey<FormState>();
  bool _isMessageSent = false;
  String _fullNumber = "";
  String cc = "";
  //late GlobalKey<FormState> _formKey;
  bool isChecked = false;
  @override
  void initState() {
    super.initState();
    // _checkMessageStatus();
    //  storeMessageStatus();
    //_formKey = GlobalKey<FormState>();
  }
  @override
  void dispose() {
    //_controller.dispose();
    super.dispose();
  }
  // Future<void> _checkMessageStatus() async {
  //   SharedPreferences prefs = await SharedPreferences.getInstance();
  //   bool isSent = prefs.getBool('messageSent') ?? false;
  //   setState(() {
  //     _isMessageSent = isSent;
  //   });
  // }
  // void storeMessageStatus() async {
  //   final preferences = await SharedPreferences.getInstance();
  //   await preferences.setBool('messageSent', true);
  // }
  // Future<void> showThanksPrompt() async {
  //   final preferences = await SharedPreferences.getInstance();
  //   final messageSent = preferences.getBool('messageSent') ?? false;
  //
  //   if (messageSent) {
  //     showDialog(
  //       context: context,
  //       builder: (context) {
  //         return AlertDialog(
  //           title: Text('Thanks!'),
  //           content: Text('Thank you for sending a message.'),
  //           actions: <Widget>[
  //             TextButton(
  //               child: Text('OK'),
  //               onPressed: () {
  //                 Navigator.of(context).pop();
  //               },
  //             ),
  //           ],
  //         );
  //       },
  //     );
  //   }
  // }


  bool continueEnabled = false;
  bool continueNameEnabled = false;
  TextEditingController fName = TextEditingController();
  TextEditingController phoneNum = TextEditingController();


  @override
  Widget build(BuildContext context) {
    // UserProvider userModel = Provider.of<UserProvider>(context, listen: true);
    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.selected,
        MaterialState.focused,
        MaterialState.pressed,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.white;
      }
      return Colors.white;
    }
    print("_continueEnabled:$continueEnabled");
    if(PhoneNum.ph!=""&&PhoneNum.ph.length==10)
    {
      phoneNum.text=PhoneNum.ph;
      continueEnabled = true;
    }
    // final FocusNode _UserNameFocus = FocusNode();
    final TextEditingController _pickupController = TextEditingController();
    final TextEditingController _dropController = TextEditingController();
    final TextEditingController _enterController = TextEditingController();

    String _lastFocusedField = ''; // Track which field is currently focused
    // final _formKey = GlobalKey<FormState>();
    String? _customerUsername;
    String? _commission;
    String? _notestexts;
    String? _selectedCar;
    int? _amount;
    String? _customerMobileNo;
    String? _selectedTripType;
    String? _startingLocation;
    String? _destination;
    int? _distance;
    String? _pickupDate;
    String? _returnDate;
    String? _selectedTollTax;
    Locale myLocale = Localizations.localeOf(context);
    print(myLocale.countryCode);
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return  Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Container(
            // height: height,
            // width: width,
            decoration: BoxDecoration(
              //color: web1,
                gradient: LinearGradient(colors: [Color(0xffE6F1F3),Color(0xffBACAE1)])
              //  image: DecorationImage(image: AssetImage('assets/bgg.png'),fit: BoxFit.cover),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50.0),
                        image: DecorationImage(
                            image: AssetImage('assets/logo.png'),
                            fit: BoxFit.cover)),
                  ),
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      // color: appBar,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          spreadRadius: 2,
                          blurRadius: 4,
                          offset: Offset(3, 3), // changes position of shadow
                        ),
                      ],
                      border: Border.all(width: 1, color: Colors.white70),
                      borderRadius: BorderRadius.all(Radius.circular(18)),
                    ),
                    child: Container(
                      width: width / 1.2,
                      height: height/1.5,
                      decoration: BoxDecoration(
                        //gradient: LinearGradient(colors: [Color(0xffE6F1F3),Color(0xffBACAE1)]),
                        color: Colors.white,
                        border: Border.all(width: 2,color: Colors.black87),
                        borderRadius: BorderRadius.all(Radius.circular(18)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height: 20,),
                           Text("Full Name",
                              style: TextStyle(
                                // color: web,
                                  fontFamily: 'Poppins',
                                  //fontWeight: FontWeight.w700,
                                  fontSize: 20
                              ),
                              maxLines: 1,
                              // minFontSize: 12,
                            ),
                            TextFormField(
                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              validator: (v) {
                                if (v == "" || v == null ) {
                                  continueNameEnabled = false;
                                  return "Enter Your Full Name";
                                } else {
                                  continueNameEnabled = true;
                                  return null;
                                }
                              },
                              controller: fName,
                              maxLines: 1,
                              onChanged: (v){
                                if (v == "" || v == null){
                                  continueEnabled = false;
                                  setState(() {
                                  });}
                                else
                                {
                                  continueEnabled = true;
                                  setState(() {
                                  });
                                }
                              },
                              decoration:
                              const InputDecoration(
                                //focusedBorder: myfocusborder(),
                                //filled: true,
                                isDense: true,
                                fillColor: Colors.white,
                                enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.black54),
                                ),
                                // focusedBorder: UnderlineInputBorder(
                                //   borderSide: BorderSide(color: web1),
                                // ),
                                // border: OutlineInputBorder(
                                //   borderSide: BorderSide(color: Colors.blue, width: 2),
                                //   borderRadius: BorderRadius.circular(8),
                                // ),
                                //hintText: 'First Name',
                                // border: OutlineInputBorder(
                                //     borderRadius: BorderRadius.circular(15.0)),
        
                                // focusedBorder: myfocusborder(),
                                //contentPadding: EdgeInsets.symmetric(vertical: 50)
                              ),
                            ),
                            TextFormField(
                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              // focusNode: _UserNameFocus,
                              decoration: InputDecoration(
                                labelText: 'User Name',
                                isDense: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              // onChanged: (value ){ FocusScope.of(context).requestFocus(_UserNameFocus); },
                              // keyboardType: TextInputType.none,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter the User Name';
                                }
                                return null;
                              },
                              onSaved: (value) => _customerUsername = value,
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                              autovalidateMode:
                              AutovalidateMode.onUserInteraction,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                labelText: 'Mobile No',
                                isDense: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              maxLength: 10,
                              validator: (value) {
                                if (value!.isEmpty || value.trim().length != 10) {
                                  return 'Please enter valid mobile number';
                                }
                                return null;
                              },
                              onSaved: (value) => _customerMobileNo = value,
                            ),
                            SizedBox(height: 20),
                            TextFormField(
                              controller: _pickupController,
                              onChanged: (value) {
                                _lastFocusedField = 'pickup'; // Set the focused field
                                // _pickupfetchSuggestions(value); // Fetching suggestions for pickup
                              },
                              decoration: InputDecoration(
                                labelText: 'Pickup Location',
                                hintText: _startingLocation,
                                isDense: true,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter the pickup location';
                                }
                                return null;
                              },
                              onSaved: (value) => _startingLocation = value,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.fromLTRB(18.0, 0, 0, 0),
                            //   child: Align(
                            //     alignment: Alignment.centerLeft,
                            //     child: Padding(
                            //       padding: EdgeInsets.only(
                            //         left: 12,
                            //         top: 1,
                            //       ),
                            //       child: Text(
                            //         "Last Name",
                            //         overflow: TextOverflow.ellipsis,
                            //         textAlign: TextAlign.left,
                            //         style: TextStyle(
                            //           color: topicText,
                            //           fontSize: 14,
                            //           fontFamily: 'Poppins',
                            //           fontWeight: FontWeight.w400,
                            //           height: 1.50,
                            //         ),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                            SizedBox(height: 10,),
                            // Text("Last Name",
                            //   style: TextStyle(
                            //       color: Color(0xff9277F6),
                            //       fontFamily: 'Poppins',
                            //       fontWeight: FontWeight.bold
                            //   ),
                            // ),
                            // TextFormField(
                            //   autovalidateMode:
                            //   AutovalidateMode.onUserInteraction,
                            //   validator: (v) {
                            //     if (v == "" || v == null || v ==" ") {
                            //       return "Enter Your Last Name";
                            //     } else
                            //       return null;
                            //   },
                            //   controller: lName,
                            //   maxLines: 1,
                            //   decoration: InputDecoration(
                            //     filled: true,
                            //     isDense: true,
                            //     fillColor: bgwhite,
                            //     enabledBorder: UnderlineInputBorder(
                            //       borderSide: BorderSide(color: appBar),
                            //     ),
                            //     focusedBorder: UnderlineInputBorder(
                            //       borderSide: BorderSide(color: appBar),
                            //     ),
                            //     //hintText: 'Write English Question',
                            //     // border: OutlineInputBorder(
                            //     //     borderRadius: BorderRadius.circular(18.0)),
                            //   ),
                            // ),
                            // SizedBox(
                            //   height: 8,
                            // ),
                            /*Padding(
                                            padding: const EdgeInsets.fromLTRB(18.0, 0, 0, 0),
                                            child: Align(
                                              alignment: Alignment.centerLeft,
                                              child: Padding(
                                                padding: EdgeInsets.only(
                                                  left: 14,
                                                  top: 2,
                                                ),
                                                child: Text(
                                                  "Email Address",
                                                  overflow: TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: TextStyle(
                                                    color: topicText,
                                                    fontSize: 14,
                                                    fontFamily: 'Poppins',
                                                    fontWeight: FontWeight.w400,
                                                    height: 1.50,
                                                  ),
                                                ),
                                              ),
                                            ),
                                        ),*/
                            Text("WhatsApp Number",
                              style: TextStyle(
                                // color: web,
                                fontFamily: 'Poppins',
                                //fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              // minFontSize: 12,
                              maxLines: 1,
                            ),
                            Container(
                              height: 55,
                              width: width/1.35,
                              padding: EdgeInsets.only(top: 15,left: 15,right: 15),
                              child: IntlPhoneField(
                                controller: phoneNum,
                                cursorColor: Colors.pink,
                                //cursorHeight: 28.0,
                                showDropdownIcon: false,
                                //dropdownIconPosition: null,
                                keyboardType: TextInputType.phone,
                                showCountryFlag: false,
                                disableLengthCheck: true,
                                dropdownTextStyle:  TextStyle(
                                  fontSize: 20,
                                  //fontWeight: FontWeight.w600,
        
                                ),
                                validator: (number) {
                                  if (number!.toString().isEmpty) {
                                    continueEnabled = false;
                                    return "Enter a phone number !!";
                                  }
                                  return null;
                                },
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
        
                                ),
        
                                initialCountryCode: "IN",
        
                                onChanged: (phone) {
                                  _fullNumber = phone.completeNumber;
                                  PhoneNum.cc =
                                      phone.countryISOCode.toString();
                                  PhoneNum.ph = phone.number;
                                  if (phone.number!.toString().isEmpty) {
                                    continueEnabled = false;
                                    setState(() {
        
                                    });
                                  }
                                  else if(phone.number.toString().length==10) {
                                    continueEnabled = true;
                                    setState(() {
        
                                    });
                                  }
                                  else if(continueEnabled){
                                    continueEnabled = false;
                                    setState(() {
        
                                    });
                                  }
                                },
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: Container(
                                decoration: BoxDecoration(
                                  //color:web,
                                    borderRadius: BorderRadius.circular(26),
                                    gradient: LinearGradient(colors: [Color(0xff85EAFE),Color(0xff7AA3DC)])
                                  //color: web,
                                ),
                                height: height / 18,
                                width: width/2,
                                // padding: EdgeInsets.symmetric(horizontal: 20),
                                // margin: EdgeInsets.symmetric(horizontal: 10),
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                      padding: EdgeInsets.all(8.0)
                                  ),
                                  // elevation: 0,
                                  // shape: RoundedRectangleBorder(
                                  //     borderRadius: BorderRadius.circular(20)),
                                  child: Text(
                                      "Submit", style:TextStyle(color: Colors.pink,
                                      fontSize: 17,fontWeight: FontWeight.bold)),
                                  onPressed:(continueEnabled&&continueNameEnabled)? () async {
                                    //_launchWhatsApp();
                                    print("hello");
                                    if (_formKey.currentState!.validate()) {
                                      print('!hello!');
                                      //print('fullName.text.trim().substring(0,fullName.text.lastIndexOf(' ')+1):${fullName.text.trim()}');
                                      //String fulName=fullName.text.trim();
                                      // print('fulName.substring(0,fullName.text.lastIndexOf(' ')+1):${fulName.substring(fullName.text.lastIndexOf(' '))}');
                                      // bool x = await userModel.updateProfile(
                                      //     fName: fName.text.trim(),
                                      //     phoneNum: phoneNum.text.trim()
                                      //   // lName: lName.text.trim(),
                                      //   // email: email.text.trim()
                                      // );
                                      //
                                      // if(x)
                                      // {
                                      //   showDialog(context: context, builder: (BuildContext context) {
                                      //     return AlertDialog(
                                      //         title: Text("Verify via WhatsApp to get your Score ",
                                      //           style: TextStyle(
                                      //             fontSize: 20,
                                      //             fontFamily: 'Poppins',
                                      //             //fontWeight: FontWeight.bold
                                      //           ),),
                                      //         //content: Text("Are you sure you want to log out?"),
                                      //         actions: <Widget>[
                                      //           TextButton(
                                      //             child: Container(
                                      //                 width: 80,
                                      //                 height:30,
                                      //                 decoration: BoxDecoration(
                                      //                   color:web1,
                                      //                   borderRadius: BorderRadius.circular(8),
                                      //                 ),
                                      //                 child: Center(
                                      //                   child: Text("Verify",
                                      //                     style: TextStyle(
                                      //                         color: Colors.black
                                      //                     ),),
                                      //                 )),
                                      //             onPressed: () {
                                      //               // QR.toName(AppRoutes.thankPage);
                                      //               // https://prelimsanswerkey.com/thankyou.html
                                      //               _launchWhatsApp();
                                      //               html.window.open('https://www.fluttercampus.com',"_self");
                                      //               // Navigator.of(context).pop();
                                      //             },
                                      //           ),
                                      //           if (_isMessageSent)
                                      //             Text(
                                      //               'Thanks for sending the message!',
                                      //               style: TextStyle(fontSize: 20),
                                      //             ),
                                      //         ]
                                      //     );
                                      //   });
                                      // }
                                      // else
                                      // {
                                      //   ScaffoldMessenger.of(context)
                                      //       .showSnackBar(const SnackBar(
                                      //       content: Text(
                                      //           'Phone number already exists please enter a new number')));
                                      // }
                                      // print("00");
                                      //   if (x) {
                                      //     MyReportsProvider myReportsProvider =
                                      //     Provider.of<MyReportsProvider>(context, listen: false);
                                      //     print(
                                      //         "MyReports Page " + myReportsProvider.subjectList.length.toString());
                                      //     //TODO: make changes to update my report only when necessary
                                      //     // myReportsProvider.subjectModelList.clear();
                                      //     // myReportsProvider.listCompletedTests.clear();
                                      //     // myReportsProvider.subjectList.clear();
                                      //     //Remove till here
                                      //     if (myReportsProvider.leafSubjectQuestion.isEmpty) {
                                      //       print("Get all lsit");
                                      //       myReportsProvider.getListOfCompletedTest();
                                      //     }
                                      //     Navigator.pushReplacement(context,
                                      //         MaterialPageRoute(builder: (context) {
                                      //           return Home();
                                      //         }));
                                      //   }
                                    }
                                  }:null,
                                  // continueEnabled ? () async {
                                  // _launchWhatsApp
                                  // }:null
                                  //   _formKey.currentState!.save();
                                  //   if (_formKey.currentState!.validate() && PhoneNum.ph.length==10 ) {
                                  //     // facebookAppEvents.logEvent(
                                  //     //   name: 'phone_entered',
                                  //     //   parameters: {
                                  //     //     'phoneNum': _fullNumber,
                                  //     //   },
                                  //     // );
                                  //     // analytics.logEvent(
                                  //     //   name: 'phone_entered',
                                  //     //   parameters: {
                                  //     //     'phoneNum': _fullNumber,
                                  //     //   },
                                  //     // );
                                  //     Navigator.of(context).pop(
                                  //       // MaterialPageRoute(
                                  //       //     builder: (_) => OtpScreen(
                                  //       //       command: "Login",
                                  //       //       number: _fullNumber, cc: '',
                                  //       //
                                  //       //     )),
                                  //     );
                                  //   }
                                  // }:null
                                  // },
                                ),
                              ),
                            ),
                            // TextFormField(
                            //   autovalidateMode:
                            //   AutovalidateMode.onUserInteraction,
                            //   validator: (v) {
                            //     String pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
                            //     RegExp regExp = new RegExp(pattern);
                            //     if (v == "" ) {
                            //       return "Enter Your Email";
                            //
                            //     }
                            //     else if (!regExp.hasMatch(v!)) {
                            //       return 'Invalid email address';
                            //     }
                            //     else {
                            //       // Set the isEmailValid variable to true if the email is valid
                            //
                            //       isEmailValid = true;
                            //       return null;
                            //     }
                            //
                            //   },
                            //   onChanged:(v) {
                            //     String pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
                            //     RegExp regExp = new RegExp(pattern);
                            //     if (v !="" &&regExp.hasMatch(v!)) {
                            //       continueEnabled=true;
                            //       setState(() {
                            //
                            //       });
                            //     }
                            //     else{
                            //       continueEnabled=false;
                            //       setState(() {
                            //
                            //       });
                            //     }
                            //
                            //   },
                            //   controller: phoneNum,
                            //   maxLines: 1,
                            //   decoration: InputDecoration(
                            //     filled: true,
                            //     isDense: true,
                            //     fillColor: Colors.white,
                            //     enabledBorder: UnderlineInputBorder(
                            //       borderSide: BorderSide(color: Color(0xff9277F6)),
                            //     ),
                            //     focusedBorder: UnderlineInputBorder(
                            //       borderSide: BorderSide(color: Color(0xff9277F6)),
                            //     ),
                            //     // hintText: 'Email Address',
                            //     // border: OutlineInputBorder(
                            //     //     borderRadius: BorderRadius.circular(18.0)),
                            //
                            //
                            //   ),
                            // ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 100,
                  // color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
  OutlineInputBorder myfocusborder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        borderSide: BorderSide(
          color: Colors.pink,
          width: 3,
        ));
  }
}

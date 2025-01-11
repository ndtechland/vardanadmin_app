// // ignore_for_file: public_member_api_docs, sort_constructors_first
// import 'dart:convert';
// import 'dart:math';
// import 'package:cabbook/drawer/drawer.dart';
// import 'package:cabbook/v2codes/ShowDriverBookings.dart';
// import 'package:cabbook/v2codes/autocomplete.dart';
// import 'package:cabbook/v2codes/navobserver.dart';
// import 'package:cabbook/v2codes/services.dart';
// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:google_maps_webservice/directions.dart';
// import 'package:google_maps_webservice/places.dart';
// import 'package:http/http.dart' as http;
// import 'package:intl/intl.dart';
// import 'package:razorpay_flutter/razorpay_flutter.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:uuid/uuid.dart';
// import '../Language/appLocalizations.dart';
// import '../appTheme.dart';
// import '../constance/constance.dart';
// import 'dart:async';
//
//
// class AddsBookingsForm extends StatefulWidget {
//   @override
//   _AddsBookingsFormState createState() => _AddsBookingsFormState();
// }
// class _AddsBookingsFormState extends State<AddsBookingsForm> {
//
//   TextEditingController _controller = TextEditingController();
//   List<String> _dropSuggestions = [];
//   List<String> _pickupSuggestions = [];
//   List<String> _enterSuggestions = [];
//   List<TextEditingController> _controllers = []; // Create a list of controllers
//   String _sessionToken = Uuid().v4();
// // Create separate controllers for pickup and drop locations
//   final TextEditingController _pickupController = TextEditingController();
//   final TextEditingController _dropController = TextEditingController();
//   final TextEditingController _enterController = TextEditingController();
//
//   String _lastFocusedField = ''; // Track which field is currently focused
//   final _formKey = GlobalKey<FormState>();
//   String? _customerUsername;
//   String? _commission;
//   String? _notestexts;
//   String? _selectedCar;
//   int? _amount;
//   Location? _startPosition;
//   int? _focusedIndex; // Track which index is currently focused
//   String? _customerMobileNo;
//   String? _selectedTripType;
//   String? _startingLocation;
//   String? _destination;
//   int? _distance;
//   String? _pickupDate;
//   String? _returnDate;
//   String? _selectedTollTax;
//   int? _extraKm;
//   String? _pickupTime;
//   late Razorpay _razorpay;
//   bool loading = false;
//   List destinations = [];
//
//   get _tabController => null;
//   get index => null;
//
//   // Focus Nodes
//   final FocusNode _UserNameFocus = FocusNode();
//
//   @override
//   void initState() {
//     super.initState();
//     _razorpay = Razorpay();
//     _initializeRazorpay();
//     _getCarType();
//     _getpercent();
//     getUserData();
//     _getApiKeyapp();
//     _pickupfetchSuggestions;
//     _dropfetchSuggestions;
//     _enterfetchSuggestions;
//
//   }
// // Variables to store text for each field
//
//   String? DriverNam;
//   String Phoneuser = "";
//   String Email = "";
//   String id="";
//   var driverdata;
//   static const ROOT = "https://www.solocabs.com/driverapp-apis";
//
//
//
//   Future<List?> getApiKeyapp() async {
//     print("dd");
//     var response = await http.post(Uri.parse(base), body: {
//       "action": 'getApiKeyapp',
//     });
//     print(response.body);
//     return jsonDecode(response.body);
//   }
//
//
//   List<String> _myApikey = [];
//   void _getApiKeyapp() async {
//     try {
//       final result = await getApiKeyapp();
//       setState(() {
//         _myApikey = result!.map((r) => r.values.first.toString()).toList();
//       });
//     } catch (e) {
//       print(e.toString());
//     }
//   }
//   void _pickupfetchSuggestions(String query) async {
//     if (query.isEmpty || _myApikey.isEmpty) {
//       setState(() {
//         print("1 Set Sate");
//         _pickupSuggestions = [];
//       });
//       return;
//     }
//
//     try {
//       Position position = await Geolocator.getCurrentPosition();
//       final response = await http.get(Uri.parse(
//         'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$query&key=${_myApikey.first}&components=country:IN&location=${position.latitude},${position.longitude}&radius=50000&sessiontoken=$_sessionToken',
//       ));
//
//       if (response.statusCode == 200) {
//         var json = jsonDecode(response.body);
//         List<dynamic> predictions = json['predictions'];
//         setState(() {
//           _pickupSuggestions = predictions.map((p) => p['description'].toString()).toList();
//         });
//       } else {
//         Fluttertoast.showToast(msg: 'Failed to fetch suggestions: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('Error fetching suggestions: $e');
//       Fluttertoast.showToast(msg: 'Error fetching suggestions');
//     }
//   }
//
//   void _dropfetchSuggestions(String query) async {
//     if (query.isEmpty || _myApikey.isEmpty) {
//       setState(() {
//         _dropSuggestions = [];
//       });
//       return;
//     }
//
//     try {
//       Position position = await Geolocator.getCurrentPosition();
//       final response = await http.get(Uri.parse(
//         'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$query&key=${_myApikey.first}&components=country:IN&location=${position.latitude},${position.longitude}&radius=50000&sessiontoken=$_sessionToken',
//       ));
//
//       if (response.statusCode == 200) {
//         var json = jsonDecode(response.body);
//         List<dynamic> predictions = json['predictions'];
//         setState(() {
//           _dropSuggestions = predictions.map((p) => p['description'].toString()).toList();
//         });
//       } else {
//         Fluttertoast.showToast(msg: 'Failed to fetch suggestions: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('Error fetching suggestions: $e');
//       Fluttertoast.showToast(msg: 'Error fetching suggestions');
//     }
//   }
//
//   void _enterfetchSuggestions(String query) async {
//     if (query.isEmpty || _myApikey.isEmpty) {
//       setState(() {
//         _enterSuggestions = [];
//       });
//       return;
//     }
//
//     try {
//       Position position = await Geolocator.getCurrentPosition();
//       final response = await http.get(Uri.parse(
//         'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$query&key=${_myApikey.first}&components=country:IN&location=${position.latitude},${position.longitude}&radius=50000&sessiontoken=$_sessionToken',
//       ));
//
//       if (response.statusCode == 200) {
//         var json = jsonDecode(response.body);
//         List<dynamic> predictions = json['predictions'];
//         setState(() {
//           _enterSuggestions = predictions.map((p) => p['description'].toString()).toList();
//         });
//       } else {
//         Fluttertoast.showToast(msg: 'Failed to fetch suggestions: ${response.statusCode}');
//       }
//     } catch (e) {
//       print('Error fetching suggestions: $e');
//       Fluttertoast.showToast(msg: 'Error fetching suggestions');
//     }
//   }
//
//   Future getUserData() async {
//     SharedPreferences prefs = await SharedPreferences.getInstance();
//     print("this is the driver id:");
//     print(prefs.getString('id')!);
//     var response = await http.post(Uri.parse(ROOT), body: {
//       "action": 'getUserData',
//       "driverId": prefs.getString('id')!,
//     });
//     var jsondata = json.decode(response.body);
//     print(jsondata.toString());
//     driverdata=jsondata;
//     setState(() {
//       DriverNam = jsondata["user_name"];
//       Phoneuser = jsondata["phone"];
//       Email = jsondata["email"];
//       id= jsondata["id"];
//
//     });
//     return jsondata;
//   }
//
//   int _percent = 10;
//   _getpercent() async {
//     try {
//       final data = {"action": "getaddBookingPercent"};
//       final result = await Dio().post(base, data: FormData.fromMap(data));
//       print(result.toString());
//       setState(() {
//         _percent = int.tryParse(result.data['percent'].toString()) ?? 10;
//         print(_percent.toString()+'percent');
//       });
//     } catch (e) {
//       Fluttertoast.showToast(msg: "Error While Gettting Percentage");
//       print(e.toString());
//     }
//   }
//
// //calling function
//   _launchcall(String phone) async {
//     var url = 'tel:$phone';
//     if (await canLaunch(url)) {
//       await launch(url);
//     } else {
//       throw 'Could not launch $url';
//     }
//   }
//
//   void _initializeRazorpay() {
//     _razorpay.on(Razorpay.EVENT_PAYMENT_SUCCESS, _handlePaymentSuccess);
//     _razorpay.on(Razorpay.EVENT_PAYMENT_ERROR, _handlePaymentError);
//     _razorpay.on(Razorpay.EVENT_EXTERNAL_WALLET, _handleExternalWallet);
//   }
//
//   void openCheckout({int? balance}) {
//     print(_amount.toString() + 'Amount111');
//
//     // Generate a short unique payment ID
//     String uniquePaymentId = generateShortPaymentId();
//
//     // Directly submit the form with the unique payment ID
//     submit(uniquePaymentId);
//   }
//
//   void _handlePaymentSuccess(PaymentSuccessResponse response) {
//     print("Payment Successful");
//
//     submit(response.paymentId);
//   }
//
//   void _handlePaymentError(PaymentFailureResponse response) {
//     setState(() {
//       loading = false;
//     });
//     print("Payment Failure");
//   }
//
//   void _handleExternalWallet(ExternalWalletResponse response) {
//     print("External Wallet");
//   }
//
// // Function to generate a short unique payment ID
//   String generateShortPaymentId() {
//     final timestamp = DateTime.now().millisecondsSinceEpoch.toString();
//     final shortTimestamp = timestamp.substring(timestamp.length - 5); // Last 5 digits of timestamp
//     final randomPart = Random().nextInt(9999).toString().padLeft(4, '0'); // Random 4-digit number
//
//     return "PAY_$shortTimestamp$randomPart"; // Example: PAY_345678901
//   }
//
//   List<String> _carTypes = [];
//
//   void _getCarType() async {
//     try {
//       final result = await getCarType();
//       setState(() {
//         _carTypes = result!.map((r) => r.values.first.toString()).toList();
//       });
//     } catch (e) {
//       print(e.toString());
//     }
//   }
//   Future<void> showInformationDialog() async {
//     return showDialog(
//       context: context,
//       builder: (context) {
//         return StatefulBuilder(
//           builder: (context, setState) {
//             return AlertDialog(
//               title: Text(
//                 'Note: बुकिंग पोस्ट करने पर कोई शुल्क नहीं है अगर बुकिंग फर्जी या किसी भी तरह की धोखाधडी होती है तो इस स्थिति में वॉलेट राशि माइंस होगी और आईडी भी ब्लॉक हो सकती है धन्यवाद',
//                 style: Theme.of(context).textTheme.headline6!.copyWith(
//                   fontWeight: FontWeight.bold,
//                   color: Colors.red, // Set 'id' text color to red
//                   fontSize: 15,
//                 ),
//               ),
//               actions: <Widget>[
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     ElevatedButton(
//                       onPressed: () {
//                         Navigator.of(context).pop(); // Close the dialog
//                       },
//                       child: Text('I Agree'),
//                     ),
//                   ],
//                 ),
//               ],
//             );
//           },
//         );
//       },
//     );
//   }
//
//
//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () => lastback(),
//       child: DefaultTabController(
//         length: 2,
//         child: Scaffold(
//           backgroundColor: Theme.of(context).canvasColor,
//           key: _formKey,
//           drawer: SizedBox(
//             width: MediaQuery.of(context).size.width * 0.75 < 400
//                 ? MediaQuery.of(context).size.width * 0.75
//                 : 350,
//             child: Drawer(
//               child: AppDrawer(
//                 selectItemName: 'Post Booking',
//               ),
//             ),
//           ),
//           appBar: AppBar(
//             bottom: TabBar(
//               controller: _tabController,
//               indicator: BoxDecoration(
//                 color: Colors.black26,
//                 borderRadius: BorderRadius.circular(0),
//               ),
//               onTap: (index) {
//                 var currentScreen = index;
//               },
//               tabs: [Tab(text: 'Show Post Booking Click on My Booking Button')],
//               labelColor: const Color.fromARGB(255, 255, 255, 255), // White color
//               labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
//             ),
//             backgroundColor:Colors.blue,
//             // automaticallyImplyLeading: true,
//             title:  Row(
//               children: <Widget>[
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.only(
//                       left: 40.0,
//                     ),
//                     child: Text(
//                       AppLocalizations.of(''),
//                       style: Theme.of(context).textTheme.headline6!.copyWith(
//                         fontWeight: FontWeight.bold,
//                         color: ConstanceData.secoundryFontColor,
//                       ),
//                       textAlign: TextAlign.center,
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   height: AppBar().preferredSize.height,
//                   width: AppBar().preferredSize.height,
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Container(
//                       alignment: Alignment.centerLeft,
//                       child: GestureDetector(
//                       ),
//                     ),
//                   ),
//                 ),
//                 InkWell(
//                   onTap: ()async{
//                     final res =    await  Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (context) =>  ShowDriverBookings(),
//                       ),
//                     );
//                     getStatus();
//                   },
//                   child: Padding(
//                     padding:
//                     const EdgeInsets.only(
//                         right: 14,
//                         left: 14,
//                         top: 8),
//                     child: Container(
//                       width: 130,
//                       height: 40,
//                       decoration: BoxDecoration(
//                         borderRadius:
//                         BorderRadius.circular(
//                             10),
//                         color:
//                         AppTheme.isLightTheme
//                             ? Colors.amber[200]
//                             : Colors.black,
//                       ),
//                       child: Center(
//                         child: Text(
//                           AppLocalizations.of(
//                               'My Booking'),
//                           style: Theme.of(context)
//                               .textTheme
//                               .titleMedium!
//                               .copyWith(
//                             fontWeight:
//                             FontWeight
//                                 .bold,
//                             color: Colors.black,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 SizedBox(
//                   width: 50.0,
//                   height: 50.0,
//                   // button width and height
//                   child: ClipOval(
//                     child: Material(
//                       color: Colors.black, // button color
//                       child: InkWell(
//                         splashColor: Colors.green, // splash color
//                         onTap: () {
//                           _launchcall("+919120150097");
//                         }, // button pressed
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: <Widget>[
//                             Icon(FontAwesomeIcons.headset), // icon// text
//                           ],
//                         ),
//                       ),
//                     ),
//                   ),
//                 )
//               ],
//             ),
//           ),
//           body: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
//             child: SingleChildScrollView(
//               child: Form(
//                 key: _formKey,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     SizedBox(height: 20),
//                     DropdownButtonFormField<String>(
//                       decoration: InputDecoration(
//                         labelText: 'Select Trip Type',
//                         isDense: true,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                       value: _selectedTripType,
//                       onChanged: (value) {
//                         setState(() {
//                           _selectedTripType = value;
//                           // Show the dialog whenever the value is changed
//                           showInformationDialog();
//                         });
//                       },
//                       validator: (value) {
//                         return value == null ? 'Please select a trip type' : null;
//                       },
//                       items: const [
//                         DropdownMenuItem(
//                           child: Text('One way trip'),
//                           value: 'One way trip',
//                         ),
//                         DropdownMenuItem(
//                           child: Text('Round trip'),
//                           value: 'Round trip',
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 20),
//                     DropdownButtonFormField<String>(
//                       decoration: InputDecoration(
//                         labelText: 'Select Car',
//                         isDense: true,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                       value: _selectedCar,
//                       onChanged: (value) => setState(() => _selectedCar = value),
//                       validator: (value) =>
//                       value == null ? 'Please select a car' : null,
//                       onSaved: (value) => _selectedCar = value,
//                       items: _carTypes
//                           .map(
//                             (e) => DropdownMenuItem(
//                           child: Text(e),
//                           value: e,
//                         ),
//                       )
//                           .toList(),
//                     ),
//                     const SizedBox(height: 20),
//                     DropdownButtonFormField<String>(
//                       decoration: InputDecoration(
//                         labelText: 'Toll and Tax',
//                         isDense: true,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                       value: _selectedTollTax,
//                       onChanged: (value) =>
//                           setState(() => _selectedTollTax = value),
//                       validator: (value) => value == null
//                           ? 'Please select a toll and tax option'
//                           : null,
//                       items: [
//                         DropdownMenuItem(
//                           child: Text('Included'),
//                           value: 'Included',
//                         ),
//                         DropdownMenuItem(
//                           child: Text('Extra'),
//                           value: 'Extra',
//                         ),
//                       ],
//                     ),
//                     SizedBox(height: 20),
//                     TextFormField(
//                       focusNode: _UserNameFocus,
//                       decoration: InputDecoration(
//                         labelText: 'User Name',
//                         isDense: true,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                       onChanged: (value ){ FocusScope.of(context).requestFocus(_UserNameFocus); },
//                       // keyboardType: TextInputType.none,
//                       validator: (value) {
//                         if (value!.isEmpty) {
//                           return 'Please enter the User Name';
//                         }
//                         return null;
//                       },
//                       onSaved: (value) => _customerUsername = value,
//                     ),
//                     SizedBox(height: 20),
//                     TextFormField(
//                       keyboardType: TextInputType.number,
//                       decoration: InputDecoration(
//                         labelText: 'Mobile No',
//                         isDense: true,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                       maxLength: 10,
//                       validator: (value) {
//                         if (value!.isEmpty || value.trim().length != 10) {
//                           return 'Please enter valid mobile number';
//                         }
//                         return null;
//                       },
//                       onSaved: (value) => _customerMobileNo = value,
//                     ),
//                     SizedBox(height: 20),
//                     TextFormField(
//                       controller: _pickupController,
//                       onChanged: (value) {
//                         _lastFocusedField = 'pickup'; // Set the focused field
//                         _pickupfetchSuggestions(value); // Fetching suggestions for pickup
//                       },
//                       decoration: InputDecoration(
//                         labelText: 'Pickup Location',
//                         hintText: _startingLocation,
//                         isDense: true,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                       validator: (value) {
//                         if (value!.isEmpty) {
//                           return 'Please enter the pickup location';
//                         }
//                         return null;
//                       },
//                       onSaved: (value) => _startingLocation = value,
//                     ),
//                     SizedBox(height: 10),
//                     _pickupSuggestions.isNotEmpty
//                         ? SizedBox(
//                       height: 150, // Limit height of ListView to avoid overflow
//                       child: ListView.builder(
//                         itemCount: _pickupSuggestions.length,
//                         itemBuilder: (context, index) {
//                           return ListTile(
//                             title: Text(_pickupSuggestions[index]),
//                             onTap: () {
//                               _pickupController.text = _pickupSuggestions[index]; // Set the selected suggestion for pickup
//                               _pickupController.selection = TextSelection.fromPosition(
//                                 TextPosition(offset: _pickupController.text.length),
//                               ); // Move cursor to the end
//                               setState(() {
//                                 _pickupSuggestions = []; // Clear suggestions after selection
//                               });
//                             },
//                           );
//                         },
//                       ),
//                     )
//                         : Container(),
//                     SizedBox(height: 20),
//                     TextFormField(
//                       controller: _dropController,
//                       onChanged: (value) {
//                         _lastFocusedField = 'drop'; // Set the focused field
//                         _dropfetchSuggestions(value); // Fetching suggestions for drop
//                       },
//                       decoration: InputDecoration(
//                         labelText: 'Drop Location',
//                         hintText: _destination,
//                         isDense: true,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                       validator: (value) {
//                         if (value!.isEmpty) {
//                           return 'Please enter the Drop location';
//                         }
//                         return null;
//                       },
//                       onSaved: (value) => _destination = value,
//                     ),
//                     SizedBox(height: 10),
//                     _dropSuggestions.isNotEmpty
//                         ? SizedBox(
//                       height: 150, // Limit height of ListView to avoid overflow
//                       child: ListView.builder(
//                         itemCount: _dropSuggestions.length,
//                         itemBuilder: (context, index) {
//                           return ListTile(
//                             title: Text(_dropSuggestions[index]),
//                             onTap: () {
//                               _dropController.text = _dropSuggestions[index]; // Set the selected suggestion for drop
//                               _dropController.selection = TextSelection.fromPosition(
//                                 TextPosition(offset: _dropController.text.length),
//                               ); // Move cursor to the end
//                               setState(() {
//                                 _dropSuggestions = []; // Clear suggestions after selection
//                               });
//                             },
//                           );
//                         },
//                       ),
//                     )
//                         : Container(),
//                     // Add destination button when no destinations are present and for "Round trip" trips
//                     // Add destination button when no destinations are present and for "Round trip" trips
//                     if (_selectedTripType == "Round trip" && destinations.isEmpty)
//                       ElevatedButton.icon(
//                         icon: Icon(Icons.add),
//                         label: Text("Add Destination"),
//                         onPressed: () {
//                           setState(() {
//                             destinations.insert(0, ""); // Add a new destination as an empty string
//                             _controllers.insert(0, TextEditingController()); // Add a new controller for the new destination
//                             _focusedIndex = 0; // Set focused index to the new destination
//                           });
//                         },
//                       ),
//                     SizedBox(height: 20),
//                     Column(
//                       children: List.generate(destinations.length, (i) {
//                         // Ensure that there is a controller for each destination
//                         if (_controllers.length < destinations.length) {
//                           _controllers.add(TextEditingController());
//                         }
//                         return Column(
//                           children: [
//                             Row(
//                               children: [
//                                 // TextFormField for entering/selecting a destination
//                                 Expanded(
//                                   child: TextFormField(
//                                     controller: _controllers[i],
//                                     onTap: () {
//                                       setState(() {
//                                         _focusedIndex = i; // Set focus on the clicked field
//                                         _enterfetchSuggestions(""); // Fetch suggestions (you can adjust this to fetch relevant suggestions)
//                                       });
//                                     },
//                                     onChanged: (value) {
//                                       _focusedIndex = i; // Keep track of the focused field
//                                       _enterfetchSuggestions(value); // Fetch suggestions as the user types
//                                     },
//                                     decoration: InputDecoration(
//                                       labelText: 'Enter Location',
//                                       hintText: destinations[i],
//                                       isDense: true,
//                                       border: OutlineInputBorder(
//                                         borderRadius: BorderRadius.circular(10),
//                                       ),
//                                     ),
//                                     validator: (value) {
//                                       if (value!.isEmpty) {
//                                         return 'Please enter a location';
//                                       }
//                                       return null;
//                                     },
//                                     onSaved: (value) => destinations[i] = value,
//                                   ),
//                                 ),
//                                 SizedBox(width: 10),
//                                 // Add and Remove buttons for destinations
//                                 if (_selectedTripType == "Round trip" && destinations.length == (i + 1))
//                                   IconButton(
//                                     icon: Icon(Icons.add),
//                                     onPressed: () {
//                                       setState(() {
//                                         destinations.insert(i + 1, ""); // Insert new empty destination
//                                         _controllers.insert(i + 1, TextEditingController());
//                                         _focusedIndex = i + 1; // Focus on the newly added field
//                                       });
//                                     },
//                                   ),
//                                 if (_selectedTripType == "Round trip" && destinations.length > 1)
//                                   IconButton(
//                                     icon: Icon(Icons.remove),
//                                     onPressed: () {
//                                       setState(() {
//                                         destinations.removeAt(i);
//                                         _controllers.removeAt(i);
//                                         if (_focusedIndex == i) {
//                                           _focusedIndex = null; // Reset focus if the removed field was focused
//                                         }
//                                       });
//                                     },
//                                   ),
//                               ],
//                             ),
//                             SizedBox(height: 10),
//                             // Display suggestion box only for the currently focused field
//                             if (_focusedIndex == i && _enterSuggestions.isNotEmpty)
//                               Container(
//                                 height: 150,
//                                 decoration: BoxDecoration(
//                                   border: Border.all(color: Colors.grey),
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                                 child: ListView.builder(
//                                   itemCount: _enterSuggestions.length,
//                                   itemBuilder: (context, index) {
//                                     return ListTile(
//                                       title: Text(_enterSuggestions[index]),
//                                       onTap: () {
//                                         setState(() {
//                                           // Update the destination with the selected suggestion
//                                           destinations[_focusedIndex!] = _enterSuggestions[index];
//                                           _controllers[_focusedIndex!].text = _enterSuggestions[index];
//                                           _enterSuggestions = []; // Clear suggestions after selection
//                                         });
//                                       },
//                                     );
//                                   },
//                                 ),
//                               ),
//                             SizedBox(height: 20),
//                           ],
//                         );
//                       }),
//                     ),
//                     TextFormField(
//                       keyboardType: TextInputType.none,
//                       controller: TextEditingController(text: _pickupDate),
//                       decoration: InputDecoration(
//                         labelText: 'Pickup Date (dd/mm/yyyy)',
//                         isDense: true,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         suffixIcon: IconButton(
//                           icon: const Icon(Icons.calendar_month),
//                           onPressed: () async {
//                             final time = await showDatePicker(
//                               context: context,
//                               initialDate: DateTime.now(),
//                               firstDate: DateTime.now(),
//                               lastDate: DateTime.now().add(Duration(days: 365)),
//                             );
//                             if (time != null) {
//                               setState(() {
//                                 _pickupDate = DateFormat('dd/MM/y').format(time);
//                               });
//                             }
//                           },
//                         ),
//                       ),
//                       validator: (value) {
//                         if (value!.isEmpty) {
//                           return 'Please enter the pickup date';
//                         }
//                         return null;
//                       },
//                       onSaved: (value) => _pickupDate = value,
//                     ),
//
//                     const SizedBox(height: 20),
//                     if (_selectedTripType == "Round trip")
//                       TextFormField(
//                         keyboardType: TextInputType.none,
//                         controller: TextEditingController(text: _returnDate),
//                         decoration: InputDecoration(
//                           labelText: 'Return Date (dd/mm/yyyy)',
//                           isDense: true,
//                           border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(10),
//                           ),
//                           suffixIcon: IconButton(
//                             icon: Icon(Icons.calendar_month),
//                             onPressed: () async {
//                               final time = await showDatePicker(
//                                 context: context,
//                                 initialDate: DateTime.now(),
//                                 firstDate: DateTime.now(),
//                                 lastDate: DateTime.now().add(Duration(days: 365)),
//                               );
//                               if (time != null) {
//                                 setState(() {
//                                   _returnDate = DateFormat('dd/MM/y').format(time);
//                                 });
//                               }
//                             },
//                           ),
//                         ),
//                         onSaved: (value) => _returnDate = value,
//                       ),
//                     SizedBox(height: 20),
//                     TextFormField(
//                       keyboardType: TextInputType.none,
//                       controller: TextEditingController(text: _pickupTime),
//                       decoration: InputDecoration(
//                         labelText: 'Pickup Time',
//                         isDense: true,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         suffixIcon: IconButton(
//                           icon: Icon(Icons.timer_outlined),
//                           onPressed: () async {
//                             final time = await showTimePicker(
//                               context: context,
//                               initialTime: TimeOfDay.now(),
//                             );
//                             if (time != null) {
//                               setState(() {
//                                 _pickupTime = DateFormat("hh:mm a").format(DateTime(2000,1,1,time.hour,time.minute));
//                               });
//                             }
//                           },
//                         ),
//                       ),
//                       validator: (value) {
//                         if (value!.isEmpty) {
//                           return 'Please enter the pickup time';
//                         }
//                         return null;
//                       },
//                       onSaved: (value) => _pickupTime = value,
//                     ),
//                     SizedBox(height: 20),
//                     TextFormField(
//                       validator: (value) {
//                         if (value!.isEmpty) {
//                           return 'Please enter the distance';
//                         }
//                         return null;
//                       },
//                       keyboardType: TextInputType.number,
//                       onChanged: (value) => _distance = int.tryParse(value),
//                       decoration: InputDecoration(
//                         labelText: 'Distance (km)',
//                         isDense: true,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 20),
//                     TextFormField(
//                       decoration: InputDecoration(
//                         labelText: 'Extra Km',
//                         isDense: true,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                       keyboardType: TextInputType.number,
//                       validator: (value) {
//                         if (value!.isEmpty) {
//                           return 'Please enter the extra km charge';
//                         }
//                         return null;
//                       },
//                       onSaved: (value) => _extraKm = int.parse(value!),
//                     ),
//                     SizedBox(height: 20),
//                     TextFormField(
//                       decoration: InputDecoration(
//                         labelText: 'Total Amount',
//                         isDense: true,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                       keyboardType: TextInputType.number,
//                       validator: (value) {
//                         if (value!.isEmpty) {
//                           return 'Please enter the total amount';
//                         }
//                         return null;
//                       },
//                       onSaved: (value) => _amount = int.parse(value!),
//                     ),
//                     SizedBox(height: 20),
//                     TextFormField(
//                       decoration: InputDecoration(
//                         labelText: 'Your Commission ',
//                         isDense: true,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                       keyboardType: TextInputType.number,
//                       validator: (value) {
//                         if (value!.isEmpty) {
//                           return 'Please enter the your commission ';
//                         }
//                         return null;
//                       },
//                       onSaved: (value) => _commission = value,
//                     ),
//                     SizedBox(height: 20),
//                     TextFormField(
//                       decoration: InputDecoration(
//                         labelText: 'Other Required',
//                         isDense: true,
//                         border: OutlineInputBorder(
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                       ),
//                       // keyboardType: TextInputType.none,
//                       validator: (value) {
//                         if (value!.isEmpty) {
//                           return 'Please enter the other required';
//                         }
//                         return null;
//                       },
//                       onSaved: (value) => _notestexts = value,
//                     ),
//                     SizedBox(height: 20),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//           bottomNavigationBar: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: FloatingActionButton.extended(
//               backgroundColor: Colors.blue, // Set the button color here
//               label: loading
//                   ? CircularProgressIndicator(
//                 color: Colors.white,
//               )
//                   : Text('Submit'),
//               onPressed: () async {
//
//                 if (_formKey.currentState!.validate()) {
//                   _formKey.currentState!.save();
//
//                   setState(() {
//                     loading = true;
//                   });
//
//                   try {
//                     final res = await getLatLongfromtomtom(_startingLocation!);
//                     print("Location result: $res");
//
//                     // Assign the fetched latitude and longitude
//                     _startPosition = Location(lat: res['latitude']!, lng: res['longitude']!);
//
//                     // Call the checkout function after fetching the location
//                     openCheckout();
//
//                   } catch (e) {
//                     setState(() {
//                       loading = false; // Reset loading state on error
//                     });
//                     Fluttertoast.showToast(msg: "Invalid pickup location");
//                     print("Failed to get location: $e");
//                   }
//
//                   // Perform form submission logic here
//                 }
//               },
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   submit(paymentid) async {
//     SharedPreferences pref = await SharedPreferences.getInstance();
//     final id = await pref.getString("id");
//
//     // Data to be sent
//     final data = {
//       "username": _customerUsername,
//       "commission": _commission,
//       "notestexts": _notestexts,
//       "phone": _customerMobileNo,
//       "pickup": _startingLocation,
//       "drop": _destination! +
//           (_selectedTripType == "Round trip" ? ("&" + destinations.join("&")) : ""),
//       "from_date": _pickupDate!.split('/').join('-'),
//       "to_date": _returnDate != null ? _returnDate!.split('/').join('-') : "",
//       "vihicle_type": _selectedCar,
//       "triptype": _selectedTripType,
//       "extra_km": _extraKm,
//       "pickuptimes": _pickupTime,
//       "totalAmountbach": _amount,
//       "amount": _amount! * (_percent / 100),
//       "pickupLat": _startPosition!.lat,
//       "total_km": _distance,
//       "pickupLong": _startPosition!.lng,
//       "destinations": _destination! +
//           (_selectedTripType == "Round trip" && destinations.isNotEmpty
//               ? ("&" + destinations.join("&"))
//               : ""),
//       "payment_id": paymentid,
//       "user_id": id,
//       "toll_and_tax": _selectedTollTax,
//       "action": "AddBookingDriver"
//     };
//     print(json.encode(data));
//     var res;
//     try {
//       res = await Dio().post(base, data: FormData.fromMap(data));
//     } catch (e) {
//       Fluttertoast.showToast(msg: "Somthing went wrong!");
//     }
//     setState(() {
//       loading = false;
//     });
//     print("submit respose" + res.toString());
//     Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (s)=>ShowDriverBookings()), (c) => false);
//   }
//
//   void getStatus() {}
// }
//
// SizedBox get VSpaces => SizedBox(height: 20);
//
// SizedBox get VSpaceshalf => SizedBox(height: 10);
// SizedBox get VSpacemin => SizedBox(height: 5);
// SizedBox get HSpace => SizedBox(width: 20);
// void main() => runApp(MaterialApp(home: AutocompleteScreen()));

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:vardaanadmin/modules/test3.dart';
class BottomsBar extends StatefulWidget {
  BottomsBar({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _BottomsBarState createState() => _BottomsBarState();
}

class _BottomsBarState extends State<BottomsBar> with SingleTickerProviderStateMixin {
  late int currentPage;
  late TabController tabController;
  final List<Color> colors = [Colors.yellow, Colors.red, Colors.green, Colors.blue, Colors.pink];

  @override
  void initState() {
    currentPage = 0;
    tabController = TabController(length: 5, vsync: this);
    tabController.animation!.addListener(
          () {
        final value = tabController.animation!.value.round();
        if (value != currentPage && mounted) {
          changePage(value);
        }
      },
    );
    super.initState();
  }

  void changePage(int newPage) {
    setState(() {
      currentPage = newPage;
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Color unselectedColor = colors[currentPage].computeLuminance() < 0.5 ? Colors.black : Colors.white;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Colors.black,
        ),
        body: BottomBar(
          child: TabBar(
            indicatorPadding: const EdgeInsets.fromLTRB(6, 0, 6, 0),
            controller: tabController,
            indicator: UnderlineTabIndicator(
                borderSide: BorderSide(
                    color: currentPage == 0
                        ? colors[0]
                        : currentPage == 1
                        ? colors[1]
                        : currentPage == 2
                        ? colors[2]
                        : currentPage == 3
                        ? colors[3]
                        : currentPage == 4
                        ? colors[4]
                        : unselectedColor,
                    width: 4),
                insets: EdgeInsets.fromLTRB(16, 0, 16, 8)),
            tabs: [
              SizedBox(
                height: 55,
                width: 40,
                child: Center(
                    child: Icon(
                      Icons.home,
                      color: currentPage == 0 ? colors[0] : unselectedColor,
                    )),
              ),
              SizedBox(
                height: 55,
                width: 40,
                child: Center(
                    child: Icon(
                      Icons.search,
                      color: currentPage == 1 ? colors[1] : unselectedColor,
                    )),
              ),
              SizedBox(
                height: 55,
                width: 40,
                child: Center(
                    child: Icon(
                      Icons.add,
                      color: currentPage == 2 ? colors[2] : unselectedColor,
                    )),
              ),
              SizedBox(
                height: 55,
                width: 40,
                child: Center(
                    child: Icon(
                      Icons.favorite,
                      color: currentPage == 3 ? colors[3] : unselectedColor,
                    )),
              ),
              SizedBox(
                height: 55,
                width: 40,
                child: Center(
                    child: Icon(
                      Icons.settings,
                      color: currentPage == 4 ? colors[4] : unselectedColor,
                    )),
              ),
            ],
          ),
          fit: StackFit.expand,
          icon: (width, height) => Center(
            child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: null,
              icon: Icon(
                Icons.arrow_upward_rounded,
                color: unselectedColor,
                size: width,
              ),
            ),
          ),
          borderRadius: BorderRadius.circular(500),
          duration: Duration(seconds: 1),
          curve: Curves.decelerate,
          showIcon: true,
          width: MediaQuery.of(context).size.width * 0.8,
          barColor: colors[currentPage].computeLuminance() > 0.5 ? Colors.black : Colors.white,
          start: 2,
          end: 0,
          offset: 10,
          barAlignment: Alignment.bottomCenter,
          iconHeight: 35,
          iconWidth: 35,
          reverse: false,
          hideOnScroll: true,
          scrollOpposite: false,
          onBottomBarHidden: () {},
          onBottomBarShown: () {},
          body: (context, controller) => TabBarView(
            controller: tabController,
            dragStartBehavior: DragStartBehavior.down,
            physics: const BouncingScrollPhysics(),
            // children: [],
             children: colors.map((e) => InfiniteListPage(controller: controller, color: e)).toList(),
          ),
        ),
      ),
    );
  }
}
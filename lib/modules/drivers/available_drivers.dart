//
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
//
// import '../../constants/constants.dart';
//
// class AvailableDrivers extends StatelessWidget {
//    AvailableDrivers({super.key});
//   TextEditingController remarkController = TextEditingController();
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     double w = MediaQuery.of(context).size.width;
//     double h = MediaQuery.of(context).size.height;
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: MyTheme.themecolor,
//         centerTitle: true,
//         title: Text(
//           "Available Drivers",
//           style: TextStyle(
//             fontSize: 18,
//             fontWeight: FontWeight.bold,
//             color: MyTheme.t1containercolor,
//           ),
//         ),
//         actions: [
//           IconButton(
//             onPressed: () {},
//             icon: Icon(
//               Icons.search,
//               color: MyTheme.t1containercolor,
//             ),
//           ),
//         ],
//       ),
//       body: OrientationBuilder(
//           builder: (context, orientation) {
//             return LayoutBuilder(
//                 builder: (context, constraints) {
//                   return SingleChildScrollView(
//                     child: Container(
//                       child: Padding(
//                         padding: EdgeInsets.all(18),
//                         child: Column(
//                           children: [
//                             ///vardaan
//                             Container(
//                               height: 40,
//                               width: double.infinity,
//                               decoration: BoxDecoration(
//                                 // elevation: 2,
//                                 borderRadius: BorderRadius.circular(17),
//                               ),
//                               child: PhysicalModel(
//                                 elevation: 5,
//                                 shadowColor: MyTheme.t1containercolor,
//                                 color: MyTheme.whitecolor,
//                                 borderRadius: BorderRadius.circular(12),
//                                 child: Padding(
//                                   padding: const EdgeInsets.only(left: 18.0),
//                                   child: Row(
//                                     children: [
//                                       Icon(Icons.home_filled, color: MyTheme
//                                           .t1containercolor,),
//                                       SizedBox(width: 8,),
//                                       Text("Vardaan Car Rental Services Pvt Ltd",
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.bold,
//                                             fontSize: 15
//                                         ),)
//                                     ],
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             Container(
//                               // height: 1000,
//                               child: ListView.builder(
//                                   shrinkWrap: true,
//                                   physics: NeverScrollableScrollPhysics(),
//                                   itemCount: 8,
//                                   itemBuilder: (context, index){
//                                     return Padding(
//                                       padding: const EdgeInsets.only(top: 18.0),
//                                       child: Container(
//                                         height: 250,
//                                         width: double.infinity,
//                                         decoration: BoxDecoration(
//                                             borderRadius: BorderRadius.circular(12),
//
//                                           border: Border.all(color: MyTheme.t1containercolor,width: 1.5)
//                                         ),
//                                         child: PhysicalModel(
//                                           elevation: 5,
//                                           shadowColor: MyTheme.t1containercolor,
//                                           color: MyTheme.whitecolor,
//                                           borderRadius: BorderRadius.circular(12),
//
//                                           child: Padding(
//                                             padding: const EdgeInsets.only(left: 18.0,right: 18,top: 10),
//                                             child: Column(
//                                               children: [
//                                                 Row(
//                                                   children: [
//                                                     Expanded(
//                                                       child: Container(
//                                                         // color: Colors.pink,
//                                                         width:w/2.7,
//                                                         child: Column(
//                                                           crossAxisAlignment: CrossAxisAlignment.start,
//                                                           mainAxisAlignment: MainAxisAlignment.start,
//                                                           children: [
//                                                             // Row(
//                                                             //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                                             //   children: [
//                                                                 Text("Driver Name :",style: TextStyle(
//                                                                     fontWeight: FontWeight.w700,
//                                                                     fontSize: 14,
//                                                                   color: Colors.blueGrey
//                                                                 ),),
//                                                                 // Text(":",style: TextStyle(
//                                                                 //     fontWeight: FontWeight.bold,
//                                                                 //     fontSize: 16
//                                                                 // ),),
//                                                             //   ],
//                                                             // ),
//                                                             SizedBox(height: 8,),
//                                                             // Row(
//                                                             //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                                             //   children: [
//                                                                 Text("Vehicle Number :",style: TextStyle(
//                                                                     fontWeight: FontWeight.w700,
//                                                                     fontSize: 14,
//                                                                     color: Colors.blueGrey
//                                                                 ),),
//                                                                 // Text(":",style: TextStyle(
//                                                                 //     fontWeight: FontWeight.bold,
//                                                                 //     fontSize: 16
//                                                                 // ),),
//                                                             //   ],
//                                                             // ),
//                                                                                                     SizedBox(height: 8,),
//                                                             // Row(
//                                                             //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                                             //   children: [
//                                                                 Text("Vehicle Model :",style: TextStyle(
//                                                                     fontWeight: FontWeight.w700,
//                                                                     fontSize: 14,
//                                                                     color: Colors.blueGrey
//                                                                 ),),
//                                                                 // Text(":",style: TextStyle(
//                                                                 //     fontWeight: FontWeight.bold,
//                                                                 //     fontSize: 16
//                                                                 // ),),
//                                                             //   ],
//                                                             // ),
//                                                             SizedBox(height: 8,),
//                                                             // Row(
//                                                             //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                                             //   children: [
//                                                                 Text("Check-in ID :",style: TextStyle(
//                                                                     fontWeight: FontWeight.w700,
//                                                                     fontSize: 14,
//                                                                     color: Colors.blueGrey
//                                                                 ),),
//                                                                 // Text(":",style: TextStyle(
//                                                                 //     fontWeight: FontWeight.bold,
//                                                                 //     fontSize: 14
//                                                                 // ),),
//                                                             //   ],
//                                                             // ),
//                                                             SizedBox(height: 8,),
//                                                             // Row(
//                                                             //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                                             //   children: [
//                                                                 Text("Mobile Number :",style: TextStyle(
//                                                                     fontWeight: FontWeight.w700,
//                                                                     fontSize: 14,
//                                                                     color: Colors.blueGrey
//                                                                 ),),
//                                                             //     Text(":",style: TextStyle(
//                                                             //         fontWeight: FontWeight.bold,
//                                                             //         fontSize: 14
//                                                             //     ),),
//                                                             //   ],
//                                                             // ),
//                                                             SizedBox(height: 8,),
//                                                             // Row(
//                                                             //   // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                                             //   children: [
//                                                                 Text("Device ID :",style: TextStyle(
//                                                                     fontWeight: FontWeight.w700,
//                                                                     fontSize: 14,
//                                                                     color: Colors.blueGrey
//                                                                 ),),
//                                                             //     Text(":",style: TextStyle(
//                                                             //         fontWeight: FontWeight.bold,
//                                                             //         fontSize: 14
//                                                             //     ),),
//                                                             //   ],
//                                                             // ),
//
//
//                                                           ],
//                                                         ),
//                                                       ),
//                                                     ),
//                                                     // Spacer(),
//                                                     SizedBox(width: 10,),
//                                                     Expanded(
//                                                       child: Container(
//                                                         // color: Colors.pink,
//                                                         // padding: EdgeInsets.only(top: 18),
//                                                         width: 2.7,
//                                                         child: Column(
//                                                           crossAxisAlignment: CrossAxisAlignment.start,
//                                                           mainAxisAlignment: MainAxisAlignment.start,
//                                                           children: [
//                                                             Text("Ajeet Singh ",style: TextStyle(
//                                                                 fontWeight: FontWeight.bold,
//                                                                 fontSize: 14
//                                                             ),),
//                                                             SizedBox(height: 8,),
//                                                             Text("HR38AE1588 ",style: TextStyle(
//                                                                 fontWeight: FontWeight.bold,
//                                                                 fontSize: 14
//                                                             ),),
//                                                             SizedBox(height: 8,),
//                                                             Text("81",style: TextStyle(
//                                                                 fontWeight: FontWeight.bold,
//                                                                 fontSize: 14
//                                                             ),),SizedBox(height: 8,),
//                                                             Text("81",style: TextStyle(
//                                                                 fontWeight: FontWeight.bold,
//                                                                 fontSize: 14
//                                                             ),),
//                                                             SizedBox(height: 8,),
//                                                             Text("+91 9876545678",style: TextStyle(
//                                                                 fontWeight: FontWeight.bold,
//                                                                 fontSize: 14
//                                                             ),),
//                                                             SizedBox(height: 8,),
//                                                             Text("178",style: TextStyle(
//                                                               fontWeight: FontWeight.bold,
//                                                               overflow: TextOverflow.visible, // Prevent text truncation
//                                                               fontSize: 14,
//                                                             ),),
//
//                                                           ],
//                                                         ),
//                                                       ),
//                                                     )
//                                                   ],
//                                                 ),
//                                                 SizedBox(height: 10,),
//                                                 GestureDetector(
//                                                   onTap: (){
//                                                     _dialogBuilder(context);
//                                                   //  Get.to(()=>ChangeEntity());
//                                                   },
//                                                   child: Container(
//                                                     alignment: Alignment.center,
//                                                     height: h/17,
//                                                     width: w/1.1,
//                                                     decoration: BoxDecoration(
//                                                         color: MyTheme.btncolor,
//                                                         borderRadius: BorderRadius.circular(12)
//                                                     ),
//                                                     child: Text("Check-Out",style: TextStyle(
//                                                         fontWeight: FontWeight.bold,
//                                                         fontSize: 16,
//                                                         color: MyTheme.whitecolor
//                                                     ),),
//                                                   ),
//                                                 )
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                       ),
//                                     );
//                                   }),
//                             )
//                           ],
//                         ),
//                       ),
//                     ),
//                   );
//                 }
//             );
//           }
//       ),
//
//     );
//   }
//    Future<void> _dialogBuilder(BuildContext context) {
//      return showDialog<void>(
//        context: context,
//        builder: (BuildContext context) {
//          return AlertDialog(
//            shape: RoundedRectangleBorder(
//              borderRadius: BorderRadius.circular(4)
//            ),
//            title:  Text(
//              'Check-Out',
//              style: TextStyle(
//                color: MyTheme.t1containercolor,
//                fontWeight: FontWeight.bold,
//              ),
//            ),
//            content: SizedBox(
//              width: MediaQuery.of(context).size.width * 0.8, // Set specific width
//              child: Column(
//                mainAxisSize: MainAxisSize.min, // Adjust height to fit content
//                children: [
//                  RichText(
//                    text: TextSpan(
//                      text: 'Are you sure you want to check-out driver ',
//                      style: const TextStyle(
//                        color: Colors.black,
//                        fontSize: 16
//                      ),
//                      children: [
//                        TextSpan(
//                          text: "Ajeet Singh & Vehicle HR38AC1762",
//                          style: const TextStyle(
//                            fontWeight: FontWeight.bold,
//                            color: Colors.black,
//                          ),
//                        ),
//                      ],
//                    ),
//                  ),
//                  const SizedBox(height: 16), // Add spacing
//                  TextFormField(
//                    controller: remarkController,
//                    decoration: const InputDecoration(
//                      labelText: 'Remarks',
//                      border: OutlineInputBorder(),
//                    ),
//                  ),
//                ],
//              ),
//            ),
//            actions: <Widget>[
//              TextButton(
//                style: TextButton.styleFrom(
//                  textStyle: Theme.of(context).textTheme.labelLarge,
//                ),
//                child: const Text('Cancel'),
//                onPressed: () {
//                  Navigator.of(context).pop();
//                },
//              ),
//              TextButton(
//                style: TextButton.styleFrom(
//                  textStyle: Theme.of(context).textTheme.labelLarge,
//                ),
//                child: const Text('Check-Out'),
//                onPressed: () {
//                  Navigator.of(context).pop();
//                },
//              ),
//            ],
//          );
//        },
//      );
//    }
//
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:vardaanadmin/constants/constants.dart';

import '../../controllers/avaliable_drivers_controller.dart';
//
class AvailableDrivers extends StatelessWidget {
  final AvailableDriversController controller = Get.put(AvailableDriversController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: Stack(
        children: [
          Column(
            children: [
              AppBar(
                backgroundColor: MyTheme.themecolor,
                elevation: 2,
                centerTitle: true,
                title: Obx(() => controller.isSearching.value
                    ? const SizedBox()
                    : const Text(
                  "Available Drivers",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                )),
                actions: [
                  IconButton(
                    icon: Obx(() => Icon(
                      controller.isSearching.value ? Icons.close : Icons.search,
                      color: Colors.black,
                    )),
                    onPressed: controller.toggleSearch,
                  ),
                ],
              ),
              Expanded(
                child: Obx(() => ListView.builder(
                  padding: const EdgeInsets.all(16.0),
                  itemCount: controller.filteredIndexes.length,
                  itemBuilder: (context, index) {
                    final actualIndex = controller.filteredIndexes[index];
                    return Container(
                      margin: const EdgeInsets.only(bottom: 16),
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 6,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CircleAvatar(
                                radius: 24,
                                backgroundColor: Colors.grey.shade200,
                                child:  Icon(
                                  Icons.person,
                                  size: 30,
                                  color: MyTheme.t1containercolor,
                                ),
                              ),
                              const SizedBox(width: 16),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      controller.driverName[actualIndex],
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 4),
                                    const Text(
                                      "Vehicle: HR38AE1588",
                                      style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 12, vertical: 6),
                                decoration: BoxDecoration(
                                  color: MyTheme.lightthemecolor,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child:  Text(
                                  "Online",
                                  style: TextStyle(
                                    color: MyTheme.t1containercolor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Divider(height: 24, color: Colors.grey),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              DriverInfo(
                                label: "Model",
                                value: controller.model[actualIndex],
                              ),
                              DriverInfo(
                                label: "Driver ID",
                                value: controller.driverId[actualIndex],
                              ),
                              DriverInfo(
                                label: "Phone",
                                value: "+91 9876545678",
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: MyTheme.btncolor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              minimumSize: const Size(double.infinity, 48),
                            ),
                            onPressed: () {
                              controller.showCheckOutDialog(
                                context,
                                controller.driverName[actualIndex],
                                "HR38AE1588",
                              );
                            },
                            child: const Text(
                              "Check-Out",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                )),
              ),
            ],
          ),
          Obx(() => controller.isSearching.value
              ? Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Material(
                elevation: 0,
                color: MyTheme.themecolor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0,vertical: 4),
                  child: TextField(
                    controller: controller.searchController,
                    autofocus: true,
                    style: const TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: "Search drivers...",
                      hintStyle: const TextStyle(color: Colors.black),
                      border: InputBorder.none,
                      prefixIcon: IconButton(onPressed: (){
                        controller.toggleSearch;
                        // Get.back();
                      }, icon: Icon(Icons.arrow_back,color: Colors.black,)),
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.close, color: Colors.black),
                        onPressed: controller.toggleSearch,
                      ),
                    ),
                    onChanged: controller.filterDrivers,
                  ),
                ),
              ),
            ),
          )
              : const SizedBox()),
        ],
      ),
    );
  }
}

class DriverInfo extends StatelessWidget {
  final String label;
  final String value;

  const DriverInfo({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
      Text(
      label,
      style: const TextStyle(
        fontSize: 12,
        color: Colors.grey,
      ),
    ),
    const SizedBox(height: 4),
    Text(
    value,
    style: const TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    ),
    ),
]);}}

//
class DriverInfo1 extends StatelessWidget {
  final String label;
  final String value;

  const DriverInfo1({Key? key, required this.label, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          value,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// import '../../controllers/avaliable_drivers_controller.dart';
//
// class AvailableDrivers extends StatelessWidget {
//   AvailableDrivers({Key? key}) : super(key: key);
//
//   final AvailableDriversController controller = Get.put(AvailableDriversController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       appBar: PreferredSize(
//         preferredSize: const Size.fromHeight(100),
//         child: AppBar(
//           backgroundColor: Colors.blue,
//           elevation: 2,
//           centerTitle: true,
//           title: const Text(
//             "Available Drivers",
//             style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
//           ),
//           bottom: PreferredSize(
//             preferredSize: const Size.fromHeight(60),
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: TextField(
//                 controller: controller.searchController,
//                 onChanged: controller.filterDrivers,
//                 decoration: InputDecoration(
//                   hintText: 'Search Driver',
//                   prefixIcon: const Icon(Icons.search),
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   filled: true,
//                   fillColor: Colors.white,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Obx(() {
//           return ListView.builder(
//             itemCount: controller.filteredIndexes.length,
//             itemBuilder: (context, index) {
//               final actualIndex = controller.filteredIndexes[index];
//               return DriverCard(
//                 name: controller.driverName[actualIndex],
//                 driverId: controller.driverId[actualIndex],
//                 model: controller.model[actualIndex],
//                 onCheckOut: () => _dialogBuilder(context, controller.driverName[actualIndex]),
//               );
//             },
//           );
//         }),
//       ),
//     );
//   }
//
//   Future<void> _dialogBuilder(BuildContext context, String driverName) {
//     return showDialog<void>(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//           title: const Text(
//             'Check-Out',
//             style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
//           ),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               RichText(
//                 text: TextSpan(
//                   text: 'Are you sure you want to check-out driver ',
//                   style: const TextStyle(color: Colors.black, fontSize: 16),
//                   children: [
//                     TextSpan(
//                       text: driverName,
//                       style: const TextStyle(fontWeight: FontWeight.bold),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 16),
//               TextFormField(
//                 controller: controller.remarkController,
//                 decoration: const InputDecoration(
//                   labelText: 'Remarks',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//             ],
//           ),
//           actions: <Widget>[
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: const Text('Cancel', style: TextStyle(color: Colors.grey)),
//             ),
//             TextButton(
//               onPressed: () {
//                 Navigator.of(context).pop();
//               },
//               child: const Text('Check-Out', style: TextStyle(color: Colors.blue)),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
//
// class DriverCard extends StatelessWidget {
//   final String name;
//   final String driverId;
//   final String model;
//   final VoidCallback onCheckOut;
//
//   const DriverCard({
//     Key? key,
//     required this.name,
//     required this.driverId,
//     required this.model,
//     required this.onCheckOut,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 16),
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(12),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.shade300,
//             blurRadius: 6,
//             offset: const Offset(0, 3),
//           ),
//         ],
//       ),
//       child: Column(
//         children: [
//           Row(
//             children: [
//               CircleAvatar(
//                 radius: 24,
//                 backgroundColor: Colors.grey.shade200,
//                 child: const Icon(Icons.person, size: 30, color: Colors.blue),
//               ),
//               const SizedBox(width: 16),
//               Expanded(
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       name,
//                       style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                     ),
//                     const SizedBox(height: 4),
//                     const Text(
//                       "Vehicle: HR38AE1588",
//                       style: TextStyle(color: Colors.grey, fontSize: 14),
//                     ),
//                   ],
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
//                 decoration: BoxDecoration(
//                   color: Colors.green.shade100,
//                   borderRadius: BorderRadius.circular(8),
//                 ),
//                 child: const Text(
//                   "Online",
//                   style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
//                 ),
//               ),
//             ],
//           ),
//           const Divider(height: 24, color: Colors.grey),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               DriverInfo(label: "Model", value: model),
//               DriverInfo(label: "Driver ID", value: driverId),
//               const DriverInfo(label: "Phone", value: "+91 9876545678"),
//             ],
//           ),
//           const SizedBox(height: 16),
//           ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.blue,
//               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
//               minimumSize: const Size(double.infinity, 48),
//             ),
//             onPressed: onCheckOut,
//             child: const Text(
//               "Check-Out",
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class DriverInfo extends StatelessWidget {
//   final String label;
//   final String value;
//
//   const DriverInfo({Key? key, required this.label, required this.value}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           label,
//           style: const TextStyle(color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w600),
//         ),
//         const SizedBox(height: 4),
//         Text(
//           value,
//           style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
//         ),
//       ],
//     );
//   }
// }






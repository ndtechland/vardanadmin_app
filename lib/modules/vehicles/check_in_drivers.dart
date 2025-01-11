// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
//
// import '../../constants/constants.dart';
// import 'add_driver_and_vehicles.dart';
// import 'change_entity.dart';
// class CheckInDrivers extends StatelessWidget {
//   const CheckInDrivers({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     double w = MediaQuery.of(context).size.width;
//     double h = MediaQuery.of(context).size.height;
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: MyTheme.themecolor,
//         title: Text(
//           "Check-in Drivers",
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
//         builder: (context, orientation) {
//           return LayoutBuilder(
//               builder: (context, constraints) {
//                 return SingleChildScrollView(
//                   child: Container(
//                     child: Padding(
//                       padding: EdgeInsets.all(18),
//                       child: Column(
//                         children: [
//                           ///vardaan
//                           Container(
//                             height: 40,
//                             width: double.infinity,
//                             decoration: BoxDecoration(
//                               // elevation: 2,
//                               borderRadius: BorderRadius.circular(17),
//                             ),
//                             child: PhysicalModel(
//                               elevation: 5,
//                               shadowColor: MyTheme.t1containercolor,
//                               color: MyTheme.whitecolor,
//                               borderRadius: BorderRadius.circular(12),
//                               child: Padding(
//                                 padding: const EdgeInsets.only(left: 18.0),
//                                 child: Row(
//                                   children: [
//                                     Icon(Icons.home_filled, color: MyTheme
//                                         .t1containercolor,),
//                                     SizedBox(width: 8,),
//                                     Text("Vardaan Car Rental Services Pvt Ltd",
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.bold,
//                                           fontSize: 15
//                                       ),)
//                                   ],
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Container(
//                             // height: 1000,
//                             child: ListView.builder(
//                                 shrinkWrap: true,
//                                 physics: NeverScrollableScrollPhysics(),
//                                 itemCount: 8,
//                                 itemBuilder: (index, context){
//                                   return Padding(
//                                     padding: const EdgeInsets.only(top: 18.0),
//                                     child: Container(
//                                       height: 250,
//                                       width: double.infinity,
//                                       child: PhysicalModel(
//                                         elevation: 5,
//                                         shadowColor: MyTheme.t1containercolor,
//                                         color: MyTheme.whitecolor,
//                                         borderRadius: BorderRadius.circular(12),
//                                         child: Padding(
//                                           padding: const EdgeInsets.only(left: 18.0,right: 18,),
//                                           child: Column(
//                                             children: [
//                                               Row(
//                                                 children: [
//                                                   Expanded(
//                                                     child: Container(
//                                                       // color: Colors.pink,
//                                                       width:w/2.7,
//                                                       child: Column(
//                                                         crossAxisAlignment: CrossAxisAlignment.start,
//                                                         mainAxisAlignment: MainAxisAlignment.start,
//                                                         children: [
//                                                          Text("Driver Name :",style: TextStyle(
//                                                               fontWeight: FontWeight.w700,
//                                                               fontSize: 14,
//                                                               color: Colors.blueGrey
//                                                           ),),
//                                                           SizedBox(height: 8,),
//                                                           Text("Vehicle Number :",style: TextStyle(
//                                                               fontWeight: FontWeight.w700,
//                                                               fontSize: 14,
//                                                               color: Colors.blueGrey
//                                                           ),),
//                                                         SizedBox(height: 8,),
//                                                          Text("Driver ID :",style: TextStyle(
//                                                               fontWeight: FontWeight.w700,
//                                                               fontSize: 14,
//                                                               color: Colors.blueGrey
//                                                           ),),
//                                                          SizedBox(height: 8,),
//                                                           Text("Device ID :",style: TextStyle(
//                                                               fontWeight: FontWeight.w700,
//                                                               fontSize: 14,
//                                                               color: Colors.blueGrey
//                                                           ),),
//                                                           SizedBox(height: 8,),
//                                                           Text("Vendor Name :",style: TextStyle(
//                                                               fontWeight: FontWeight.w700,
//                                                               fontSize: 14,
//                                                               color: Colors.blueGrey
//
//                                                             ),),
//                                                           ],
//                                                       ),
//                                                     ),
//                                                   ),
//                                                   // Spacer(),
//                                                   SizedBox(width: 10,),
//                                                   Expanded(
//                                                     child: Container(
//                                                       // color: Colors.pink,
//                                                       // padding: EdgeInsets.only(top: 18),
//                                                       width: 2.7,
//                                                       child: Column(
//                                                         crossAxisAlignment: CrossAxisAlignment.start,
//                                                         mainAxisAlignment: MainAxisAlignment.start,
//                                                         children: [
//                                                            SizedBox(height: 20,),
//                                                           Text("Ajeet Singh ",style: TextStyle(
//                                                               fontWeight: FontWeight.bold,
//                                                               fontSize: 14
//                                                           ),),
//                                                           SizedBox(height: 8,),
//                                                           Text("HR38AE1588 ",style: TextStyle(
//                                                               fontWeight: FontWeight.bold,
//                                                               fontSize: 14
//                                                           ),),
//                                                           SizedBox(height: 8,),
//                                                           Text("81",style: TextStyle(
//                                                               fontWeight: FontWeight.bold,
//                                                               fontSize: 14
//                                                           ),),
//                                                           SizedBox(height: 8,),
//                                                           Text("178",style: TextStyle(
//                                                             fontWeight: FontWeight.bold,
//                                                             overflow: TextOverflow.visible, // Prevent text truncation
//                                                             fontSize: 14,
//                                                           ),),
//                                                           SizedBox(height: 8,),
//                                                           Text("Vardaan Car Rental Services Pvt Ltd",style: TextStyle(
//                                                             fontWeight: FontWeight.bold,
//                                                             overflow: TextOverflow.visible, // Prevent text truncation
//                                                             fontSize: 14,
//                                                             ),),
//                                                         ],
//                                                       ),
//                                                     ),
//                                                   )
//                                                 ],
//                                               ),
//                                               // Row(
//                                               //   children: [
//                                               //     Container(
//                                               //       // color: Colors.pink,
//                                               //       width:w/2.7,
//                                               //       child: Column(
//                                               //         crossAxisAlignment: CrossAxisAlignment.start,
//                                               //         mainAxisAlignment: MainAxisAlignment.start,
//                                               //         children: [
//                                               //           Row(
//                                               //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                               //             children: [
//                                               //               Text("Driver Name ",style: TextStyle(
//                                               //                   fontWeight: FontWeight.bold,
//                                               //                   fontSize: 16
//                                               //               ),),
//                                               //               Text(":",style: TextStyle(
//                                               //                   fontWeight: FontWeight.bold,
//                                               //                   fontSize: 16
//                                               //               ),),
//                                               //               // Text("Name ",style: TextStyle(
//                                               //               //     fontWeight: FontWeight.bold,
//                                               //               //     fontSize: 16
//                                               //               // ),),
//                                               //             ],
//                                               //           ),
//                                               //           SizedBox(height: 8,),
//                                               //           Row(
//                                               //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                               //             children: [
//                                               //               Text("Vehicle Number",style: TextStyle(
//                                               //                   fontWeight: FontWeight.bold,
//                                               //                   fontSize: 16
//                                               //               ),),
//                                               //               Text(":",style: TextStyle(
//                                               //                   fontWeight: FontWeight.bold,
//                                               //                   fontSize: 16
//                                               //               ),),
//                                               //             ],
//                                               //           ),
//                                               //           SizedBox(height: 8,),
//                                               //           Row(
//                                               //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                               //             children: [
//                                               //               Text("Driver ID",style: TextStyle(
//                                               //                   fontWeight: FontWeight.bold,
//                                               //                   fontSize: 16
//                                               //               ),),
//                                               //               Text(":",style: TextStyle(
//                                               //                   fontWeight: FontWeight.bold,
//                                               //                   fontSize: 14
//                                               //               ),),
//                                               //             ],
//                                               //           ),
//                                               //           SizedBox(height: 8,),
//                                               //           Row(
//                                               //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                               //             children: [
//                                               //               Text("Device ID",style: TextStyle(
//                                               //                   fontWeight: FontWeight.bold,
//                                               //                   fontSize: 16
//                                               //               ),),
//                                               //               Text(":",style: TextStyle(
//                                               //                   fontWeight: FontWeight.bold,
//                                               //                   fontSize: 14
//                                               //               ),),
//                                               //             ],
//                                               //           ),
//                                               //           SizedBox(height: 8,),
//                                               //           Row(
//                                               //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                               //             children: [
//                                               //               Text("Vendor Name",style: TextStyle(
//                                               //                   fontWeight: FontWeight.bold,
//                                               //                   fontSize: 16
//                                               //               ),),
//                                               //               Text(":",style: TextStyle(
//                                               //                   fontWeight: FontWeight.bold,
//                                               //                   fontSize: 14
//                                               //               ),),
//                                               //             ],
//                                               //           ),
//                                               //
//                                               //         ],
//                                               //       ),
//                                               //     ),
//                                               //     // Spacer(),
//                                               //     SizedBox(width: 10,),
//                                               //     Expanded(
//                                               //       child: Container(
//                                               //          // color: Colors.pink,
//                                               //         padding: EdgeInsets.only(top: 18),
//                                               //          width: 2.7,
//                                               //         child: Column(
//                                               //           crossAxisAlignment: CrossAxisAlignment.start,
//                                               //           mainAxisAlignment: MainAxisAlignment.start,
//                                               //           children: [
//                                               //             Text("Ajeet Singh ",style: TextStyle(
//                                               //                 fontWeight: FontWeight.w500,
//                                               //                 fontSize: 16
//                                               //             ),),
//                                               //             SizedBox(height: 10,),
//                                               //             Text("HR38AE1588 ",style: TextStyle(
//                                               //                 fontWeight: FontWeight.w500,
//                                               //                 fontSize: 16
//                                               //             ),),
//                                               //             SizedBox(height: 10,),
//                                               //             Text("81",style: TextStyle(
//                                               //                 fontWeight: FontWeight.w500,
//                                               //                 fontSize: 14
//                                               //             ),),
//                                               //             SizedBox(height: 10,),
//                                               //             Text("170",style: TextStyle(
//                                               //                 fontWeight: FontWeight.w500,
//                                               //                 fontSize: 14
//                                               //             ),),
//                                               //             SizedBox(height: 10,),
//                                               //             Text("Vardaan Car Rental Services Pvt Ltd",style: TextStyle(
//                                               //                 fontWeight: FontWeight.w500,
//                                               //               overflow: TextOverflow.visible, // Prevent text truncation
//                                               //                 fontSize: 14,
//                                               //             ),),
//                                               //
//                                               //           ],
//                                               //         ),
//                                               //       ),
//                                               //     )
//                                               //   ],
//                                               // ),
//                                               SizedBox(height: 10,),
//                                               GestureDetector(
//                                                 onTap: (){
//                                                   Get.to(()=>ChangeEntity());
//                                                 },
//                                                 child: Container(
//                                                   alignment: Alignment.center,
//                                                   height: h/17,
//                                                   width: w/1.1,
//                                                   decoration: BoxDecoration(
//                                                       color: MyTheme.btncolor,
//                                                     borderRadius: BorderRadius.circular(12)
//                                                   ),
//                                                   child: Text("Edit Entity",style: TextStyle(
//                                                     fontWeight: FontWeight.bold,
//                                                     fontSize: 16,
//                                                     color: MyTheme.whitecolor
//                                                   ),),
//                                                 ),
//                                               )
//                                             ],
//                                           ),
//                                         ),
//                                       ),
//                                     ),
//                                   );
//                                 }),
//                           )
//                         ],
//                       ),
//                     ),
//                   ),
//                 );
//               }
//           );
//         }
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: (){
//           Get.to(()=>AddDriverAndVehicles());
//         },
//         backgroundColor: MyTheme.themecolor,
//         child: Icon(Icons.add),
//         // shape: ShapeBorder,
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vardaanadmin/controllers/check_in_driver_controller.dart';
import '../../constants/constants.dart';
import 'add_driver_and_vehicles.dart';
import 'change_entity.dart';

class CheckInDrivers extends StatelessWidget {
   CheckInDrivers({super.key});
List<String> driverName =[
  "Ajeet Singh",
  "Shubham Sharma",
  "Prince Kumar",
  "Vishal Singh",
  "Kartik Dubey",
  "Rakesh Singh",
];
List<String> driverId =[
  "91",
  "10",
  "87",
  "68",
  "56",
  "87",
];
List<String> deviceId =[
  "911",
  "120",
  "897",
  "768",
  "568",
  "987",
];
CheckInDriverController controller = Get.put(CheckInDriverController());
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body:Stack(
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
                  "Check-In Drivers",
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
                child: Obx(() =>
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ListView.builder(
                            itemCount: controller.driverName.length,
                            itemBuilder: (context, index) {
                              final actualIndex = controller.filteredIndexes[index];

                              return Padding(
                                padding: const EdgeInsets.only(bottom: 16),
                                child: Material(
                                  elevation: 4,
                                  borderRadius: BorderRadius.circular(15),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      gradient: LinearGradient(
                                        colors: [Colors.white, Colors.grey.shade200],
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              CircleAvatar(
                                                radius: 24,
                                                backgroundColor: MyTheme.lightthemecolor,
                                                child: Image.asset('lib/assets/driver1.png')
                                              ),
                                              SizedBox(width: 16),
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "${controller.driverName[actualIndex]}",
                                                      style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 18,
                                                        color: Colors.black87,
                                                      ),
                                                    ),
                                                    SizedBox(height: 4),
                                                    Text(
                                                      "HR38AE1588",
                                                      style: TextStyle(
                                                        fontSize: 16,
                                                        color: Colors.grey.shade600,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              GestureDetector(
                                                onTap: () => Get.to(() => ChangeEntity()),
                                                child: Icon(
                                                  Icons.edit,
                                                  color: MyTheme.t1containercolor,
                                                ),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height: 16),
                                          Divider(color: Colors.grey.shade300),
                                          SizedBox(height: 8),
                                          _buildInfoRow("Driver ID:", "${controller.driverId[actualIndex]}"),
                                          _buildInfoRow("Device ID:", "${controller.deviceId[actualIndex]}"),
                                          _buildInfoRow("Vendor:", "Vardaan Car Rental Services Pvt Ltd"),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                    ),
                          ),
                //     ListView.builder(
                //   padding: const EdgeInsets.all(16.0),
                //   itemCount: controller.filteredIndexes.length,
                //   itemBuilder: (context, index) {
                //     final actualIndex = controller.filteredIndexes[index];
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
                //                 child:  Icon(
                //                   Icons.person,
                //                   size: 30,
                //                   color: MyTheme.t1containercolor,
                //                 ),
                //               ),
                //               const SizedBox(width: 16),
                //               Expanded(
                //                 child: Column(
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                   children: [
                //                     Text(
                //                       controller.driverName[actualIndex],
                //                       style: const TextStyle(
                //                         fontSize: 16,
                //                         fontWeight: FontWeight.bold,
                //                       ),
                //                     ),
                //                     const SizedBox(height: 4),
                //                     const Text(
                //                       "Vehicle: HR38AE1588",
                //                       style: TextStyle(
                //                         color: Colors.grey,
                //                         fontSize: 14,
                //                       ),
                //                     ),
                //                   ],
                //                 ),
                //               ),
                //               Container(
                //                 padding: const EdgeInsets.symmetric(
                //                     horizontal: 12, vertical: 6),
                //                 decoration: BoxDecoration(
                //                   color: MyTheme.lightthemecolor,
                //                   borderRadius: BorderRadius.circular(8),
                //                 ),
                //                 child:  Text(
                //                   "Online",
                //                   style: TextStyle(
                //                     color: MyTheme.t1containercolor,
                //                     fontWeight: FontWeight.bold,
                //                   ),
                //                 ),
                //               ),
                //             ],
                //           ),
                //           const Divider(height: 24, color: Colors.grey),
                //           Row(
                //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //             children: [
                //               DriverInfo(
                //                 label: "Model",
                //                 value: controller.model[actualIndex],
                //               ),
                //               DriverInfo(
                //                 label: "Driver ID",
                //                 value: controller.driverId[actualIndex],
                //               ),
                //               DriverInfo(
                //                 label: "Phone",
                //                 value: "+91 9876545678",
                //               ),
                //             ],
                //           ),
                //           const SizedBox(height: 16),
                //           ElevatedButton(
                //             style: ElevatedButton.styleFrom(
                //               backgroundColor: MyTheme.btncolor,
                //               shape: RoundedRectangleBorder(
                //                 borderRadius: BorderRadius.circular(12),
                //               ),
                //               minimumSize: const Size(double.infinity, 48),
                //             ),
                //             onPressed: () {
                //               controller.showCheckOutDialog(
                //                 context,
                //                 controller.driverName[actualIndex],
                //                 "HR38AE1588",
                //               );
                //             },
                //             child: const Text(
                //               "Check-Out",
                //               style: TextStyle(
                //                 fontSize: 16,
                //                 fontWeight: FontWeight.bold,
                //                 color: Colors.white,
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //     );
                //   },
                // )),
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
      // appBar: AppBar(
      //   centerTitle: true,
      //   backgroundColor: MyTheme.themecolor,
      //   title: Text(
      //     "Check-in Drivers",
      //     style: TextStyle(
      //       fontSize: 22,
      //       fontWeight: FontWeight.w600,
      //       color: MyTheme.t1containercolor,
      //     ),
      //   ),
      //   actions: [
      //     IconButton(
      //       onPressed: () {},
      //       icon: Icon(
      //         Icons.search,
      //         color: MyTheme.t1containercolor,
      //       ),
      //     ),
      //   ],
      // ),
      // body: Padding(
      //   padding: const EdgeInsets.all(16.0),
      //   child: ListView.builder(
      //     itemCount: driverName.length,
      //     itemBuilder: (context, index) {
      //       return Padding(
      //         padding: const EdgeInsets.only(bottom: 16),
      //         child: Material(
      //           elevation: 4,
      //           borderRadius: BorderRadius.circular(15),
      //           child: Container(
      //             decoration: BoxDecoration(
      //               borderRadius: BorderRadius.circular(15),
      //               gradient: LinearGradient(
      //                 colors: [Colors.white, Colors.grey.shade200],
      //                 begin: Alignment.topLeft,
      //                 end: Alignment.bottomRight,
      //               ),
      //             ),
      //             child: Padding(
      //               padding: const EdgeInsets.all(16.0),
      //               child: Column(
      //                 crossAxisAlignment: CrossAxisAlignment.start,
      //                 children: [
      //                   Row(
      //                     children: [
      //                       CircleAvatar(
      //                         radius: 24,
      //                         backgroundColor: MyTheme.lightthemecolor,
      //                         child: Image.asset('lib/assets/driver1.png')
      //                       ),
      //                       SizedBox(width: 16),
      //                       Expanded(
      //                         child: Column(
      //                           crossAxisAlignment: CrossAxisAlignment.start,
      //                           children: [
      //                             Text(
      //                               "${driverName[index]}",
      //                               style: TextStyle(
      //                                 fontWeight: FontWeight.bold,
      //                                 fontSize: 18,
      //                                 color: Colors.black87,
      //                               ),
      //                             ),
      //                             SizedBox(height: 4),
      //                             Text(
      //                               "HR38AE1588",
      //                               style: TextStyle(
      //                                 fontSize: 16,
      //                                 color: Colors.grey.shade600,
      //                               ),
      //                             ),
      //                           ],
      //                         ),
      //                       ),
      //                       GestureDetector(
      //                         onTap: () => Get.to(() => ChangeEntity()),
      //                         child: Icon(
      //                           Icons.edit,
      //                           color: MyTheme.t1containercolor,
      //                         ),
      //                       ),
      //                     ],
      //                   ),
      //                   SizedBox(height: 16),
      //                   Divider(color: Colors.grey.shade300),
      //                   SizedBox(height: 8),
      //                   _buildInfoRow("Driver ID:", "${driverId[index]}"),
      //                   _buildInfoRow("Device ID:", "${deviceId[index]}"),
      //                   _buildInfoRow("Vendor:", "Vardaan Car Rental Services Pvt Ltd"),
      //                 ],
      //               ),
      //             ),
      //           ),
      //         ),
      //       );
      //     },
      //   ),
      // ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Get.to(() => AddDriverAndVehicles());
        },
        backgroundColor: MyTheme.themecolor,
        icon: Icon(Icons.add),
        label: Text(
          "Add Driver",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 1,
            child: Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Colors.grey.shade600,
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Text(
              value,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:vardaanadmin/modules/routing_cab_allocations/view_employee.dart';
// import 'package:vardaanadmin/modules/routing_cab_allocations/view_map.dart';
//
// import '../../constants/constants.dart';
// import 'edit_routes.dart';
// class RoutesDetails extends StatefulWidget {
//   const RoutesDetails({super.key});
//
//   @override
//   State<RoutesDetails> createState() => _RoutesDetailsState();
// }
//
// class _RoutesDetailsState extends State<RoutesDetails> {
//   TextEditingController empIdController = TextEditingController();
//   TextEditingController sequenceController = TextEditingController();
//   String selectedTripType='';
//   onChangeAccountType(String changeAccountType) {
//     selectedTripType = changeAccountType;
//   }
//   List<String> fieldsList = ["VARDAANSTF"];
//
//   String _selected ="VARDAANSTF";
//   @override
//   Widget build(BuildContext context) {
//     double h = MediaQuery.of(context).size.height;
//     double w = MediaQuery.of(context).size.width;
//     DateTime date = DateTime.now();
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: MyTheme.themecolor,
//         title: Text(
//           "36048-NOIDA SECTOR 76",
//           style: TextStyle(
//             fontSize: 18,
//             fontWeight: FontWeight.bold,
//             color: MyTheme.t1containercolor,
//           ),
//         ),
//         // actions: [
//         //   IconButton(
//         //     onPressed: () {},
//         //     icon: Icon(
//         //       Icons.search,
//         //       color: MyTheme.t1containercolor,
//         //     ),
//         //   ),
//         // ],
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           child: Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: Column(
//               children: [
//                 Row(
//                   children: [
//                     Text("Total Routes :",style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                       fontSize: 18
//                     ),),
//                     Spacer(),
//                     Text("1",style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         color: Colors.black,
//                         fontSize: 18
//                     ),),
//                   ],
//                 ),
//                 SizedBox(height: 10,),
//                 Container(
//                 height: h/1.8,
//                 width: w/1.1,
//                 decoration: BoxDecoration(
//                 // elevation: 2,
//                 borderRadius: BorderRadius.circular(17),
//                 ),
//                 child: PhysicalModel(
//                 elevation: 5,
//                 shadowColor: MyTheme.t1containercolor,
//                 color: MyTheme.whitecolor,
//                 borderRadius: BorderRadius.circular(12),
//                 child: Padding(
//                 padding: const EdgeInsets.only(left: 14.0,top: 10,right: 14),
//                   child: Column(
//                     children: [
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text("Route ID : 36048",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
//                         Text("${date.toString().substring(0,10)}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
//                         Text("DROP",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
//                         Text("04:00",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
//                       ],
//                     ),
//                       SizedBox(height: 14,),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: [
//                           Expanded(
//                             child: Text(
//                               "Vardaan Car Rental Pvt Ltd",
//                               style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
//                               textAlign: TextAlign.center, // Align to the end of its available space
//                             ),
//                           ),
//                           SizedBox(width: 8), // Add some space before the divider
//                           Container(
//                             height: 30, // Define height for the divider
//                             width: 1, // Define width for the divider
//                             color: Colors.black87, // Use the desired divider color
//                           ),
//                           SizedBox(width: 12), // Add some space after the divider
//                           Expanded(
//                             child: Text(
//                               "VARDAANSTF",
//                               style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
//                               textAlign: TextAlign.start, // Align to the start of its available space
//                             ),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 14,),
//                       Container(
//                         height: h/7,
//                         width: w/1.1,
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(8)
//                         ),
//                         child:Padding(
//                           padding: const EdgeInsets.only(left: 12.0,top: 8.0,right: 12.0,bottom: 8.0),
//                           child: Column(
//                             children: [
//                               Row(
//                                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                 children: [
//                                 Icon(Icons.directions_car,size: 18,color: MyTheme.t1containercolor),
//                                 Text("HR38AE5789",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: MyTheme.t1containercolor),),
//                                 SizedBox(width: 15,),
//                                 Text("Cab Id-12",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: MyTheme.t1containercolor),),
//                                 SizedBox(width: 15,),
//                                 Icon(Icons.directions_car,size: 18,color: MyTheme.t1containercolor),
//                                 Text("Ajeet",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: MyTheme.t1containercolor),),
//                               ],),
//                               SizedBox(height: 10,),
//                               Row(
//                                 children: [
//                                   Text("Vehicle capacity: 4",style: TextStyle(
//                                     fontSize: 15,
//                                     color: Colors.green,
//                                     fontWeight: FontWeight.bold
//                                   ),),
//                                   SizedBox(width: 20,),
//                                   Text("Available Seat: 1",style: TextStyle(
//                                     fontSize: 15,
//                                     color: Colors.green,
//                                     fontWeight: FontWeight.bold
//                                   ),),
//                                 ],
//                               ),
//                               Divider(
//                                 height: 20,
//                                 color: Colors.black87,
//                                 thickness: 1,
//                                 // indent : 10,
//                                 // endIndent : 10,
//                               ),
//                               Row(
//                                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                                 children: [
//                                   GestureDetector(
//                                     onTap: (){
//                                       Get.to(()=>EditRoutes());
//                                     },
//                                     child: Text("Edit Route",style: TextStyle(
//                                     color: Colors.blue,
//                                         fontWeight: FontWeight.bold
//                                     ),),
//                                   ),
//                                   SizedBox(width: 8), // Add some space before the divider
//                                   Container(
//                                     height: 20, // Define height for the divider
//                                     width: 1, // Define width for the divider
//                                     color: Colors.black87, // Use the desired divider color
//                                   ),
//                                   SizedBox(width: 8),
//                                   GestureDetector(
//                                     onTap: (){},
//                                     child: Text("Close Route",style: TextStyle(
//                                       color: Colors.red,
//                                       fontWeight: FontWeight.bold
//                                     ),),
//                                   ),
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 10,),
//                       Row(
//                         children: [
//                           Text("Last Location: ",style: TextStyle(fontWeight: FontWeight.w500),),
//                           Text("NOIDA SECTOR 76",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
//                         ],
//                       ),
//                       SizedBox(height: 10,),
//                       Row(
//                         children: [
//                           Text("Escorts: ",style: TextStyle(fontWeight: FontWeight.w500),),
//                           Text("NOT REQUIRED",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
//                           Spacer(),
//                           GestureDetector(
//                             onTap: (){},
//                             child: Icon(Icons.person_add,size: 25,color: Colors.orange,),
//                           ),
//                         ],
//                       ),
//                       SizedBox(height: 14,),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         SizedBox(
//                           height: 50,
//                             width: 70,
//                             child: Text("Employee Count: 3",style: TextStyle(fontWeight: FontWeight.w500),)),
//                         GestureDetector(
//                           onTap: (){
//                             Get.to(()=>ViewEmployee());
//                           },
//                           child: Text("View Employee",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
//                         ),
//                         Row(
//                           children: [
//                             Icon(Icons.add_circle_outlined,color: Colors.green,),
//                             SizedBox(
//                               height: 50,
//                               width: 70,
//                               child: GestureDetector(
//                                 onTap: (){
//                                   showDialog<void>(
//                                       context: context,
//                                       builder: (BuildContext context) {
//                                     return AlertDialog(
//                                       shape: RoundedRectangleBorder(
//                                           borderRadius: BorderRadius.circular(4)
//                                       ),
//                                       title:  Text(
//                                         'Add Employee',
//                                         style: TextStyle(
//                                           color: MyTheme.t1containercolor,
//                                           // fontWeight: FontWeight.w600,
//                                         ),
//                                       ),
//                                       content: SizedBox(
//                                         width: MediaQuery.of(context).size.width * 0.8, // Set specific width
//                                         child: Column(
//                                           mainAxisSize: MainAxisSize.min, // Adjust height to fit content
//                                           children: [
//                                             Container(
//                                             width: double.infinity,
//                                             padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                                             decoration: BoxDecoration(
//                                               color: MyTheme.whitecolor,
//                                               borderRadius: BorderRadius.circular(10.0),
//                                               border: Border.all(color: MyTheme.t1containercolor, width: 1.2),
//                                             ),
//                                             child:     DropdownButtonHideUnderline(
//                                               child: DropdownButton<String>(
//                                                 icon: const Icon(
//                                                   Icons.arrow_drop_down,
//                                                   size: 22,
//
//                                                 ),
//                                                 items: fieldsList.map((String vehicle) {
//                                                   return DropdownMenuItem<String>(
//                                                     value: vehicle,
//                                                     child: Text(
//                                                       vehicle,
//                                                       style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w600),
//                                                     ),
//                                                   );
//                                                 }).toList(),
//                                                 onChanged: (String? newValue) {
//                                                   setState(() {
//                                                     _selected = newValue!;
//                                                   });
//                                                 },
//                                                 value: _selected,
//                                               ),
//                                             ),),
//                                             const SizedBox(height: 16), // Add spacing
//                                             TextFormField(
//                                               controller: empIdController,
//                                               decoration: const InputDecoration(
//                                                 labelText: 'Employee ID',
//                                                 border: OutlineInputBorder(),
//                                               ),
//                                             ),
//                                             const SizedBox(height: 16), // Add spacing
//                                             TextFormField(
//                                               controller: sequenceController,
//                                               decoration: const InputDecoration(
//                                                 labelText: 'Sequence Number',
//                                                 border: OutlineInputBorder(),
//                                               ),
//                                             ),
//                                           ],
//                                         ),
//                                       ),
//                                       actions: <Widget>[
//                                         TextButton(
//                                           style: TextButton.styleFrom(
//                                             textStyle: Theme.of(context).textTheme.labelLarge,
//                                           ),
//                                           child: const Text('Cancel'),
//                                           onPressed: () {
//                                             Navigator.of(context).pop();
//                                           },
//                                         ),
//                                         TextButton(
//                                           style: TextButton.styleFrom(
//                                             textStyle: Theme.of(context).textTheme.labelLarge,
//                                           ),
//                                           child: const Text('Submit'),
//                                           onPressed: () {
//                                             Navigator.of(context).pop();
//                                           },
//                                         ),
//                                       ],
//                                     );
//                                       });
//                                   },
//                                 child: Text("Add Employee",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                       ///employee name
//                       // Row(
//                       //   children: [
//                       //     Icon(Icons.circle_rounded,color: MyTheme.t1containercolor,size: 10,),
//                       //     Text("7309987500",style: TextStyle(
//                       //       fontWeight: FontWeight.bold,
//                       //       color: MyTheme.t1containercolor
//                       //     ),),
//                       //     Spacer(),
//                       //     Icon(Icons.person,color: MyTheme.t1containercolor,size: 20,),
//                       //     Text("Vaishnavi",style: TextStyle(
//                       //       fontWeight: FontWeight.bold,
//                       //       color: MyTheme.t1containercolor
//                       //     ),),
//                       //   ],
//                       // ),
//                       ///picked up and no show
//
//                       // Row(
//                       //   children: [
//                       //     Expanded(
//                       //       child: RadioListTile(
//                       //         title: Text(
//                       //           'Picked Up',
//                       //           style: TextStyle(
//                       //               fontSize: 13,
//                       //               fontWeight: FontWeight.w600,
//                       //               color: Colors.black
//                       //           ),
//                       //         ),
//                       //         value: "1",
//                       //         groupValue: selectedTripType,
//                       //         onChanged: (String? value) {
//                       //           setState(() {
//                       //             selectedTripType=value!;
//                       //           });
//                       //           // onChangeAccountType(value!);
//                       //
//                       //         },
//                       //       ),
//                       //     ),
//                       //     // SizedBox(width: 10),
//                       //     Expanded(
//                       //       child: RadioListTile(
//                       //         title: Text(
//                       //           'No Show',
//                       //           style: TextStyle(
//                       //               fontSize: 13,
//                       //               fontWeight: FontWeight.w600,
//                       //               color: Colors.black
//                       //
//                       //           ),
//                       //         ),
//                       //         value: "2",
//                       //         groupValue:selectedTripType,
//                       //         onChanged: (String? value) {
//                       //           setState(() {
//                       //             selectedTripType=value!;
//                       //           });
//                       //           // print("accountType:${_acounttypeController.value.text}");
//                       //           // onChangeAccountType(value!);
//                       //         },
//                       //       ),
//                       //     ),
//                       //   ],
//                       // ),
//                       SizedBox(height: 14,),
//
//                       Row(
//                         children: [
//                           GestureDetector(
//                             onTap: (){},
//                             child: Container(
//                               alignment: Alignment.center,
//                               height:50,
//                               width: 140,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(12.0),
//                                 color: Colors.white
//                               ),
//                               child: Text("Start Trip",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
//                             ),
//                           ),
//                           SizedBox(width: 8), // Add some space before the divider
//                           Container(
//                             height: 30, // Define height for the divider
//                             width: 1, // Define width for the divider
//                             color: Colors.grey, // Use the desired divider color
//                           ),
//                           SizedBox(width: 8),
//                           GestureDetector(
//                             onTap: (){
//                               Get.to(()=>ViewMap());
//                             },
//                             child: Container(
//                               alignment: Alignment.center,
//                               height:50,
//                               width: 140,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(12.0),
//                                 color: Colors.white
//                               ),
//                               child: Text("View Map",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),),
//
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                     )
//                   )
//                 )
//                 ],
//               ),
//             ),
//           ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vardaanadmin/constants/constants.dart';
import 'edit_routes.dart';
import 'view_employee.dart';
import 'view_map.dart';

class RoutesDetails extends StatefulWidget {
  const RoutesDetails({super.key});

  @override
  State<RoutesDetails> createState() => _RoutesDetailsState();
}

class _RoutesDetailsState extends State<RoutesDetails> {
  TextEditingController empIdController = TextEditingController();

  void _showStartTripDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor:MyTheme.lithemecolor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          title: Row(
            children: [
              Icon(Icons.not_started_outlined, color: Colors.deepPurpleAccent),
              SizedBox(width: 8),
              Text('Start Trip', style: TextStyle(color: Colors.deepPurpleAccent,fontSize: 20,fontWeight: FontWeight.w700)),
            ],
          ),
          content: Text('Are you sure you want to Start Trip?',style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w600)),
          actions: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Yes', style: TextStyle(color: Colors.white)),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: () {
               Navigator.of(context).pop();
                // _launchURL('tel:${_contactUsGetController.getContactUsModel?.data?.employeeEmergencyNumber}');
              },
              child: Text('No', style: TextStyle(color: Colors.white,fontSize: 16)),
            ),
          ],
        );
      },
    );
  }

  void _showCloseRouteDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor:MyTheme.lithemecolor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          title: Row(
            children: [
              Icon(Icons.cancel, color: Colors.red),
              SizedBox(width: 8),
              Text('Close Route', style: TextStyle(color: Colors.red,fontSize: 20,fontWeight: FontWeight.w700)),
            ],
          ),
          content: Text('Are you sure you want to Close Route?',style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.w600)),
          actions: <Widget>[
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Yes', style: TextStyle(color: Colors.white)),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: () {
               Navigator.of(context).pop();
                // _launchURL('tel:${_contactUsGetController.getContactUsModel?.data?.employeeEmergencyNumber}');
              },
              child: Text('No', style: TextStyle(color: Colors.white,fontSize: 16)),
            ),
          ],
        );
      },
    );
  }
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    DateTime date = DateTime.now();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MyTheme.themecolor,
        title: Text(
          "Route Details - 36048",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    "Vardaan Car Rental Pvt Ltd",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center, // Align to the end of its available space
                  ),
                ),

                SizedBox(width: 12), // Add some space before the divider
                Container(
                  height: 30, // Define height for the divider
                  width: 1, // Define width for the divider
                  color: Colors.black87, // Use the desired divider color
                ),
                SizedBox(width: 12), // Add some space after the divider
                Expanded(
                  child: Text(
                    "VARDAANSTF",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start, // Align to the start of its available space
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            // Route Info Card with modern UI
            _buildRouteInfoCard(date),
            SizedBox(height: 20),
            // _buildRoute(),
            // SizedBox(height: 20),
            // Employee Section with better UI
            _buildEmployeeSection(),
            SizedBox(height: 20),
            // Last Location Section with Card-like design
            _buildLastLocationSection(),
            SizedBox(height: 20),
            // Action Buttons Section for dynamic interactivity
            _buildActionButtons(),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Get.to(() => EditRoutes());
      //   },
      //   backgroundColor: MyTheme.themecolor,
      //   child: Icon(Icons.edit, size: 30),
      // ),
    );
  }

  // Route Info Card with cleaner and modern styling
  Widget _buildRouteInfoCard(DateTime date) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 15, offset: Offset(0, 5)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _buildTextRow("Route ID:", "36048", Icons.directions_bus),
              Spacer(),
              _buildTextRow("Route Type:", "DROP", Icons.route),

            ],
          ),
          Row(
            children: [
              _buildTextRow("Trip Date:", date.toString().substring(0, 10), Icons.calendar_today),
              Spacer(),
              _buildTextRow("Time:", "04:00", Icons.access_time),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text("Vehicle capacity: 4",style: TextStyle(
                  fontSize: 15,
                  color: Colors.green,
                  fontWeight: FontWeight.bold
              ),),
              SizedBox(width: 20,),
              Text("Available Seat: 1",style: TextStyle(
                  fontSize: 15,
                  color: Colors.green,
                  fontWeight: FontWeight.bold
              ),),
            ],
          ),
          Divider(
            height: 20,
            color: Colors.black87,
            thickness: 1,
            // indent : 10,
            // endIndent : 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              GestureDetector(
                onTap: (){
                  Get.to(()=>EditRoutes());
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: MyTheme.btncolor),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0,right: 18.0,top: 10,bottom: 10),
                    child: Text("Edit Route",style: TextStyle(
                        color: MyTheme.whitecolor,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
              ),
              SizedBox(width: 8), // Add some space before the divider
              Container(
                height: 20, // Define height for the divider
                width: 1, // Define width for the divider
                color: Colors.black87, // Use the desired divider color
              ),
              SizedBox(width: 8),
              GestureDetector(
                onTap: (){
                  _showCloseRouteDialog(context);
                },
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(12),color: MyTheme.logored),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0,right: 18.0,top: 10,bottom: 10),
                    child: Text("Close Route",style: TextStyle(
                        color: MyTheme.whitecolor,
                        fontWeight: FontWeight.bold
                    ),),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
Widget _buildRoute(){
    return  Container(
      // height: h/7,
      // width: w/1.1,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8)
      ),
      child:Padding(
        padding: const EdgeInsets.only(left: 12.0,top: 8.0,right: 12.0,bottom: 8.0),
        child: Column(
          children: [
            // Row(
            //  // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //   Icon(Icons.directions_car,size: 18,color: MyTheme.t1containercolor),
            //   Text("HR38AE5789",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: MyTheme.t1containercolor),),
            //   SizedBox(width: 15,),
            //   Text("Cab Id-12",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: MyTheme.t1containercolor),),
            //   SizedBox(width: 15,),
            //   Icon(Icons.directions_car,size: 18,color: MyTheme.t1containercolor),
            //   Text("Ajeet",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: MyTheme.t1containercolor),),
            // ],),
            SizedBox(height: 10,),
            Row(
              children: [
                Text("Vehicle capacity: 4",style: TextStyle(
                  fontSize: 15,
                  color: Colors.green,
                  fontWeight: FontWeight.bold
                ),),
                SizedBox(width: 20,),
                Text("Available Seat: 1",style: TextStyle(
                  fontSize: 15,
                  color: Colors.green,
                  fontWeight: FontWeight.bold
                ),),
              ],
            ),
            Divider(
              height: 20,
              color: Colors.black87,
              thickness: 1,
              // indent : 10,
              // endIndent : 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: (){
                    Get.to(()=>EditRoutes());
                  },
                  child: Text("Edit Route",style: TextStyle(
                  color: Colors.blue,
                      fontWeight: FontWeight.bold
                  ),),
                ),
                SizedBox(width: 8), // Add some space before the divider
                Container(
                  height: 20, // Define height for the divider
                  width: 1, // Define width for the divider
                  color: Colors.black87, // Use the desired divider color
                ),
                SizedBox(width: 8),
                GestureDetector(
                  onTap: (){},
                  child: Text("Close Route",style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold
                  ),),
                ),
              ],
            ),
          ],
        ),
      ),
    );
}
  // Helper method to create text rows with icons, better padding and margin
  Widget _buildTextRow(String label, String value, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          Icon(icon, color: Colors.deepPurpleAccent, size: 18),
          SizedBox(width: 4),
          Text(
            "$label $value",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }

  // Employee Section with visually appealing design and add employee functionality
  Widget _buildEmployeeSection() {
    return Container(
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.green.withOpacity(0.1),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Employee Count: 3", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
              SizedBox(height: 6),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.to(() => ViewEmployee());
                    },
                    child: Text(
                      "View Employees",
                      style: TextStyle(fontSize: 16, color: Colors.deepPurpleAccent, fontWeight: FontWeight.bold),
                    ),
                  ),
                   SizedBox(width: 30,),
                  Container(child:  Row(
                    children: [
                      Icon(Icons.add_circle_outline, color: Colors.green, size: 24),
                      SizedBox(width: 10),
                      GestureDetector(
                        onTap: () {
                          _showAddEmployeeDialog();
                        },
                        child: Text("Add Employee", style: TextStyle(fontSize: 16,color: Colors.green, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),)
                ],
              ),
            ],
          ),
          // Row(
          //   children: [
          //     Icon(Icons.add_circle_outline, color: Colors.green, size: 30),
          //     SizedBox(width: 10),
          //     GestureDetector(
          //       onTap: () {
          //         _showAddEmployeeDialog();
          //       },
          //       child: Text("Add Employee", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }

  // Last Location Section with modern UI using Card-like design
  Widget _buildLastLocationSection() {
    return Container(
      padding: EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: Colors.blueAccent.withOpacity(0.1),
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          Row(
            children: [
              Icon(Icons.location_on, color: Colors.blueAccent, size: 28),
              SizedBox(width: 12),
              Expanded(
                child: Text(
                  "Last Location: NOIDA SECTOR 76",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          SizedBox(height: 8,),
          Row(
            children: [
              GestureDetector(
                onTap: (){},
                child: Icon(Icons.person_add,size: 25,color: Colors.orange,),
              ),
              Spacer(),
              Text("Escorts: ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
              Text("NOT REQUIRED",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),

            ],
          ),
        ],
      ),
    );
  }

  // Action Buttons with vibrant design and dynamic click functionality
  Widget _buildActionButtons() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildActionButton("Start Trip", Colors.deepPurpleAccent, () {
          _showStartTripDialog(context);
          // Handle start trip functionality
        }),
        _buildActionButton("View Map", Colors.green, () {
          Get.to(() => ViewMap());
        }),
      ],
    );
  }

  // Helper method for creating action buttons with updated design
  Widget _buildActionButton(String label, Color color, Function onPressed) {
    return ElevatedButton(
      onPressed: () => onPressed(),
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        padding: EdgeInsets.symmetric(vertical: 14, horizontal: 30),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 5,
      ),
      child: Text(label, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
    );
  }

  // Add Employee Dialog with modern input field
  Future<void> _showAddEmployeeDialog() async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Add Employee", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          content: TextField(
            controller: empIdController,
            decoration: InputDecoration(
              labelText: 'Enter Employee ID',
              labelStyle: TextStyle(fontSize: 16),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // Handle Add Employee action
                Navigator.pop(context);
              },
              child: Text("Add", style: TextStyle(color: Colors.deepPurpleAccent, fontWeight: FontWeight.bold)),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Cancel", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold)),
            ),
          ],
        );
      },
    );
  }
}




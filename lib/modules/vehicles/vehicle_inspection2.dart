//
// import 'package:flutter/material.dart';
// import '../../constants/constants.dart';
//
// class DetailVehicleInspection extends StatefulWidget {
//   const DetailVehicleInspection({super.key});
//
//   @override
//   State<DetailVehicleInspection> createState() =>
//       _DetailVehicleInspectionState();
// }
//
// class _DetailVehicleInspectionState extends State<DetailVehicleInspection> {
//   List<String> searchBy = ["Select", 'Pick Up', 'Drop'];
//   String dropdownValue = "Select";
//   bool allCheckValue = false;
//   bool acValue = false;
//   bool liquorDrugsValue = false;
//   bool wiperValue = false;
//   bool nationalPermitValue = false;
//   bool wBrokenValue = false;
//   bool visibleBodyPaintValue = false;
//   bool allSeatBeltsValue = false;
//   bool gpsValue = false;
//   bool stateValue = false;
//   bool plyingValue = false;
//   bool dirtyValue = false;
//   bool seatCoverValue = false;
//   bool headlightsValue = false;
//   bool insuranceValue = false;
//   bool unregisteredValue = false;
//   bool driverUniformValue = false;
//   bool spareWheelValue = false;
//   bool rcBookValue = false;
//   bool pollutionValue = false;
//   bool fireValue = false;
//   bool toolKitValue = false;
//   bool fitnessValue = false;
//   bool commercialLicValue = false;
//   bool firstAidValue = false;
//   bool fogLampValue = false;
//   bool passengerTaxValue = false;
//   bool vehicleModeValue = false;
//   TextEditingController acRemarkController = TextEditingController();
//   TextEditingController liquorRemarkController = TextEditingController();
//   TextEditingController wiperRemarkController = TextEditingController();
//   TextEditingController nationalRemarkController = TextEditingController();
//   TextEditingController wRemarkController = TextEditingController();
//   TextEditingController visibleRemarkController = TextEditingController();
//   TextEditingController allSeatsRemarkController = TextEditingController();
//   TextEditingController gpsRemarkController = TextEditingController();
//   TextEditingController stateRemarkController = TextEditingController();
//   TextEditingController plyingRemarkController = TextEditingController();
//   TextEditingController dirtyRemarkController = TextEditingController();
//   TextEditingController seatCoverRemarkController = TextEditingController();
//   TextEditingController headlightsRemarkController = TextEditingController();
//   TextEditingController insuranceRemarkController = TextEditingController();
//   TextEditingController unregisteredRemarkController = TextEditingController();
//   TextEditingController driverUniformRemarkController = TextEditingController();
//   TextEditingController spareWheelRemarkController = TextEditingController();
//   TextEditingController rcBookRemarkController = TextEditingController();
//   TextEditingController pollutionRemarkController = TextEditingController();
//   TextEditingController toolKitRemarkController = TextEditingController();
//   TextEditingController fitnessRemarkController = TextEditingController();
//   TextEditingController commercialLicRemarkController = TextEditingController();
//   TextEditingController firstAidRemarkController = TextEditingController();
//   TextEditingController fogLampRemarkController = TextEditingController();
//   TextEditingController passengerTaxRemarkController = TextEditingController();
//   TextEditingController vehicleModeRemarkController = TextEditingController();
//   TextEditingController penaltyAmoRemarkController = TextEditingController();
//   TextEditingController penaltyDesRemarkController = TextEditingController();
//   TextEditingController totalCountOfNCRemarkController = TextEditingController();
//   TextEditingController feedbackRemarkController = TextEditingController();
//
//   Widget buildChecklistItem(String title, bool value, void Function(bool?) onChanged,TextEditingController controller) {
//     return Column(
//       children: [
//         Row(
//           children: [
//             Text(
//               title,
//               style: TextStyle(
//                 color: MyTheme.t1containercolor,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//             Spacer(),
//             Checkbox(
//               value: value,
//               onChanged: onChanged,
//             ),
//           ],
//         ),
//         TextFormField(
//           controller: controller,
//           decoration: const InputDecoration(
//             labelText: 'Remarks',
//             border: OutlineInputBorder(),
//           ),
//         ),
//         SizedBox(height: 10),
//         Divider(
//           height: 20,
//           color: Colors.black87,
//           thickness: 1,
//         ),
//         SizedBox(height: 10),
//       ],
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     double h = MediaQuery.of(context).size.height;
//     double w = MediaQuery.of(context).size.width;
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: MyTheme.themecolor,
//         title: Text(
//           "Vehicle Inspection",
//           style: TextStyle(
//             fontSize: 18,
//             fontWeight: FontWeight.bold,
//             color: MyTheme.t1containercolor,
//           ),
//         ),
//       ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(18.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(
//                 "Vardaan Car Rentals Services & Pvt Ltd",
//                 style: TextStyle(
//                   fontWeight: FontWeight.bold,
//                   color: MyTheme.t1containercolor,
//                   fontSize: 16,
//                 ),
//               ),
//               SizedBox(height: 10),
//               Row(
//                 children: [
//                   CircleAvatar(
//                     radius: 20,
//                     backgroundImage: AssetImage("lib/assets/vehicle.png"),
//                     backgroundColor: Colors.transparent,
//                   ),
//                   SizedBox(width: 10),
//                   Text(
//                     "HR38AC1762",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: MyTheme.t1containercolor,
//                       fontSize: 16,
//                     ),
//                   ),
//                   Spacer(),
//                   CircleAvatar(
//                     radius: 16,
//                     backgroundImage: AssetImage("lib/assets/driver.png"),
//                     backgroundColor: Colors.transparent,
//                   ),
//                   SizedBox(width: 10),
//                   Text(
//                     "Ajeet Singh",
//                     style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       color: MyTheme.t1containercolor,
//                       fontSize: 16,
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(height: 15),
//               Align(
//                 alignment: Alignment.topLeft,
//                 child: Text(
//                   'Trip Type',
//                   style: TextStyle(
//                     fontWeight: FontWeight.bold,
//                     fontSize: 15,
//                     color: Colors.black,
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10),
//               Container(
//                 width: double.infinity,
//                 padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                 decoration: BoxDecoration(
//                   color: MyTheme.whitecolor,
//                   borderRadius: BorderRadius.circular(10.0),
//                   border: Border.all(color: MyTheme.t1containercolor, width: 1.2),
//                 ),
//                 child: DropdownButtonHideUnderline(
//                   child: DropdownButtonFormField<String>(
//                     value: dropdownValue,
//                     icon: const Icon(Icons.arrow_drop_down),
//                     onChanged: (String? value) {
//                       setState(() {
//                         dropdownValue = value!;
//                       });
//                     },
//                     items: searchBy
//                         .map<DropdownMenuItem<String>>(
//                           (String value) => DropdownMenuItem<String>(
//                         value: value,
//                         child: Text(value),
//                       ),
//                     )
//                         .toList(),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10),
//               Row(
//                 children: [
//                   Icon(Icons.lock_reset),
//                   TextButton(
//                     onPressed: () {
//                       setState(() {
//                         dropdownValue = "Select";
//                         allCheckValue = false;
//                         acValue = false;
//                         liquorDrugsValue = false;
//                         wiperValue = false;
//                         nationalPermitValue = false;
//                         wBrokenValue = false;
//                         visibleBodyPaintValue = false;
//                         allSeatBeltsValue = false;
//                         acRemarkController.clear();
//                         liquorRemarkController.clear();
//                         wiperRemarkController.clear();
//                         nationalRemarkController.clear();
//                         wRemarkController.clear();
//                         visibleRemarkController.clear();
//                         allSeatsRemarkController.clear();
//                       });
//                     },
//                     child: Text(
//                       "Reset",
//                       style: TextStyle(
//                         color: Colors.red,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                   Spacer(),
//                   Checkbox(
//                     value: allCheckValue,
//                     onChanged: (bool? newValue) {
//                       setState(() {
//                         allCheckValue = newValue ?? false;
//                         acValue = newValue ?? false;
//                         liquorDrugsValue = newValue ?? false;
//                         wiperValue = newValue ?? false;
//                         nationalPermitValue = newValue ?? false;
//                         wBrokenValue = newValue ?? false;
//                         visibleBodyPaintValue = newValue ?? false;
//                         allSeatBeltsValue = newValue ?? false;
//                         // allCheckValue = newValue ?? false;
//                       });
//                     },
//                   ),
//                 ],
//               ),
//               Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(6),
//                 ),
//                 child: Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 18.0),
//                   child: Column(
//                     children: [
//                       buildChecklistItem(
//                         "AC Working",
//                         acValue,
//                             (newValue) {
//                           setState(() {
//                             acValue = newValue ?? false;
//                           });
//                         },
//                         acRemarkController
//                       ),
//                       buildChecklistItem(
//                         "Found Under Influence of Liquor/Drugs",
//                         liquorDrugsValue,
//                             (newValue) {
//                           setState(() {
//                             liquorDrugsValue = newValue ?? false;
//                           });
//                         },
//                         liquorRemarkController
//                       ),
//                       buildChecklistItem(
//                         "Wiper (Seasonal)",
//                         wiperValue,
//                             (newValue) {
//                           setState(() {
//                             wiperValue = newValue ?? false;
//                           });
//                         },
//                         wiperRemarkController
//                       ),
//                       buildChecklistItem(
//                         "National Permit",
//                         nationalPermitValue,
//                             (newValue) {
//                           setState(() {
//                             nationalPermitValue = newValue ?? false;
//                           });
//                         },
//                         nationalRemarkController
//                       ),
//                       buildChecklistItem(
//                         "Windshield Broken",
//                         wBrokenValue,
//                             (newValue) {
//                           setState(() {
//                             wBrokenValue = newValue ?? false;
//                           });
//                         },
//                         wRemarkController
//                       ),
//                       buildChecklistItem(
//                         "Visible Body Paint & Major Dent",
//                         visibleBodyPaintValue,
//                             (newValue) {
//                           setState(() {
//                             visibleBodyPaintValue = newValue ?? false;
//                           });
//                         },
//                         visibleRemarkController
//                       ),
//                       buildChecklistItem(
//                         "All Seat Belts Working",
//                         allSeatBeltsValue,
//                             (newValue) {
//                           setState(() {
//                             allSeatBeltsValue = newValue ?? false;
//                           });
//                         },
//                         allSeatsRemarkController
//                       ),
//
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/constants.dart';
import '../../controllers/vehicle_inspection_controller.dart';
class DetailVehicleInspection extends StatelessWidget {
  DetailVehicleInspection({super.key});

  final VehicleInspectionController controller = Get.put(VehicleInspectionController());

  Widget buildChecklistItem(String title, RxBool value,
      TextEditingController controller) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 6.0),
                    child: Text(
                      title,
                      style: TextStyle(
                        color: MyTheme.t1containercolor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20,),
                // Spacer(),
                Obx(
                      () => Checkbox(
                    value: value.value,
                    onChanged: (bool? newValue) {
                      value.value = newValue ?? false; // Handle null values
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 6.0,right: 6.0),
              child: TextFormField(
                controller: controller,
                decoration: const InputDecoration(
                  labelText: 'Remarks',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 10),
            // Divider(
            //   height: 20,
            //   color: Colors.black26,
            //   thickness: 1,
            // ),
            // SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  Widget buildRemarkItem(String title,
      TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10,),
        Text(
          title,
          style: TextStyle(
            color: MyTheme.t1containercolor,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 20,),
        TextFormField(
          controller: controller,
          decoration: const InputDecoration(
            labelText: 'Remarks',
            border: OutlineInputBorder(),
          ),
        ),
        SizedBox(height: 10),
        Divider(
          height: 20,
          color: Colors.black26,
          thickness: 1,
        ),
        SizedBox(height: 10),
      ],
    );
  }
  String selectedTripType='';
  onChangeAccountType(String changeAccountType) {
    selectedTripType = changeAccountType;
  }
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MyTheme.themecolor,
        title: Text(
          "Vehicle Inspection",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: MyTheme.t1containercolor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Vardaan Car Rentals Services & Pvt Ltd",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: MyTheme.t1containercolor,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage("lib/assets/vehicle.png"),
                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "HR38AC1762",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: MyTheme.t1containercolor,
                      fontSize: 16,
                    ),
                  ),
                  Spacer(),
                  CircleAvatar(
                    radius: 16,
                    backgroundImage: AssetImage("lib/assets/driver.png"),
                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Ajeet Singh",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: MyTheme.t1containercolor,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Trip Type',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  color: MyTheme.whitecolor,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                      color: MyTheme.t1containercolor, width: 1.2),
                ),
                child: Obx(
                      () => DropdownButtonHideUnderline(
                    child: DropdownButtonFormField<String>(
                      value: controller.dropdownValue.value,
                      icon: const Icon(Icons.arrow_drop_down),
                      onChanged: (String? value) {
                        controller.dropdownValue.value = value!;
                      },
                      items: ["Select", "Pick Up", "Drop"].map<DropdownMenuItem<String>>(
                            (String value) => DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        ),
                      ).toList(),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Shift Time',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black,
                  ),
                ),
              ),
              // SizedBox(height: 10),
              Obx(()=>
                 Row(
                  children: [
                    Expanded(
                      child: RadioListTile(
                        title: Text(
                          'Normal',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        value: "1", // Value for this radio button
                        groupValue: controller.selectedTripType.value, // Use .value for RxString
                        onChanged: (String? value) {
                          if (value != null) {
                            controller.selectedTripType.value = value; // Update the RxString
                          }
                        },
                      ),
                    ),
                    Expanded(
                      child: RadioListTile(
                        title: Text(
                          'Adhoc',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        value: "2", // Value for this radio button
                        groupValue: controller.selectedTripType.value, // Use .value for RxString
                        onChanged: (String? value) {
                          if (value != null) {
                            controller.selectedTripType.value = value; // Update the RxString
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),

              // SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.lock_reset),
                  TextButton(
                    onPressed: controller.resetValues,
                    child: Text(
                      "Reset",
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Spacer(),
                  Obx(() => Checkbox(
                      value: controller.allCheckValue.value,
                      onChanged: controller.toggleAllValues, // Updated to handle bool? correctly
                    ),
                  ),
                ],
              ),
              Container(
                // decoration: BoxDecoration(
                //   color: Colors.white,
                //   borderRadius: BorderRadius.circular(6),
                // ),
                child: Column(
                  children: [
                    buildChecklistItem(
                      "AC Working",
                      controller.acValue,
                      controller.acRemarkController,
                    ),
                    buildChecklistItem(
                      "Found Under Influence of Liquor/Drugs",
                      controller.liquorDrugsValue,
                      controller.liquorRemarkController,
                    ),
                    buildChecklistItem(
                      "Wiper (Seasonal)",
                      controller.wiperValue,
                      controller.wiperRemarkController,
                    ),
                    buildChecklistItem(
                      "National Permit",
                      controller.nationalPermitValue,
                      controller.nationalRemarkController,
                    ),
                    buildChecklistItem(
                      "Windshield Broken",
                      controller.wBrokenValue,
                      controller.wRemarkController,
                    ),
                    buildChecklistItem(
                      "Visible Body Paint & Major Dent",
                      controller.visibleBodyPaintValue,
                      controller.visibleRemarkController,
                    ),
                    buildChecklistItem(
                      "All Seat Belts Working",
                      controller.allSeatBeltsValue,
                      controller.allSeatsRemarkController,
                    ),
                    buildChecklistItem(
                      "GPS not available/ Not working",
                      controller.gpsValue,
                      controller.gpsRemarkController,
                    ),
                    buildChecklistItem(
                      "State Permit",
                      controller.stateValue,
                      controller.stateRemarkController,
                    ),
                    buildChecklistItem(
                      "Plying of unregistered drivers",
                      controller.plyingValue,
                      controller.plyingRemarkController,
                    ),
                    buildChecklistItem(
                      "Dirty Unclean Vehicle",
                      controller.dirtyValue,
                      controller.dirtyRemarkController,
                    ),
                    buildChecklistItem(
                      "Seat Cover",
                      controller.seatCoverValue,
                      controller.seatCoverRemarkController,
                    ),
                    buildChecklistItem(
                      "Working Headlights/Indicators",
                      controller.headlightsValue,
                      controller.headlightsRemarkController,
                    ),
                    buildChecklistItem(
                      "Insurance",
                      controller.insuranceValue,
                      controller.insuranceRemarkController,
                    ),
                    buildChecklistItem(
                      "Plying of unregistered cab",
                      controller.unregisteredValue,
                      controller.unregisteredRemarkController,
                    ),
                    buildChecklistItem(
                      "Driver Uniform",
                      controller.driverUniformValue,
                      controller.driverUniformRemarkController,
                    ),
                    buildChecklistItem(
                      "Spare Wheel",
                      controller.spareWheelValue,
                      controller.spareWheelRemarkController,
                    ),
                    buildChecklistItem(
                      "RC Book",
                      controller.rcBookValue,
                      controller.rcBookRemarkController,
                    ),
                    buildChecklistItem(
                      "Pollution",
                      controller.pollutionValue,
                      controller.pollutionRemarkController,
                    ),
                    buildChecklistItem(
                      "Fire Extinguisher",
                      controller.fireValue,
                      controller.fireRemarkController,
                    ),
                    buildChecklistItem(
                      "Tool Kit",
                      controller.toolKitValue,
                      controller.toolKitRemarkController,
                    ),
                    buildChecklistItem(
                      "Fitness",
                      controller.fitnessValue,
                      controller.fitnessRemarkController,
                    ),
                    buildChecklistItem(
                      "Commercial License",
                      controller.commercialLicValue,
                      controller.commercialLicRemarkController,
                    ),
                    buildChecklistItem(
                      "First Aid Box",
                      controller.firstAidValue,
                      controller.firstAidRemarkController,
                    ),
                    buildChecklistItem(
                      "Fog Lamp(Seasonal)",
                      controller.fogLampValue,
                      controller.fogLampRemarkController,
                    ),
                    buildChecklistItem(
                      "Passenger Tax",
                      controller.passengerTaxValue,
                      controller.passengerTaxRemarkController,
                    ),
                    buildChecklistItem(
                      "Vehicle Model over 5 years",
                      controller.vehicleModeValue,
                      controller.vehicleModeRemarkController,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(children: [
                  buildRemarkItem("Penality Amount", controller.penaltyAmoRemarkController),
                  buildRemarkItem("Penality Description", controller.penaltyDesRemarkController),
                  buildRemarkItem("Total Count of NCs", controller.totalCountOfNCRemarkController),
                  buildRemarkItem("Feedback", controller.feedbackRemarkController),
                ],),
              ),),
              SizedBox(height: 10,),
              Center(
                child: GestureDetector(
                  onTap: (){
                    // Get.to(()=>DetailVehicleInspection());
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: h/17,
                    width: w/1.5,
                    decoration: BoxDecoration(
                        color: MyTheme.btncolor,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Text("Submit",style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white
                    ),),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

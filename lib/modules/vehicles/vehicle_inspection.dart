// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:intl/intl.dart';
// import 'package:vardaanadmin/modules/vehicles/vehicle_inspection2.dart';
//
// import '../../constants/constants.dart';
// import '../../controllers/add_driver_vehicle_controller.dart';
// class VehicleInspection extends StatefulWidget {
//   const VehicleInspection({super.key});
//
//   @override
//   State<VehicleInspection> createState() => _VehicleInspectionState();
// }
//
// class _VehicleInspectionState extends State<VehicleInspection> {
//   List<String> searchBy=['Select','Vardaan Car Rentals Services & Pvt Ltd',];
//   String dropdownValue ="Select";
//   String selectedDate = '';
//   AddDriverVehicleController addDriverVehicleController = Get.put(AddDriverVehicleController());
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
//             padding: EdgeInsets.all(18),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//             Text("Vendor Name",style: TextStyle(
//                 fontSize: 14,color: Colors.grey,fontWeight: FontWeight.w500
//             ),),
//             Container(
//               width: double.infinity,
//               padding: const EdgeInsets.symmetric(horizontal: 10.0),
//               decoration: BoxDecoration(
//                 color: MyTheme.whitecolor,
//                 borderRadius: BorderRadius.circular(10.0),
//                 border: Border.all(color: MyTheme.t1containercolor, width: 1.2),
//               ),
//               child: DropdownButtonHideUnderline(
//                 child: DropdownButtonFormField<String>(
//                   // decoration: ,
//                   value: dropdownValue,
//                   icon: const Icon(Icons.arrow_drop_down),
//                   // elevation: 16,
//                   // style: const TextStyle(color: Colors.deepPurple),
//                   // underline: Container(
//                   //   height: 2,
//                   //   color: Colors.deepPurpleAccent,
//                   // ),
//                   onChanged: (String? value) {
//                     // This is called when the user selects an item.
//                     setState(() {
//                       dropdownValue = value!;
//                     });
//                   },
//                   items: searchBy.map<DropdownMenuItem<String>>((String value) {
//                     return DropdownMenuItem<String>(
//                       value: value,
//                       child: Text(value,style: TextStyle(fontSize: 16),),
//                     );
//                   }).toList(),
//                 ),
//               )),
//               SizedBox(height: 10,),
//               Text("Inspection Date",style: TextStyle(
//                   fontSize: 14,color: Colors.grey,fontWeight: FontWeight.w500
//               ),),
//               GestureDetector(
//                 onTap: () async {
//                   // Show date picker
//                   DateTime? pickedDate = await showDatePicker(
//                     context: context,
//                     initialDate: DateTime.now(),
//                     firstDate: DateTime.now(),
//                     lastDate: DateTime.now().add(Duration(days: 30)),
//                   );
//
//                   if (pickedDate != null) {
//                     // Format selected date
//                     String formattedDate = DateFormat('d MMM yyyy').format(pickedDate);
//
//                     // Update state to reflect the selected date
//                     setState(() {
//                       selectedDate = formattedDate; // Add selectedDate as a variable
//                     });
//                   }
//                 },
//                 child: Container(
//                   height: h / 16,
//                   padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                   decoration: BoxDecoration(
//                     color: MyTheme.whitecolor,
//                     borderRadius: BorderRadius.circular(10.0),
//                     border: Border.all(color: MyTheme.t1containercolor, width: 1.2),
//                   ),
//                   // Display the selected date inside the Container
//                   child: Row(
//                     children: [
//                       Icon(Icons.calendar_month),
//                       SizedBox(width: 8,),
//                       Align(
//                         alignment: Alignment.centerLeft,
//                         child: Text(
//                           selectedDate.isEmpty ? 'Select a date' : selectedDate,
//                           style: TextStyle(
//                               fontSize: 14.0,
//                               color:  MyTheme.t1containercolor,
//                               fontWeight: FontWeight.w600,
//
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               SizedBox(height: 10,),
//               Text("Vehicle Number",style: TextStyle(
//                   fontSize: 14,color: Colors.grey,fontWeight: FontWeight.w500
//
//               ),),
//               // SizedBox(height: 10,),
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
//                     hint: Text("Vehicle Number", style: TextStyle(color: MyTheme.t1containercolor)),
//                     value: addDriverVehicleController.vehicleNumber.contains(addDriverVehicleController.selectedValue.value)
//                         ? addDriverVehicleController.selectedValue.value
//                         : null,
//                     onChanged: (String? newValue) {
//                       if (newValue != null) {
//                         addDriverVehicleController.selectedValue.value = newValue;
//                       }
//                     },
//                     dropdownColor: MyTheme.whitecolor,
//                     iconEnabledColor: MyTheme.t1containercolor,
//                     style: TextStyle(color: MyTheme.t1containercolor,fontWeight: FontWeight.w600),
//                     items: addDriverVehicleController.vehicleNumber.map<DropdownMenuItem<String>>((String value) {
//                       return DropdownMenuItem<String>(
//                         value: value,
//                         child: Text(value, style: TextStyle(color: MyTheme.t1containercolor)),
//                       );
//                     }).toList(),
//                   ),
//                 ),
//               ),
//               SizedBox(height: 30,),
//               Center(
//                 child: GestureDetector(
//                   onTap: (){
//                     Get.to(()=>DetailVehicleInspection());
//                     // addDriverVehicleController.checkIn();
//                   },
//                   child: Container(
//                     alignment: Alignment.center,
//                     height: h/17,
//                     width: w/1.5,
//                     decoration: BoxDecoration(
//                         color: MyTheme.t1containercolor,
//                         borderRadius: BorderRadius.circular(12)
//                     ),
//                     child: Text("Submit",style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16,
//                         color: Colors.white
//                     ),),
//                   ),
//                 ),
//               )
//             ],
//           ),),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../constants/constants.dart';
import '../../controllers/add_driver_vehicle_controller.dart';
import 'vehicle_inspection2.dart';

class VehicleInspection extends StatefulWidget {
  const VehicleInspection({super.key});

  @override
  State<VehicleInspection> createState() => _VehicleInspectionState();
}

class _VehicleInspectionState extends State<VehicleInspection> {
  List<String> searchBy = ['Select', 'Vardaan Car Rentals Services & Pvt Ltd'];
  String dropdownValue = "Select";
  String selectedDate = '';
  AddDriverVehicleController addDriverVehicleController = Get.put(AddDriverVehicleController());

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Vendor Name",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  color: MyTheme.whitecolor,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: MyTheme.t1containercolor, width: 1.2),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButtonFormField<String>(
                    isExpanded: true, // Ensures dropdown fits within container
                    value: dropdownValue,
                    icon: const Icon(Icons.arrow_drop_down),
                    onChanged: (String? value) {
                      setState(() {
                        dropdownValue = value!;
                      });
                    },
                    items: searchBy.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(fontSize: 16),
                          overflow: TextOverflow.ellipsis, // Prevent overflow
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Inspection Date",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              GestureDetector(
                onTap: () async {
                  DateTime? pickedDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime.now(),
                    lastDate: DateTime.now().add(const Duration(days: 30)),
                  );

                  if (pickedDate != null) {
                    String formattedDate = DateFormat('d MMM yyyy').format(pickedDate);
                    setState(() {
                      selectedDate = formattedDate;
                    });
                  }
                },
                child: Container(
                  height: h / 16,
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: MyTheme.whitecolor,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: MyTheme.t1containercolor, width: 1.2),
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.calendar_month),
                      const SizedBox(width: 8),
                      Text(
                        selectedDate.isEmpty ? 'Select a date' : selectedDate,
                        style: TextStyle(
                          fontSize: 14.0,
                          color: MyTheme.t1containercolor,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Text(
                "Vehicle Number",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  color: MyTheme.whitecolor,
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: MyTheme.t1containercolor, width: 1.2),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButtonFormField<String>(
                    isExpanded: true, // Ensures dropdown fits within container
                    hint: Text(
                      "Vehicle Number",
                      style: TextStyle(color: MyTheme.t1containercolor),
                    ),
                    value: addDriverVehicleController.vehicleNumber.contains(addDriverVehicleController.selectedValue.value)
                        ? addDriverVehicleController.selectedValue.value
                        : null,
                    onChanged: (String? newValue) {
                      if (newValue != null) {
                        addDriverVehicleController.selectedValue.value = newValue;
                      }
                    },
                    dropdownColor: MyTheme.whitecolor,
                    iconEnabledColor: MyTheme.t1containercolor,
                    style: TextStyle(color: MyTheme.t1containercolor, fontWeight: FontWeight.w600),
                    items: addDriverVehicleController.vehicleNumber.map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(
                          value,
                          style: TextStyle(color: MyTheme.t1containercolor),
                          overflow: TextOverflow.ellipsis, // Prevent overflow
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Get.to(() => DetailVehicleInspection());
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: h / 17,
                    width: w / 1.5,
                    decoration: BoxDecoration(
                      color: MyTheme.btncolor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Text(
                      "Submit",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

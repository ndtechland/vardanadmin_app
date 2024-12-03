import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constants/constants.dart';
import '../../controllers/add_driver_vehicle_controller.dart';

class AddDriverAndVehicles extends StatelessWidget {
  const AddDriverAndVehicles({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    AddDriverVehicleController addDriverVehicleController = Get.put(AddDriverVehicleController());
    return Scaffold(
      appBar:  AppBar(
        backgroundColor: MyTheme.themecolor,
        title: Text(
          "Check-in Drivers & Vehicles",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: MyTheme.t1containercolor,
          ),
        ),
        // actions: [
        //   IconButton(
        //     onPressed: () {},
        //     icon: Icon(
        //       Icons.search,
        //       color: MyTheme.t1containercolor,
        //     ),
        //   ),
        // ],
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  child: SafeArea(
                    child: Container(
                      child: Padding(
                        padding: EdgeInsets.all(18),
                        child: Obx(()=>
                           Column(
                             crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ///vardaan
                              Container(
                                height: 40,
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  // elevation: 2,
                                  borderRadius: BorderRadius.circular(17),
                                ),
                                child: PhysicalModel(
                                  elevation: 5,
                                  shadowColor: MyTheme.t1containercolor,
                                  color: MyTheme.whitecolor,
                                  borderRadius: BorderRadius.circular(12),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 18.0),
                                    child: Row(
                                      children: [
                                        Icon(Icons.home_filled, color: MyTheme
                                            .t1containercolor,),
                                        SizedBox(width: 8,),
                                        Text("Vardaan Car Rental Services Pvt Ltd",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15
                                          ),)
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 30,),
                              Text("Vehicle Number",style: TextStyle(
                                color: MyTheme.t1containercolor,fontWeight: FontWeight.bold,fontSize: 16
                              ),),
                              SizedBox(height: 10,),
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
                                    hint: Text("Vehicle Number", style: TextStyle(color: MyTheme.t1containercolor)),
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
                                    style: TextStyle(color: MyTheme.t1containercolor,fontWeight: FontWeight.w600),
                                    items: addDriverVehicleController.vehicleNumber
                                        .map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value, style: TextStyle(color: MyTheme.t1containercolor)),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text("Mobile Number",style: TextStyle(
                                  color: MyTheme.t1containercolor,fontWeight: FontWeight.bold,fontSize: 16
                              ),),
                              SizedBox(height: 10,),
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
                                    hint: Text("Mobile Number", style: TextStyle(color: MyTheme.t1containercolor)),
                                    value: addDriverVehicleController.numberList.contains(addDriverVehicleController.mobileNum.value)
                                        ? addDriverVehicleController.mobileNum.value
                                        : null,
                                    onChanged: (String? newValue) {
                                      if (newValue != null) {
                                        addDriverVehicleController.mobileNum.value = newValue;
                                      }
                                    },
                                    dropdownColor: MyTheme.whitecolor,
                                    iconEnabledColor: MyTheme.t1containercolor,
                                    style: TextStyle(color: MyTheme.t1containercolor,fontWeight: FontWeight.w600),
                                    items: addDriverVehicleController.numberList.map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value, style: TextStyle(color: MyTheme.t1containercolor)),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text("Driver Name",style: TextStyle(
                                  color: MyTheme.t1containercolor,fontWeight: FontWeight.bold,fontSize: 16
                              ),),
                              SizedBox(height: 10,),
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
                                    hint: Text("Driver Name", style: TextStyle(color: MyTheme.t1containercolor)),
                                    value: addDriverVehicleController.driverNameList.contains(addDriverVehicleController.driverName.value)
                                        ? addDriverVehicleController.driverName.value
                                        : null,
                                    onChanged: (String? newValue) {
                                      if (newValue != null) {
                                        addDriverVehicleController.driverName.value = newValue;
                                      }
                                    },
                                    dropdownColor: MyTheme.whitecolor,
                                    iconEnabledColor: MyTheme.t1containercolor,
                                    style: TextStyle(color: MyTheme.t1containercolor,fontWeight: FontWeight.w600),
                                    items: addDriverVehicleController.driverNameList
                                        .map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value, style: TextStyle(color: MyTheme.t1containercolor)),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                              SizedBox(height: 20,),
                              Text("Device Id",style: TextStyle(
                                  color: MyTheme.t1containercolor,fontWeight: FontWeight.bold,fontSize: 16
                              ),),
                              SizedBox(height: 10,),
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
                                    hint: Text("Device Id", style: TextStyle(color: MyTheme.t1containercolor)),
                                    value: addDriverVehicleController.deviceIdList.contains(addDriverVehicleController.deviceId.value)
                                        ? addDriverVehicleController.deviceId.value
                                        : null,
                                    onChanged: (String? newValue) {
                                      if (newValue != null) {
                                        addDriverVehicleController.deviceId.value = newValue;
                                      }
                                    },
                                    dropdownColor: MyTheme.whitecolor,
                                    iconEnabledColor: MyTheme.t1containercolor,
                                    style: TextStyle(color: MyTheme.t1containercolor,fontWeight: FontWeight.w600),
                                    items: addDriverVehicleController.deviceIdList
                                        .map<DropdownMenuItem<String>>((String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(value, style: TextStyle(color: MyTheme.t1containercolor)),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              ),
                              SizedBox(height: 30,),
                              Center(
                                child: GestureDetector(
                                  onTap: (){
                                    addDriverVehicleController.checkIn();
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: h/17,
                                    width: w/1.5,
                                    decoration: BoxDecoration(
                                        color: MyTheme.t1containercolor,
                                        borderRadius: BorderRadius.circular(12)
                                    ),
                                    child: Text("Check - In",style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16,
                                        color: Colors.white
                                    ),),
                                  ),
                                ),
                              )
                            // Obx(()=>
                            //      Container(
                            //         width: double.infinity,
                            //         // width: MediaQuery.of(context).size.width * 0.45,
                            //         padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            //         decoration: BoxDecoration(
                            //           color: MyTheme.whitecolor,
                            //           borderRadius: BorderRadius.circular(10.0),
                            //           border: Border.all(color: MyTheme.t1containercolor,width: 1.2)
                            //         ),
                            //         child: DropdownButtonHideUnderline(
                            //           child:  DropdownButtonFormField<String>(
                            //             // controller:,
                            //             hint: Text("Vehicle Number", style: TextStyle(color: MyTheme.t1containercolor)),
                            //             value:
                            //             addDriverVehicleController.selectedValue.value.isNotEmpty ? addDriverVehicleController.selectedValue.value : null,
                            //             onChanged: (String? newValue) {
                            //               if (newValue != null) {
                            //                 addDriverVehicleController.selectedValue.value = newValue; // Update the RxString
                            //               }
                            //             },
                            //             dropdownColor: MyTheme.whitecolor,
                            //             iconEnabledColor: MyTheme.t1containercolor,
                            //             style: TextStyle(color: MyTheme.t1containercolor),
                            //             items: addDriverVehicleController.vehicleNumber.map<DropdownMenuItem<String>>((String value) {
                            //               return DropdownMenuItem<String>(
                            //                 value: value,
                            //                 child: Text(value, style: TextStyle(color: MyTheme.t1containercolor)),
                            //               );
                            //             }).toList(),)
                            //           // DropdownButton<int>(
                            //           //   isExpanded: true,
                            //           //   hint: const Text("Pickup Time",style: TextStyle(color: Colors.white),),
                            //           //   dropdownColor: MyTheme.themecolor,
                            //           //   iconEnabledColor: MyTheme.whitecolor,
                            //           //   value: addDriverVehicleController.selectedVehicleId.value == 0
                            //           //       ? null
                            //           //       : addDriverVehicleController.selectedVehicleId.value,
                            //           //   items: addDriverVehicleController.vehicleNumber.map((tripType) {
                            //           //     return DropdownMenuItem<>(
                            //           //       value: tripType,  // This should be `tripType.id`, not `String`
                            //           //       child: Text(tripType.shiftTime ?? "",style: TextStyle(color: Colors.white),),
                            //           //     );
                            //           //   }).toList(),
                            //           //   onChanged: (int? newValue) {
                            //           //     if (newValue != null) {
                            //           //       addDriverVehicleController.selectVehicleType(newValue);
                            //           //       print("Selected Pickup Shift Time ID: $newValue");
                            //           //     }
                            //           //   },
                            //           // ),
                            //         )
                            //     ),
                              //)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              }
            );
        }
      ),
    );
  }
}

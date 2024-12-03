import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vardaanadmin/constants/constants.dart';

import '../modules/home.dart';
class AddDriverVehicleController extends GetxController{
  var isLoading= false.obs;
  var selectedVehicleId = 0.obs;
  var selectedValue = ''.obs;
  List<String> vehicleNumber = ['HR38AE1588','HR38AE1589','HR38AE1580','HR38AE1581','HR38AE1582','HR38AE1583','HR38AE1584','HR38AE1585','HR38AE1586',];
   var mobileNum = ''.obs;
  List<String> numberList = ['+91 49876587676','+91 49876587673','+91 49876587343','+91 49876587612','+91 49876587645','+91 49876587667','+91 49876587689','+91 49876587678','+91 49876587634',];
   var driverName = ''.obs;
  List<String> driverNameList = ['Ajeet','Shivam','Shubham','Naksh','Aman','Rudra',];
   var deviceId = ''.obs;
  List<String> deviceIdList = ['1','2','3','4','5','6',];
  List<String> checkedInVehicles = [];
  void selectVehicleType(int id) {
    selectedVehicleId.value = id;
  }
  void checkIn() {
    if (selectedValue.value.isEmpty) {
      Get.snackbar('Error', 'Please select a vehicle number');
      return;
    }

    if (checkedInVehicles.contains(selectedValue.value)) {

      Get.defaultDialog(
        custom: Icon(Icons.cancel,color: Colors.red,size: 20,),
        radius: 8,
        title: 'Warning',
        middleText: 'This vehicle is already checked in!',
        confirm: GestureDetector(
          onTap: () => Get.back(),
          child: Container(
            alignment: Alignment.center,
            height: 50,
              width: 180,
              decoration: BoxDecoration(
                color: MyTheme.t1containercolor,
                borderRadius: BorderRadius.circular(8)
              ),
              child: Text('Okay',style: TextStyle(
                color: Colors.white,fontWeight: FontWeight.bold
              ),)),
        ),
      );
    } else {
      // Simulate check-in process
      checkedInVehicles.add(selectedValue.value);
      Get.defaultDialog(
        title: 'Success',
        middleText: 'Driver and Vehicle checked in successfully!',
        confirm: GestureDetector(
          onTap: () => Get.to(()=>HomePage()),
          child: Container(
              alignment: Alignment.center,
              height: 50,
              width: 180,
              decoration: BoxDecoration(
                  color: MyTheme.t1containercolor,
                  borderRadius: BorderRadius.circular(8)
              ),
              child: Text('Okay',style: TextStyle(
                  color: Colors.white,fontWeight: FontWeight.bold
              ),)),
        ),
      );
    }
  }
}
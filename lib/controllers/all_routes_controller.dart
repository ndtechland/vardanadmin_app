import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AllRoutesController extends GetxController {
  var dropdownValue = 'Employee Id'.obs;
  TextEditingController idController = TextEditingController();

  List<String> searchBy = [
    'Employee Id',
    'Vehicle Number',
    'Sticker Number',
    'Route Id',
  ];

  String get hintText {
    switch (dropdownValue.value) {
      case 'Employee Id':
        return 'Enter Employee ID';
      case 'Vehicle Number':
        return 'Enter Vehicle Number';
      case 'Sticker Number':
        return 'Enter Sticker Id';
      case 'Route Id':
        return 'Enter Route Id';
      default:
        return '';
    }
  }

  @override
  void onClose() {
    idController.dispose();
    super.onClose();
  }
}

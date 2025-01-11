import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
class CheckInDriverController extends GetxController {
  final TextEditingController searchController = TextEditingController();

  RxList<String> driverName =[
    "Ajeet Singh",
    "Shubham Sharma",
    "Prince Kumar",
    "Vishal Singh",
    "Kartik Dubey",
    "Rakesh Singh",
  ].obs;
  RxList<String> driverId =[
    "91",
    "10",
    "87",
    "68",
    "56",
    "87",
  ].obs;
  RxList<String> deviceId =[
    "911",
    "120",
    "897",
    "768",
    "568",
    "987",
  ].obs;

  RxList<int> filteredIndexes = List<int>.generate(6, (index) => index).obs;
  RxBool isSearching = false.obs;
  void toggleSearch() {
    isSearching.value = !isSearching.value;
    if (!isSearching.value) {
      searchController.clear();
      filterDrivers("");
    }
  }

  void filterDrivers(String query) {
    if (query.isEmpty) {
      filteredIndexes.value = List<int>.generate(driverName.length, (index) => index);
    } else {
      filteredIndexes.value = List<int>.generate(driverName.length, (index) => index)
          .where((index) => driverName[index].toLowerCase().contains(query.toLowerCase()))
          .toList();
    }
  }
  @override
  void onClose() {
    searchController.dispose();
    // remarkController.dispose();
    super.onClose();
  }
}
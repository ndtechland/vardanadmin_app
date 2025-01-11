// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
//
// class AvailableDriversController extends GetxController {
//   final TextEditingController searchController = TextEditingController();
//   final TextEditingController remarkController = TextEditingController();
//
//   RxList<String> driverName = [
//     "Ajeet Singh",
//     "Shubham Sharma",
//     "Prince Kumar",
//     "Vishal Singh",
//     "Kartik Dubey",
//     "Rakesh Singh",
//   ].obs;
//
//   RxList<String> driverId = ["91", "10", "87", "68", "56", "87"].obs;
//   RxList<String> model = ["Swift Dezire", "i20", "ciaz", "Tata Curvv", "Jazz", "Varna"].obs;
//
//   // Filtered list for search
//   RxList<int> filteredIndexes = List<int>.generate(6, (index) => index).obs;
//
//   void filterDrivers(String query) {
//     if (query.isEmpty) {
//       filteredIndexes.value = List<int>.generate(driverName.length, (index) => index);
//     } else {
//       filteredIndexes.value = List<int>.generate(driverName.length, (index) => index)
//           .where((index) => driverName[index].toLowerCase().contains(query.toLowerCase()))
//           .toList();
//     }
//   }
//
//   @override
//   void onClose() {
//     searchController.dispose();
//     remarkController.dispose();
//     super.onClose();
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vardaanadmin/constants/constants.dart';

class AvailableDriversController extends GetxController {
  final TextEditingController searchController = TextEditingController();
  final TextEditingController remarkController = TextEditingController();

  RxList<String> driverName = [
    "Ajeet Singh",
    "Shubham Sharma",
    "Prince Kumar",
    "Vishal Singh",
    "Kartik Dubey",
    "Rakesh Singh",
  ].obs;

  RxList<String> driverId = ["91", "10", "87", "68", "56", "87"].obs;
  RxList<String> model = ["Swift Dezire", "i20", "ciaz", "Tata Curvv", "Jazz", "Varna"].obs;

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

  Future<void> showCheckOutDialog(BuildContext context, String driverName, String vehicle) {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          title:  Text(
            'Check-Out',
            style: TextStyle(
              color: MyTheme.t1containercolor,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                RichText(
                  text: TextSpan(
                    text: 'Are you sure you want to check-out driver ',
                    style: const TextStyle(color: Colors.black, fontSize: 16),
                    children: [
                      TextSpan(
                        text: "$driverName & Vehicle $vehicle",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                TextFormField(
                  controller: remarkController,
                  decoration: const InputDecoration(
                    labelText: 'Remarks',
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child:
              const Text('Cancel', style: TextStyle(color: Colors.grey)),
            ),
            TextButton(
              onPressed: () {
                // Perform check-out logic here
                Navigator.of(context).pop();
              },
              child: const Text('Check-Out',
                  style: TextStyle(color: Color(0xFF0D47A1))),
            ),
          ],
        );
      },
    );
  }

  @override
  void onClose() {
    searchController.dispose();
    remarkController.dispose();
    super.onClose();
  }
}
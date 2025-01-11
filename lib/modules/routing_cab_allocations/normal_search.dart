// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:vardaanadmin/modules/routing_cab_allocations/show_all_routes.dart';
//
// import '../../constants/constants.dart';
// class NormalSearch extends StatefulWidget {
//   const NormalSearch({super.key});
//
//   @override
//   State<NormalSearch> createState() => _NormalSearchState();
// }
//
// class _NormalSearchState extends State<NormalSearch> {
//   TextEditingController idController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     List<String> searchBy=['Employee Id','Vehicle Number','Sticker Number','Route Id',];
//     String dropdownValue ="Employee Id";
//     double h = MediaQuery.of(context).size.height;
//     double w = MediaQuery.of(context).size.width;
//     return Padding(
//       padding: const EdgeInsets.all(18.0),
//       child: Column(
//         children: [
//           Container(
//             height: h/3,
//             width: double.infinity,
//             child: PhysicalModel(
//               elevation: 5,
//               shadowColor: MyTheme.t1containercolor,
//               color: MyTheme.whitecolor,
//               borderRadius: BorderRadius.circular(12),
//               child: Padding(
//                 padding: const EdgeInsets.all(18.0),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   children: [
//                       Text('Search by',
//                       style: TextStyle(
//                         fontWeight: FontWeight.bold,
//                         fontSize: 16,
//                         color: Colors.black
//                       ),),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Container(
//                       width: double.infinity,
//                       padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                       decoration: BoxDecoration(
//                         color: MyTheme.whitecolor,
//                         borderRadius: BorderRadius.circular(10.0),
//                         border: Border.all(color: MyTheme.t1containercolor, width: 1.2),
//                       ),
//                       child: DropdownButtonHideUnderline(
//                         child: DropdownButtonFormField<String>(
//                           // decoration: ,
//                           value: dropdownValue,
//                           icon: const Icon(Icons.arrow_drop_down),
//                           // elevation: 16,
//                           // style: const TextStyle(color: Colors.deepPurple),
//                           // underline: Container(
//                           //   height: 2,
//                           //   color: Colors.deepPurpleAccent,
//                           // ),
//                           onChanged: (String? value) {
//                             // This is called when the user selects an item.
//                             setState(() {
//                               dropdownValue = value!;
//                             });
//                           },
//                           items: searchBy.map<DropdownMenuItem<String>>((String value) {
//                             return DropdownMenuItem<String>(
//                               value: value,
//                               child: Text(value),
//                             );
//                           }).toList(),
//                         ),
//                       )
//                       // DropdownButtonHideUnderline(
//                       //   child: DropdownButtonFormField<String>(
//                       //     // hint: Text("Mobile Number", style: TextStyle(color: MyTheme.t1containercolor)),
//                       //     value: addDriverVehicleController.numberList.contains(addDriverVehicleController.mobileNum.value)
//                       //         ? addDriverVehicleController.mobileNum.value
//                       //         : null,
//                       //     onChanged: (String? newValue) {
//                       //       if (newValue != null) {
//                       //         addDriverVehicleController.mobileNum.value = newValue;
//                       //       }
//                       //     },
//                       //     dropdownColor: MyTheme.whitecolor,
//                       //     iconEnabledColor: MyTheme.t1containercolor,
//                       //     style: TextStyle(color: MyTheme.t1containercolor,fontWeight: FontWeight.w600),
//                       //     items: addDriverVehicleController.numberList.map<DropdownMenuItem<String>>((String value) {
//                       //       return DropdownMenuItem<String>(
//                       //         value: value,
//                       //         child: Text(value, style: TextStyle(color: MyTheme.t1containercolor)),
//                       //       );
//                       //     }).toList(),
//                       //   ),
//                       // ),
//                     ),
//                     SizedBox(height: 10,),
//                     Container(
//                       width: double.infinity,
//                       padding: const EdgeInsets.symmetric(horizontal: 10.0),
//                       decoration: BoxDecoration(
//                         color: MyTheme.whitecolor,
//                         borderRadius: BorderRadius.circular(10.0),
//                         border: Border.all(color: MyTheme.t1containercolor, width: 1.2),
//                       ),
//                       child: TextFormField(
//                         controller: idController,
//                         decoration: InputDecoration(
//                           hintText: searchBy==searchBy[0] ? 'Enter Employee ID' :
//                           searchBy==searchBy[1] ? 'Enter Vehicle Number' :
//                           searchBy==searchBy[2] ? 'Enter Sticker Id' :
//                            'Enter Route Id'
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: 15,),
//                     GestureDetector(
//                       onTap: (){
//                         Get.to(()=>ShowAllRoutes());
//                       },
//                       child: Container(
//                         alignment: Alignment.center,
//                         height: h/17,
//                         width: w/1.1,
//                         decoration: BoxDecoration(
//                             color: MyTheme.btncolor,
//                             borderRadius: BorderRadius.circular(12)
//                         ),
//                         child: Text("Search",style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 16,
//                             color: MyTheme.whitecolor
//                         ),),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constants/constants.dart';
import '../../controllers/all_routes_controller.dart';
import '../../modules/routing_cab_allocations/show_all_routes.dart';
// import 'normal_search_controller.dart';

class NormalSearch extends StatelessWidget {
  const NormalSearch({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AllRoutesController());
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
          Container(
            height: h / 3,
            width: double.infinity,
            child: PhysicalModel(
              elevation: 5,
              shadowColor: MyTheme.t1containercolor,
              color: MyTheme.whitecolor,
              borderRadius: BorderRadius.circular(12),
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      'Search by',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.black),
                    ),
                    const SizedBox(height: 10),
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
                              if (value != null) {
                                controller.dropdownValue.value = value;
                              }
                            },
                            items: controller.searchBy
                                .map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
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
                            () => TextFormField(
                          controller: controller.idController,
                          decoration: InputDecoration(
                            hintText: controller.hintText,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => ShowAllRoutes());
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: h / 17,
                        width: w / 1.1,
                        decoration: BoxDecoration(
                          color: MyTheme.btncolor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child:  Text(
                          "Search",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: MyTheme.whitecolor),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

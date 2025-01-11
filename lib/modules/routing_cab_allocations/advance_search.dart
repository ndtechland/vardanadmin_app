import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:intl/intl.dart';
import 'package:vardaanadmin/modules/routing_cab_allocations/show_all_routes.dart';

import '../../constants/constants.dart';
import '../vehicles/change_entity.dart';
class AdvanceSearch extends StatefulWidget {
  const AdvanceSearch({super.key});

  @override
  State<AdvanceSearch> createState() => _AdvanceSearchState();
}

class _AdvanceSearchState extends State<AdvanceSearch> {
  String selectedTripType='';
  onChangeAccountType(String changeAccountType) {
    selectedTripType = changeAccountType;
  }
  String selectedDate = '';
  List<String> searchBy=["Select",'Pick Up','Drop',];
  String dropdownValue ="Select";
  List<String> shiftTime=["Select",'04:00 pm','06:00 pm','08:00 pm','10:00 pm',];
  String shift ="Select";
  List<String> routeType=[
    "All Routes",
    'Closed Routes',
    'Closed Routes but not started',
    'Started Routes',
    'Opened Routes',
    'Vehicle Allocated but Routes are not Closed',
    'Special Routes',
    'Escort Required Trips',];
  String route ="All Routes";

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.all(18.0),
      child: Column(
      children: [
        Container(
      height: h/1.8,
      width: double.infinity,
      child: PhysicalModel(
        elevation: 5,
        shadowColor: MyTheme.t1containercolor,
        color: MyTheme.whitecolor,
        borderRadius: BorderRadius.circular(12),
        child: Padding(
          padding: EdgeInsets.all(18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('Trip Type',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.black
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
                      // decoration: ,
                      value: dropdownValue,
                      icon: const Icon(Icons.arrow_drop_down),
                      // elevation: 16,
                      // style: const TextStyle(color: Colors.deepPurple),
                      // underline: Container(
                      //   height: 2,
                      //   color: Colors.deepPurpleAccent,
                      // ),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          dropdownValue = value!;
                        });
                      },
                      items: searchBy.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  )
                // DropdownButtonHideUnderline(
                //   child: DropdownButtonFormField<String>(
                //     // hint: Text("Mobile Number", style: TextStyle(color: MyTheme.t1containercolor)),
                //     value: addDriverVehicleController.numberList.contains(addDriverVehicleController.mobileNum.value)
                //         ? addDriverVehicleController.mobileNum.value
                //         : null,
                //     onChanged: (String? newValue) {
                //       if (newValue != null) {
                //         addDriverVehicleController.mobileNum.value = newValue;
                //       }
                //     },
                //     dropdownColor: MyTheme.whitecolor,
                //     iconEnabledColor: MyTheme.t1containercolor,
                //     style: TextStyle(color: MyTheme.t1containercolor,fontWeight: FontWeight.w600),
                //     items: addDriverVehicleController.numberList.map<DropdownMenuItem<String>>((String value) {
                //       return DropdownMenuItem<String>(
                //         value: value,
                //         child: Text(value, style: TextStyle(color: MyTheme.t1containercolor)),
                //       );
                //     }).toList(),
                //   ),
                // ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    child: RadioListTile(
                      title: Text(
                        'Normal',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                          color: Colors.black
                        ),
                      ),
                      value: "1",
                      groupValue: selectedTripType,
                      onChanged: (String? value) {
                        setState(() {
                          selectedTripType=value!;
                        });
                        // onChangeAccountType(value!);

                      },
                    ),
                  ),
                  // SizedBox(width: 10),
                  Expanded(
                    child: RadioListTile(
                      title: Text(
                        'Adhoc',
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                            color: Colors.black

                        ),
                      ),
                      value: "2",
                      groupValue:selectedTripType,
                      onChanged: (String? value) {
                        setState(() {
                          selectedTripType=value!;
                        });
                        // print("accountType:${_acounttypeController.value.text}");
                       // onChangeAccountType(value!);
                      },
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Shift Time',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.black
                    ),),
                  Text("Trip Date",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black
                  ),),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                        width: double.infinity,
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          color: MyTheme.whitecolor,
                          borderRadius: BorderRadius.circular(10.0),
                          border: Border.all(color: MyTheme.t1containercolor, width: 1.2),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButtonFormField<String>(
                            // decoration: ,
                            value: shift,
                            icon: const Icon(Icons.arrow_drop_down),
                            // elevation: 16,
                            // style: const TextStyle(color: Colors.deepPurple),
                            // underline: Container(
                            //   height: 2,
                            //   color: Colors.deepPurpleAccent,
                            // ),
                            onChanged: (String? value) {
                              // This is called when the user selects an item.
                              setState(() {
                                shift = value!;
                              });
                            },
                            items: shiftTime.map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        )
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: GestureDetector(
                      onTap: () async {
                        // Show date picker
                        DateTime? pickedDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime.now(),
                          lastDate: DateTime.now().add(Duration(days: 30)),
                        );

                        if (pickedDate != null) {
                          // Format selected date
                          String formattedDate = DateFormat('d MMM yyyy').format(pickedDate);

                          // Update state to reflect the selected date
                          setState(() {
                            selectedDate = formattedDate; // Add selectedDate as a variable
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
                        // Display the selected date inside the Container
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            selectedDate.isEmpty ? 'Select a date' : selectedDate,
                            style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              SizedBox(height: 10,),

              Text("Route Type",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.black
              ),),
              SizedBox(height: 10,),
              Container(
                // width: w/2.5,
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  decoration: BoxDecoration(
                    color: MyTheme.whitecolor,
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: MyTheme.t1containercolor, width: 1.2),
                  ),
                  child: DropdownButtonHideUnderline(
                    child: DropdownButtonFormField<String>(
                      isExpanded: true,
                      // decoration: ,
                      value: route,
                      icon: const Icon(Icons.arrow_drop_down),
                      onChanged: (String? value) {
                        // This is called when the user selects an item.
                        setState(() {
                          route = value!;
                        });
                      },
                      items: routeType.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  )
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: (){
                  Get.to(()=>ShowAllRoutes());
                  // Get.to(()=>ChangeEntity());
                },
                child: Container(
                  alignment: Alignment.center,
                  height: h/17,
                  width: w/1.1,
                  decoration: BoxDecoration(
                      color: MyTheme.btncolor,
                      borderRadius: BorderRadius.circular(12)
                  ),
                  child: Text("Submit",style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: MyTheme.whitecolor
                  ),),
                ),
              )
            ],
          ),
        ),),)
      ],
    ),);
  }
}

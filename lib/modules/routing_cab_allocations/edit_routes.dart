import 'package:flutter/material.dart';

import '../../constants/constants.dart';
class EditRoutes extends StatefulWidget {
  const EditRoutes({super.key});

  @override
  State<EditRoutes> createState() => _EditRoutesState();
}

class _EditRoutesState extends State<EditRoutes> {
  String selectedTripType='';
  onChangeAccountType(String changeAccountType) {
    selectedTripType = changeAccountType;
  }
  List<String> driverNames = ["Select","Ajeet Singh","Shivam Kumar","Shubham Chaturvedi","Alok Verma"];

  String _selected ="Select";
  String selectedVehicleNum='';
  onChangeVehicleNum(String changeAccountType) {
    selectedVehicleNum = changeAccountType;
  }
  List<String> VehicleNum = ["HR38AE7654","HR38AE7656","HR38AE7655","HR38AE7653","HR38AE7652"];

  String _selectedVehicleNum ="HR38AE7654";
  String selectedDeviceID='';
  onChangeDeviceID(String changeAccountType) {
    selectedDeviceID = changeAccountType;
  }
  List<String> deviceIDs = ["908","565","877","234","768"];

  String _selectedDeviceId ="908";
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
      centerTitle: true,
      backgroundColor: MyTheme.themecolor,
      title: Text(
        "Edit Routes",
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
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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
                  child:  DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        size: 22,

                      ),
                      items: driverNames.map((String vehicle) {
                        return DropdownMenuItem<String>(
                          value: vehicle,
                          child: Text(
                            vehicle,
                            style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w600),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          _selected = newValue!;
                        });
                      },
                      value: _selected,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
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
                  child:  DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        size: 22,

                      ),
                      items: VehicleNum.map((String vehicle) {
                        return DropdownMenuItem<String>(
                          value: vehicle,
                          child: Text(
                            vehicle,
                            style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w600),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedVehicleNum = newValue!;
                        });
                      },
                      value: _selectedVehicleNum,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text("Device ID",style: TextStyle(
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
                  child:  DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        size: 22,

                      ),
                      items: deviceIDs.map((String vehicle) {
                        return DropdownMenuItem<String>(
                          value: vehicle,
                          child: Text(
                            vehicle,
                            style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w600),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          _selectedDeviceId = newValue!;
                        });
                      },
                      value: _selectedDeviceId,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Center(
                  child: GestureDetector(
                    onTap: (){
                      // addDriverVehicleController.checkIn();
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
      ),
    );
  }
}

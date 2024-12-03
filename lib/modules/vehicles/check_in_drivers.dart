import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../constants/constants.dart';
import 'add_driver_and_vehicles.dart';
class CheckInDrivers extends StatelessWidget {
  const CheckInDrivers({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyTheme.themecolor,
        title: Text(
          "Check-in Drivers",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: MyTheme.t1containercolor,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              color: MyTheme.t1containercolor,
            ),
          ),
        ],
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return LayoutBuilder(
              builder: (context, constraints) {
                return SingleChildScrollView(
                  child: Container(
                    child: Padding(
                      padding: EdgeInsets.all(18),
                      child: Column(
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
                          Container(
                            // height: 1000,
                            child: ListView.builder(
                                shrinkWrap: true,
                                physics: NeverScrollableScrollPhysics(),
                                itemCount: 8,
                                itemBuilder: (index, context){
                                  return Padding(
                                    padding: const EdgeInsets.only(top: 18.0),
                                    child: Container(
                                      height: 250,
                                      width: double.infinity,
                                      child: PhysicalModel(
                                        elevation: 5,
                                        shadowColor: MyTheme.t1containercolor,
                                        color: MyTheme.whitecolor,
                                        borderRadius: BorderRadius.circular(12),
                                        child: Padding(
                                          padding: const EdgeInsets.only(left: 18.0,right: 18,),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    // color: Colors.pink,
                                                    width:w/2.7,
                                                    child: Column(
                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Text("Driver Name ",style: TextStyle(
                                                                fontWeight: FontWeight.bold,
                                                                fontSize: 16
                                                            ),),
                                                            Text(":",style: TextStyle(
                                                                fontWeight: FontWeight.bold,
                                                                fontSize: 16
                                                            ),),
                                                            // Text("Name ",style: TextStyle(
                                                            //     fontWeight: FontWeight.bold,
                                                            //     fontSize: 16
                                                            // ),),
                                                          ],
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Text("Vehicle Number",style: TextStyle(
                                                                fontWeight: FontWeight.bold,
                                                                fontSize: 16
                                                            ),),
                                                            Text(":",style: TextStyle(
                                                                fontWeight: FontWeight.bold,
                                                                fontSize: 16
                                                            ),),
                                                          ],
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Text("Driver ID",style: TextStyle(
                                                                fontWeight: FontWeight.bold,
                                                                fontSize: 16
                                                            ),),
                                                            Text(":",style: TextStyle(
                                                                fontWeight: FontWeight.bold,
                                                                fontSize: 14
                                                            ),),
                                                          ],
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Text("Device ID",style: TextStyle(
                                                                fontWeight: FontWeight.bold,
                                                                fontSize: 16
                                                            ),),
                                                            Text(":",style: TextStyle(
                                                                fontWeight: FontWeight.bold,
                                                                fontSize: 14
                                                            ),),
                                                          ],
                                                        ),
                                                        SizedBox(height: 8,),
                                                        Row(
                                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                          children: [
                                                            Text("Vendor Name",style: TextStyle(
                                                                fontWeight: FontWeight.bold,
                                                                fontSize: 16
                                                            ),),
                                                            Text(":",style: TextStyle(
                                                                fontWeight: FontWeight.bold,
                                                                fontSize: 14
                                                            ),),
                                                          ],
                                                        ),

                                                      ],
                                                    ),
                                                  ),
                                                  // Spacer(),
                                                  SizedBox(width: 10,),
                                                  Expanded(
                                                    child: Container(
                                                       // color: Colors.pink,
                                                      padding: EdgeInsets.only(top: 18),
                                                       width: 2.7,
                                                      child: Column(
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          Text("Ajeet Singh ",style: TextStyle(
                                                              fontWeight: FontWeight.w500,
                                                              fontSize: 16
                                                          ),),
                                                          SizedBox(height: 10,),
                                                          Text("HR38AE1588 ",style: TextStyle(
                                                              fontWeight: FontWeight.w500,
                                                              fontSize: 16
                                                          ),),
                                                          SizedBox(height: 10,),
                                                          Text("81",style: TextStyle(
                                                              fontWeight: FontWeight.w500,
                                                              fontSize: 14
                                                          ),),
                                                          SizedBox(height: 10,),
                                                          Text("170",style: TextStyle(
                                                              fontWeight: FontWeight.w500,
                                                              fontSize: 14
                                                          ),),
                                                          SizedBox(height: 10,),
                                                          Text("Vardaan Car Rental Services Pvt Ltd",style: TextStyle(
                                                              fontWeight: FontWeight.w500,
                                                            overflow: TextOverflow.visible, // Prevent text truncation
                                                              fontSize: 14,
                                                          ),),

                                                        ],
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              SizedBox(height: 10,),
                                              GestureDetector(
                                                onTap: (){},
                                                child: Container(
                                                  alignment: Alignment.center,
                                                  height: h/17,
                                                  width: w/1.1,
                                                  decoration: BoxDecoration(
                                                    color: MyTheme.t1containercolor,
                                                    borderRadius: BorderRadius.circular(12)
                                                  ),
                                                  child: Text("Edit Entity",style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 16,
                                                    color: MyTheme.whitecolor
                                                  ),),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }),
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.to(()=>AddDriverAndVehicles());
        },
        backgroundColor: MyTheme.themecolor,
        child: Icon(Icons.add),
        // shape: ShapeBorder,
      ),
    );
  }
}

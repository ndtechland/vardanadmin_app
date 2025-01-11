import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vardaanadmin/modules/routing_cab_allocations/routes_details.dart';
import 'package:get/get.dart';
import '../../constants/constants.dart';

class ShowAllRoutes extends StatelessWidget {
  const ShowAllRoutes({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MyTheme.themecolor,
        title: Text(
          "All Routes",
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
            padding: const EdgeInsets.all(18.0),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [

                ///total routes
                Center(
                  child: Container(
                    height: 40,
                    width: w/1.8,
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
                            Icon(Icons.roundabout_right_outlined, color: MyTheme
                                .t1containercolor,),
                            SizedBox(width: 8,),
                            Text("Total Routes : 1",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15
                              ),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ),

                SizedBox(height: 20,),

                ///routes card
                Container(
                  child: ListView.builder(
                      itemCount: 1,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context,index){
                    return  GestureDetector(
                      onTap:(){
                        Get.to(()=>RoutesDetails());
                      },
                      child: Container(
                        height: h/8,
                        width: w/1.8,
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
                            padding: const EdgeInsets.only(left: 18.0,top: 12,right: 14),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.directions_car_filled_outlined, color: MyTheme.t22Iconcolor,),
                                    SizedBox(width: 8,),
                                    Text("HR38AE2782",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                        color: Colors.deepOrangeAccent
                                      ),),
                                    SizedBox(width: 20,),
                                    Text("CAB ID- ",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: MyTheme.t1containercolor
                                      ),),
                                    Text("Cab Id -9",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15,
                                          color: Colors.deepOrangeAccent
                                      ),),
                                  ],
                                ),
                                 SizedBox(height: 10,),
                                Expanded(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Icon(Icons.location_on, color: Colors.red,),
                                      SizedBox(width: 8,),
                                      Expanded(
                                        child: Text("36048 - NOIDA SECTOR 76 ",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18,
                                            overflow: TextOverflow.visible
                                          ),),
                                      ),
                                      GestureDetector(
                                          onTap:(){
                                            Get.to(()=>RoutesDetails());
                                          },
                                          child: Icon(Icons.arrow_forward_ios_sharp, color: Colors.black87,size: 18,)),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
               ]
            ),
          ),
        ),
      ),
    );
  }
}

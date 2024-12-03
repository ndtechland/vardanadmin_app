import 'package:flutter/material.dart';
import 'package:vardaanadmin/constants/constants.dart';
class DriversList extends StatefulWidget {
  const DriversList({super.key});

  @override
  State<DriversList> createState() => _DriversListState();
}

class _DriversListState extends State<DriversList> {
  List<String> _driverStatus = ["Active","Inactive","Pending"];

  String _selected ="Active";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: MyTheme.themecolor,
          title: Text(
            "Vehicles List",
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
            DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                icon: const Icon(
                  Icons.arrow_drop_down,
                  size: 22,

                ),
                items: _driverStatus.map((String vehicle) {
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
            )
          ],
        ),
        backgroundColor: MyTheme.linehome,
        body: OrientationBuilder(
          builder: (context, orientation) {
            return LayoutBuilder(
                builder: (context, constraints) {
                  return SingleChildScrollView(
                    child: Container(
                      child: Padding(padding: EdgeInsets.all(18.0),
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
                            /// driver list
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
                                    height: 150,
                                    width: double.infinity,
                                    child: PhysicalModel(
                                      elevation: 5,
                                      shadowColor: MyTheme.t1containercolor,
                                      color: MyTheme.whitecolor,
                                      borderRadius: BorderRadius.circular(12),
                                      child: Padding(
                                        padding: const EdgeInsets.only(left: 18.0,right: 10),
                                        child: Row(
                                          children: [
                                          CircleAvatar(
                                            radius: 55,
                                            backgroundImage: AssetImage("lib/assets/driver.png"),
                                          ),
                                            Spacer(),
                                            Container(
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Text("Name: ",style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 16
                                                      ),),
                                                      Text("Ajeet Singh ",style: TextStyle(
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: 16
                                                      ),),
                                                    ],
                                                  ), Row(
                                                    children: [
                                                      Text("Age: ",style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 16
                                                      ),),
                                                      Text("32 ",style: TextStyle(
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: 16
                                                      ),),
                                                    ],
                                                  ), Row(
                                                    children: [
                                                      Text("Mobile: ",style: TextStyle(
                                                        fontWeight: FontWeight.bold,
                                                        fontSize: 16
                                                      ),),
                                                      Text("+91 49876587676",style: TextStyle(
                                                          fontWeight: FontWeight.w500,
                                                          fontSize: 14
                                                      ),),
                                                    ],
                                                  ),

                                                ],
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
                        ),),
                    ),
                  );
                });
          }),
      ),
    );
  }
}

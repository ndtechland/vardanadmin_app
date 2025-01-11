// import 'package:flutter/material.dart';
//
// import '../../constants/constants.dart';
// class ViewEmployee extends StatefulWidget {
//   const ViewEmployee({super.key});
//
//   @override
//   State<ViewEmployee> createState() => _ViewEmployeeState();
// }
//
// class _ViewEmployeeState extends State<ViewEmployee> {
//   String selectedPickUp ='1';
//   @override
//   Widget build(BuildContext context) {
//
//     double h = MediaQuery.of(context).size.height;
//     double w = MediaQuery.of(context).size.width;
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         backgroundColor: MyTheme.themecolor,
//         title: Text(
//           "Employee Details",
//           style: TextStyle(
//             fontSize: 18,
//             fontWeight: FontWeight.bold,
//             color: MyTheme.t1containercolor,
//           ),
//         ),
//         // actions: [
//         //   IconButton(
//         //     onPressed: () {},
//         //     icon: Icon(
//         //       Icons.search,
//         //       color: MyTheme.t1containercolor,
//         //     ),
//         //   ),
//         // ],
//       ),
//       body: SingleChildScrollView(
//         child: Container(
//           child: Padding(padding: EdgeInsets.all(18),
//           child: Column(
//             children: [
//             Container(
//               child: ListView.builder(
//                 shrinkWrap: true,
//                 physics: NeverScrollableScrollPhysics(),
//                 itemCount: 1,
//                   itemBuilder: (context,index){
//                     return Container(
//                         height: h/4.1,
//                         width: w/1.1,
//                         decoration: BoxDecoration(
//                         // elevation: 2,
//                         borderRadius: BorderRadius.circular(17),
//                     ),
//                     child: PhysicalModel(
//                     elevation: 5,
//                     shadowColor: MyTheme.t1containercolor,
//                     color: MyTheme.whitecolor,
//                     borderRadius: BorderRadius.circular(12),
//                     child: Padding(
//                     padding: const EdgeInsets.only(left: 14.0,top: 10,right: 14),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Row(children: [
//                             RichText(text: TextSpan(
//                               text: 'Emp ID: ',style: TextStyle(
//                               // fontWeight: FontWeight.bold,
//                                   color: Colors.black
//                               ),
//                               children: [
//                                 TextSpan(text: "7309987500",style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.black
//                                 )),
//                               ]
//                             )),
//                             // Text("Emp ID: 7309987500"),
//                             Spacer(),
//                             Icon(Icons.timer,color: Colors.orange,size: 20,),
//                             Text("04:00 pm",style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black,fontSize: 16
//                             ))
//                           ],),
//                           SizedBox(height: 10,),
//                           RichText(text: TextSpan(text: 'Emp Name: ',style: TextStyle(
//                             // fontWeight: FontWeight.bold,
//                               color: Colors.black
//                           ),children: [
//                             TextSpan(text: 'Vaishnavi',style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black
//                           ))]
//                           )),
//                           SizedBox(height: 10,),
//                           RichText(text: TextSpan(text: 'Address: ',style: TextStyle(
//                             // fontWeight: FontWeight.bold,
//                               color: Colors.black
//                           ),children: [
//                             TextSpan(text: 'Brahmpal Gal Near Kuleshar police chowki Greater Noida 201306',style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               color: Colors.black
//                           ))]
//                           )),
//                           SizedBox(height: 10,),
//                           Divider(
//                             height: 20,
//                             color: Colors.black12,
//                             thickness: 1,
//                             // indent : 10,
//                             // endIndent : 10,
//                           ),
//                           Row(
//                             children: [
//                               Expanded(
//                                 child: RadioListTile(
//                                   title: Text(
//                                     'Picked Up',
//                                     style: TextStyle(
//                                         fontSize: 12,
//                                         fontWeight: FontWeight.w600,
//                                         color: Colors.black
//                                     ),
//                                   ),
//                                   value: "1",
//                                   groupValue: selectedPickUp,
//                                   onChanged: (String? value) {
//                                     setState(() {
//                                       selectedPickUp=value!;
//                                     });
//                                     // onChangeAccountType(value!);
//
//                                   },
//                                 ),
//                               ),
//                               // SizedBox(width: 10),
//                               Expanded(
//                                 child: RadioListTile(
//                                   title: Text(
//                                     'No Show',
//                                     style: TextStyle(
//                                         fontSize: 12,
//                                         fontWeight: FontWeight.w600,
//                                         color: Colors.black
//
//                                     ),
//                                   ),
//                                   value: "2",
//                                   groupValue:selectedPickUp,
//                                   onChanged: (String? value) {
//                                     setState(() {
//                                       selectedPickUp=value!;
//                                     });
//                                     // print("accountType:${_acounttypeController.value.text}");
//                                     // onChangeAccountType(value!);
//                                   },
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     )));
//                   }),
//             ),
//               SizedBox(height: 10,),
//               Container(
//                   height: h/4.1,
//                   width: w/1.1,
//                   decoration: BoxDecoration(
//                     // elevation: 2,
//                     borderRadius: BorderRadius.circular(17),
//                   ),
//                   child: PhysicalModel(
//                       elevation: 5,
//                       shadowColor: MyTheme.t1containercolor,
//                       color: MyTheme.whitecolor,
//                       borderRadius: BorderRadius.circular(12),
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 14.0,top: 10,right: 14),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(children: [
//                               RichText(text: TextSpan(
//                                   text: 'Emp ID: ',style: TextStyle(
//                                 // fontWeight: FontWeight.bold,
//                                   color: Colors.black
//                               ),
//                                   children: [
//                                     TextSpan(text: "7309987500",style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         color: Colors.black
//                                     )),
//                                   ]
//                               )),
//                               // Text("Emp ID: 7309987500"),
//                               Spacer(),
//                               Icon(Icons.timer,color: Colors.orange,size: 20,),
//                               Text("04:00 pm",style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.black,fontSize: 16
//                               ))
//                             ],),
//                             SizedBox(height: 10,),
//                             RichText(text: TextSpan(text: 'Emp Name: ',style: TextStyle(
//                               // fontWeight: FontWeight.bold,
//                                 color: Colors.black
//                             ),children: [
//                               TextSpan(text: 'Shivani',style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.black
//                               ))]
//                             )),
//                             SizedBox(height: 10,),
//                             RichText(text: TextSpan(text: 'Address: ',style: TextStyle(
//                               // fontWeight: FontWeight.bold,
//                                 color: Colors.black
//                             ),children: [
//                               TextSpan(text: 'Brahmpal Gal Near Kuleshar police chowki Greater Noida 201306',style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.black
//                               ))]
//                             )),
//                             SizedBox(height: 10,),
//                             Divider(
//                               height: 20,
//                               color: Colors.black12,
//                               thickness: 1,
//                               // indent : 10,
//                               // endIndent : 10,
//                             ),
//                             Row(
//                               children: [
//                                 Expanded(
//                                   child: RadioListTile(
//                                     title: Text(
//                                       'Picked Up',
//                                       style: TextStyle(
//                                           fontSize: 12,
//                                           fontWeight: FontWeight.w600,
//                                           color: Colors.black
//                                       ),
//                                     ),
//                                     value: "1",
//                                     groupValue: selectedPickUp,
//                                     onChanged: (String? value) {
//                                       setState(() {
//                                         selectedPickUp=value!;
//                                       });
//                                       // onChangeAccountType(value!);
//
//                                     },
//                                   ),
//                                 ),
//                                 // SizedBox(width: 10),
//                                 Expanded(
//                                   child: RadioListTile(
//                                     title: Text(
//                                       'No Show',
//                                       style: TextStyle(
//                                           fontSize: 12,
//                                           fontWeight: FontWeight.w600,
//                                           color: Colors.black
//
//                                       ),
//                                     ),
//                                     value: "2",
//                                     groupValue:selectedPickUp,
//                                     onChanged: (String? value) {
//                                       setState(() {
//                                         selectedPickUp=value!;
//                                       });
//                                       // print("accountType:${_acounttypeController.value.text}");
//                                       // onChangeAccountType(value!);
//                                     },
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ))),
//               SizedBox(height: 10,),
//
//               Container(
//                   height: h/4.1,
//                   width: w/1.1,
//                   decoration: BoxDecoration(
//                     // elevation: 2,
//                     borderRadius: BorderRadius.circular(17),
//                   ),
//                   child: PhysicalModel(
//                       elevation: 5,
//                       shadowColor: MyTheme.t1containercolor,
//                       color: MyTheme.whitecolor,
//                       borderRadius: BorderRadius.circular(12),
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 14.0,top: 10,right: 14),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Row(children: [
//                               RichText(text: TextSpan(
//                                   text: 'Emp ID: ',style: TextStyle(
//                                 // fontWeight: FontWeight.bold,
//                                   color: Colors.black
//                               ),
//                                   children: [
//                                     TextSpan(text: "7309987500",style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         color: Colors.black
//                                     )),
//                                   ]
//                               )),
//                               // Text("Emp ID: 7309987500"),
//                               Spacer(),
//                               Icon(Icons.timer,color: Colors.orange,size: 20,),
//                               Text("04:00 pm",style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.black,fontSize: 16
//                               ))
//                             ],),
//                             SizedBox(height: 10,),
//                             RichText(text: TextSpan(text: 'Emp Name: ',style: TextStyle(
//                               // fontWeight: FontWeight.bold,
//                                 color: Colors.black
//                             ),children: [
//                               TextSpan(text: 'Khushi',style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.black
//                               ))]
//                             )),
//                             SizedBox(height: 10,),
//                             RichText(text: TextSpan(text: 'Address: ',style: TextStyle(
//                               // fontWeight: FontWeight.bold,
//                                 color: Colors.black
//                             ),children: [
//                               TextSpan(text: 'Brahmpal Gal Near Kuleshar police chowki Greater Noida 201306',style: TextStyle(
//                                   fontWeight: FontWeight.bold,
//                                   color: Colors.black
//                               ))]
//                             )),
//                             SizedBox(height: 10,),
//                             Divider(
//                               height: 20,
//                               color: Colors.black12,
//                               thickness: 1,
//                               // indent : 10,
//                               // endIndent : 10,
//                             ),
//                             Row(
//                               children: [
//                                 Expanded(
//                                   child: RadioListTile(
//                                     title: Text(
//                                       'Picked Up',
//                                       style: TextStyle(
//                                           fontSize: 12,
//                                           fontWeight: FontWeight.w600,
//                                           color: Colors.black
//                                       ),
//                                     ),
//                                     value: "1",
//                                     groupValue: selectedPickUp,
//                                     onChanged: (String? value) {
//                                       setState(() {
//                                         selectedPickUp=value!;
//                                       });
//                                       // onChangeAccountType(value!);
//
//                                     },
//                                   ),
//                                 ),
//                                 // SizedBox(width: 10),
//                                 Expanded(
//                                   child: RadioListTile(
//                                     title: Text(
//                                       'No Show',
//                                       style: TextStyle(
//                                           fontSize: 12,
//                                           fontWeight: FontWeight.w600,
//                                           color: Colors.black
//
//                                       ),
//                                     ),
//                                     value: "2",
//                                     groupValue:selectedPickUp,
//                                     onChanged: (String? value) {
//                                       setState(() {
//                                         selectedPickUp=value!;
//                                       });
//                                       // print("accountType:${_acounttypeController.value.text}");
//                                       // onChangeAccountType(value!);
//                                     },
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ],
//                         ),
//                       ))),
//             ],
//           ),),
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:vardaanadmin/constants/constants.dart';

class ViewEmployee extends StatefulWidget {
  const ViewEmployee({super.key});

  @override
  State<ViewEmployee> createState() => _ViewEmployeeState();
}

class _ViewEmployeeState extends State<ViewEmployee> {
  String selectedPickUp = '1';

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    // Example employee data
    final employees = [
      {
        "empId": "7309987500",
        "empName": "Vaishnavi",
        "address":
        "Brahmpal Gal Near Kuleshar police chowki Greater Noida 201306",
        "time": "04:00 PM"
      },
      {
        "empId": "7309987501",
        "empName": "Shivani",
        "address":
        "Brahmpal Gal Near Kuleshar police chowki Greater Noida 201306",
        "time": "03:30 PM"
      },
      {
        "empId": "7309987502",
        "empName": "Khushi",
        "address":
        "Brahmpal Gal Near Kuleshar police chowki Greater Noida 201306",
        "time": "04:15 PM"
      },
    ];

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: MyTheme.themecolor,
        title: Text(
          "Employee Details",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: MyTheme.t1containercolor,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: employees.map((employee) {
              return Container(
                margin: const EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  // gradient: LinearGradient(
                  //   colors: [Colors.deepPurple, Colors.purpleAccent],
                  //   begin: Alignment.topLeft,
                  //   end: Alignment.bottomRight,
                  // ),
                  color: MyTheme.whitecolor,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0, 4),
                      blurRadius: 6,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.badge, color: MyTheme.t1containercolor, size: 20),
                          SizedBox(width: 8),
                          Text(
                            "Emp ID: ${employee['empId']}",
                            style: TextStyle(
                              fontSize: 16,
                              color: MyTheme.t1containercolor,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Row(
                            children: [
                              Icon(Icons.access_time,
                                  color: Colors.orange, size: 20),
                              SizedBox(width: 4),
                              Text(
                                employee['time']!,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: MyTheme.t1containercolor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.person, color: MyTheme.t1containercolor, size: 20),
                          SizedBox(width: 8),
                          Text(
                            "Emp Name: ${employee['empName']}",
                            style: TextStyle(
                              fontSize: 16,
                              color: MyTheme.t1containercolor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Icon(Icons.location_on,
                              color: MyTheme.t1containercolor, size: 20),
                          SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              "Address: ${employee['address']}",
                              style: TextStyle(
                                fontSize: 14,
                                color: MyTheme.t1containercolor,
                                fontWeight: FontWeight.w400,
                              ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Divider(
                        color: Colors.black87,
                        thickness: 1,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration: selectedPickUp == "1"?BoxDecoration(
                                borderRadius: BorderRadius.circular(20),color: Colors.green
                              // MyTheme.t1containercolor
                              ):BoxDecoration(),
                              child: TextButton.icon(
                                onPressed: () {
                                  setState(() {
                                    selectedPickUp = "1";
                                  });
                                },
                                icon: Icon(
                                  selectedPickUp == "1"?Icons.check_circle:Icons.check,
                                  color: selectedPickUp == "1"
                                      ? Colors.white
                                      : MyTheme.t1containercolor,
                                ),
                                label: Text(
                                  "Picked Up",
                                  style: TextStyle(
                                    color: selectedPickUp == "1"
                                        ? Colors.white
                                        : MyTheme.t1containercolor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: selectedPickUp == "2"?BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),color: Colors.red
                                // MyTheme.t1containercolor
                              ):BoxDecoration(),
                              child: TextButton.icon(
                                onPressed: () {
                                  setState(() {
                                    selectedPickUp = "2";
                                  });
                                },
                                icon: Icon(
                                  Icons.cancel,
                                  color: selectedPickUp == "2"
                                      ? Colors.white
                                      : MyTheme.t1containercolor,
                                ),
                                label: Text(
                                  "No Show",
                                  style: TextStyle(
                                    color: selectedPickUp == "2"
                                        ? Colors.white
                                        : MyTheme.t1containercolor,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:vardaanadmin/constants/constants.dart';

import 'login2.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController transportController = TextEditingController();
  TextEditingController mobController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  // final LoginController _loginController = Get.put(LoginController());
  //
  // final RegistrationController _registrationController = Get.put(RegistrationController());
  //
  // final EmployeeLoginController _employeeloginController = Get.put(EmployeeLoginController());
  // final LocationController locationController = Get.put(LocationController());
  // final AttendanceController attendanceController = Get.put(AttendanceController());

  // FocusNode for User login
  final FocusNode _employeeFocusNode = FocusNode();
  final FocusNode _employeeFocusNode2 = FocusNode();


  // FocusNode for Employee login
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return OrientationBuilder(
      builder: (context, orientation) {
        return LayoutBuilder(
          builder: (context, constraints) {
            return Scaffold(
              backgroundColor: Colors.white,
              body:SafeArea(
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [MyTheme.lightthemecolor,MyTheme.lightthemecolor],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Logo Section
                          CircleAvatar(
                            radius: 80,
                            backgroundColor: Colors.white,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ClipOval(
                                child: Image.asset(
                                  'lib/assets/logo.png',
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          // Welcome Text
                          Text(
                            "Welcome to Vardaan Car",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: MyTheme.t1containercolor,
                              letterSpacing: 1.2,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Your trusted companion for car transport solutions",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: MyTheme.t1containercolor,
                            ),
                          ),
                          const SizedBox(height: 20),
                          // Form Card
                          Container(
                            width: double.infinity,
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 15,
                                  offset: Offset(0, 5),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Transport Code Field
                                TextFormField(
                                  controller: transportController,
                                  style: TextStyle(fontSize: 16),
                                  decoration: InputDecoration(
                                    labelText: "Transport Code",
                                    prefixIcon: Icon(Icons.business, color: MyTheme.t1containercolor),
                                    filled: true,
                                    fillColor: Colors.grey[100],
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide.none,
                                    ),
                                    contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                                  ),
                                ),
                                const SizedBox(height: 20),
                                // Mobile Number Field
                                TextFormField(
                                  controller: mobController,
                                  style: TextStyle(fontSize: 16),
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                    labelText: "Mobile Number",
                                    prefixIcon: Icon(Icons.phone, color: MyTheme.t1containercolor),
                                    filled: true,
                                    fillColor: Colors.grey[100],
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(12),
                                      borderSide: BorderSide.none,
                                    ),
                                    contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                                  ),
                                ),
                                const SizedBox(height: 30),
                                // Verify Button
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => Login2()),
                                    );
                                  },
                                  child: AnimatedContainer(
                                    duration: const Duration(milliseconds: 300),
                                    curve: Curves.easeInOut,
                                    alignment: Alignment.center,
                                    height: 50,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: MyTheme.btncolor,
                                      // gradient: LinearGradient(
                                      //   colors: [Colors.blueAccent, Colors.lightBlue],
                                      // ),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.blue.withOpacity(0.3),
                                          blurRadius: 10,
                                          offset: Offset(0, 5),
                                        ),
                                      ],
                                    ),
                                    child: Text(
                                      "Verify",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
              //   // Obx(
              //   //     () => (_loginController.isLoading.value || _employeeloginController.isLoading.value)
              //   //     ? Center(child: CircularProgressIndicator()) :
              //       SafeArea(
              //     child: Container(
              //       height: MediaQuery.of(context).size.height,
              //       width: MediaQuery.of(context).size.width,
              //       color: MyTheme.linehome,
              //       child: SingleChildScrollView(
              //         child: Padding(
              //           padding: const EdgeInsets.all(18.0),
              //           child: Column(
              //             crossAxisAlignment: CrossAxisAlignment.center,
              //             children: [
              //               SizedBox(height: 40,),
              //               CircleAvatar(
              //                 radius: 80,
              //                 backgroundImage: AssetImage('lib/assets/logo.png'),
              //                 // child: Image.asset('lib/assets/logo.png',fit: BoxFit.cover,),
              //               ),
              //               SizedBox(height: 20,),
              //               TextFormField(
              //                 controller: transportController,
              //                 decoration: InputDecoration(
              //                   prefixIcon: Icon(Icons.business_sharp,color: Colors.grey,),
              //                   border: OutlineInputBorder(
              //                     borderSide: BorderSide(color: Colors.grey.shade100,width: 1)
              //                   ),
              //                   label: Text("Transport Code")
              //                 ),
              //               ),
              //               SizedBox(height: 20,),
              //               TextFormField(
              //                 controller: mobController,
              //                 decoration: InputDecoration(
              //                     prefixIcon: Icon(Icons.call,color: Colors.grey,),
              //                     border: OutlineInputBorder(
              //                         borderSide: BorderSide(color: Colors.grey.shade100,width: 1)
              //                     ),
              //                     label: Text("Mobile Number")
              //                 ),
              //               ),
              //               SizedBox(height: 20,),
              //               GestureDetector(
              //                 onTap: (){
              //                   Navigator.push(context, MaterialPageRoute(builder: (context)=>Login2()));
              //                 },
              //                 child: Container(
              //                   alignment: Alignment.center,
              //                   height: 50,
              //                   width: 160,
              //                   decoration: BoxDecoration(
              //                     borderRadius: BorderRadius.circular(4),
              //                     color: MyTheme.themecolor
              //                   ),
              //                   child: Text("Verify",style: TextStyle(
              //                     color: Colors.indigo,fontSize: 18,fontWeight: FontWeight.w600
              //                   ),),
              //                 ),
              //               )
              //             ],
              //           ),
              //         )
              //         // Stack(
              //         //   children: [
              //         //     Positioned(
              //         //       //top: 25,
              //         //       child: SizedBox(
              //         //         height: 300,
              //         //         width: MediaQuery.of(context).size.width , // Adjust width based on screen
              //         //         child: Container(
              //         //           decoration: BoxDecoration(
              //         //               color: MyTheme.themecolor,
              //         //               borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60),bottomRight: Radius.circular(60))
              //         //           ),
              //         //           child: Padding(
              //         //             padding: const EdgeInsets.only(top: 30.0,left: 18),
              //         //             child: Column(
              //         //               crossAxisAlignment: CrossAxisAlignment.start,
              //         //               children: [
              //         //                 SizedBox(
              //         //                   height: 20,
              //         //                 ),
              //         //                 logoImg(),
              //         //                 SizedBox(
              //         //                   height: 10,
              //         //                 ),
              //         //                 const Text(
              //         //                   'Welcome to Vardaan Car',
              //         //                   style: TextStyle(
              //         //                       color: Colors.white, fontSize: 20, fontFamily: 'medium'),
              //         //                 ),
              //         //                 SizedBox(
              //         //                   height: 10,
              //         //                 ),
              //         //                 // Text(
              //         //                 //   'Login With Us.',
              //         //                 //   style: TextStyle(
              //         //                 //       color: Colors.white,
              //         //                 //       fontSize: 17,
              //         //                 //       fontWeight: FontWeight.bold,
              //         //                 //       fontFamily: 'medium'),
              //         //                 // ),
              //         //               ],
              //         //             ),
              //         //           ),
              //         //         ),
              //         //       ),
              //         //     ),
              //         //
              //         //     Padding(
              //         //       padding: const EdgeInsets.only(top: 200.0),
              //         //       child: Container(
              //         //         width: double.infinity,
              //         //         margin: const EdgeInsets.symmetric(
              //         //             horizontal: 24, vertical: 30),
              //         //         decoration: BoxDecoration(
              //         //           color: Colors.white,
              //         //           borderRadius: BorderRadius.circular(20),
              //         //           boxShadow: const [
              //         //             BoxShadow(
              //         //               color: Colors.black12,
              //         //               blurRadius: 20.0,
              //         //             ),
              //         //           ],
              //         //         ),
              //         //         child: Stack(
              //         //           children: [
              //         //
              //         //             Container(
              //         //               height: 350, // Adjust as necessary
              //         //               child:
              //         //               // TabBarView(
              //         //               //   children: [
              //         //               //buildUserLoginForm(),
              //         //               buildEmployeeLoginForm(),
              //         //               //  ],
              //         //               // ),
              //         //             ),
              //         //           ],
              //         //         ),
              //         //       ),
              //         //     ),
              //         //   ],
              //         // ),
              //       ),
              //     ),
              //   ),
              // // ),
              // //appBar: _buildAppBar(),
            );
          },
        );
      },
    );
  }
  Widget buildEmployeeLoginForm() {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child:
      // Obx(() => _employeeloginController.isLoading.value
      //       ? Center(child: CircularProgressIndicator()) :
            Form(
          // key: _employeeloginController.loginFormKey2,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Login',
                style: TextStyle(
                    color: MyTheme.themecolor,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'medium'),
              ),
              Container(
                height: 5,
                width: 50,
                // color: appColor2,
                decoration: BoxDecoration(
                    color: Colors.indigo,
                    borderRadius: BorderRadius.circular(18)
                ),
              ),
              textField2(
                hint: 'Employee ID',

                suffixIcon: Icons.person_outline,
                // controller: _employeeloginController.usernameController,
                controller: usernameController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter Employee ID';
                  }
                  return null;
                },
                focusNode: _employeeFocusNode, // Assign FocusNode
              ),
              PasswordTextField(
                hint: 'Password',
                //suffixIcon: Icons.lock,
                controller: passwordController,
                // controller: _employeeloginController.passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
                focusNode: _employeeFocusNode2, // Assign FocusNode
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyTextButton(
                    onPressed: () {
                      // Get.to(ForgotPassword());
                    },
                    text: 'Forgot Password',
                    colors: Colors.indigo,
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Center(
                child: Container(
                  height: 40,
                  width: 200,
                  decoration: BoxDecoration(
                      color: MyTheme.themecolor,
                      borderRadius: BorderRadius.circular(20.0)
                  ),
                  child: TextButton(
                    onPressed: () async{
                      // if (_employeeloginController.loginFormKey2.currentState
                      //     ?.validate() ??
                      //     false) {
                      //   // await _profileEmployeeController.profileemployeeApi();
                      //   await _employeeloginController.checkemployeeLogin();
                      //   // await _homedashboardController.dashboarddApi();
                      //   GetServerKey getServerKey = GetServerKey();
                      //   String accessToken = await getServerKey.GetServerKeyToken();
                      //   print("server keyyy:$accessToken");
                      // }
                      //
                      // await attendanceController.EmpActivityApi();
                      // print("attendance activity:${attendanceController.attendanceActivityModel?.data?.checkIn}");
                    }, child: Text('Login',style: TextStyle(color: Colors.white),),),
                ),
              ),

              const SizedBox(height: 34),
            ],
          ),
        ),
      // ),
    );
  }
  logoImg() {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(shape: BoxShape.circle,
          color: Colors.white),
      child: Image.asset(
        'lib/assets/images/logoo.png',
        // fit: BoxFit.contain,
        width: 60,
        height: 60,
      ),
    );
  }
}

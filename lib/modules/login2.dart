import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:vardaanadmin/modules/forgot_password.dart';
import 'package:vardaanadmin/modules/home.dart';
import 'package:vardaanadmin/modules/login_page.dart';
import '../constants/constants.dart';
class Login2 extends StatefulWidget {
  const Login2({super.key});

  @override
  State<Login2> createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  TextEditingController mobController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool _obsecureText = true;
  void _toggleVisibility() {
    setState(() {
      _obsecureText = !_obsecureText;
    });
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return OrientationBuilder(
        builder: (context, orientation) {
          return LayoutBuilder(
              builder: (context, constraints) {
              return Scaffold(
                backgroundColor: Colors.white,
                body: Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  color: MyTheme.linehome,
                  child: SingleChildScrollView(
                    child: SafeArea(
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
                                      keyboardType: TextInputType.phone,
                                      controller: mobController,
                                      style: TextStyle(fontSize: 16),
                                      decoration: InputDecoration(
                                        labelText: "Mobile Number",
                                        prefixIcon: Icon(Icons.call, color: MyTheme.t1containercolor),
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
                                      controller: passwordController,
                                      style: TextStyle(fontSize: 16),
                                      // keyboardType: TextInputType.phone,
                                      obscureText: _obsecureText,
                                      decoration: InputDecoration(
                                        labelText: "Password",
                                        prefixIcon: Icon(Icons.password, color: MyTheme.t1containercolor),
                                        suffixIcon: IconButton(
                                          icon: Icon(
                                            _obsecureText ? Icons.visibility_off : Icons.visibility,
                                            color: _obsecureText ? Colors.red : Colors.green,
                                          ),
                                          onPressed: _toggleVisibility,
                                        ),
                                        filled: true,
                                        fillColor: Colors.grey[100],
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.circular(12),
                                          borderSide: BorderSide.none,
                                        ),
                                        contentPadding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                                      ),
                                    ),
                                    // const SizedBox(height: 10),
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        TextButton(onPressed: () { Get.offAll(()=>LoginPage()); },
                                        child: Text("Reset",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold)),),
                                        TextButton(onPressed: () { Get.to(()=>ForgotPassword()); },
                                        child: Text("Forgot Password?",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)),
                                      ],
                                    ),
                                    const SizedBox(height: 20),

                                    // Verify Button
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => HomePage()),
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
                                          "Login",
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
                    )
                    // SafeArea(
                    //     child: Container(
                    // child: Padding(
                    //   padding: const EdgeInsets.all(18.0),
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.center,
                    //     children: [
                    //       SizedBox(height: 40,),
                    //       CircleAvatar(
                    //         radius: 80,
                    //         backgroundImage: AssetImage('lib/assets/logo.png'),
                    //         // child: Image.asset('lib/assets/logo.png',fit: BoxFit.cover,),
                    //       ),
                    //       SizedBox(height: 20,),
                    //       TextFormField(
                    //         controller: mobController,
                    //         decoration: InputDecoration(
                    //             prefixIcon: Icon(Icons.call,color: Colors.grey,),
                    //             border: OutlineInputBorder(
                    //                 borderSide: BorderSide(color: Colors.grey.shade100,width: 1)
                    //             ),
                    //             label: Text("Mobile Number")
                    //         ),
                    //       ),
                    //       SizedBox(height: 20,),
                    //       TextFormField(
                    //         controller: passwordController,
                    //         obscureText: _obsecureText,
                    //         decoration: InputDecoration(
                    //             prefixIcon: Icon(Icons.lock,color: Colors.grey,),
                    //             suffixIcon: IconButton(
                    //               icon: Icon(
                    //                 _obsecureText ? Icons.visibility_off : Icons.visibility,
                    //                 color: _obsecureText ? Colors.red : Colors.green,
                    //               ),
                    //               onPressed: _toggleVisibility,
                    //             ),
                    //             border: OutlineInputBorder(
                    //                 borderSide: BorderSide(color: Colors.grey.shade100,width: 1)
                    //             ),
                    //             label: Text("Password")
                    //         ),
                    //       ),
                    //       SizedBox(height: 8,),
                    //
                    //       Padding(
                    //         padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                    //         child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //           children: [
                    //             Text("Reset",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    //             Text("Forgot Password",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                    //
                    //           ],
                    //         ),
                    //       ),
                    //       SizedBox(height: 20,),
                    //
                    //       GestureDetector(
                    //         onTap: (){
                    //           Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                    //         },
                    //         child: Container(
                    //           alignment: Alignment.center,
                    //           height: 50,
                    //           width: 160,
                    //           decoration: BoxDecoration(
                    //               borderRadius: BorderRadius.circular(4),
                    //               color: MyTheme.themecolor
                    //           ),
                    //           child: Text("Login",style: TextStyle(
                    //               color: Colors.indigo,fontSize: 18,fontWeight: FontWeight.w600
                    //           ),),
                    //         ),
                    //       )
                    //     ],
                    //   ),
                    // ),
                    // )),
                  ),
                ),
              );
              });
        });
  }
}

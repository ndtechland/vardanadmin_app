import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pinput/pinput.dart';
import 'package:vardaanadmin/constants/constants.dart';
import 'package:smart_auth/smart_auth.dart';
import 'home.dart';
import 'login_page.dart';
class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  TextEditingController newPassController = TextEditingController();
  TextEditingController cnfPassController = TextEditingController();
  late final SmsRetriever smsRetriever;
  TextEditingController pinController= TextEditingController();
  late final FocusNode focusNode;
  late final GlobalKey<FormState> formKey;
  // @override
  // void initState() {
  //   super.initState();
  //   formKey = GlobalKey<FormState>();
  //   pinController = TextEditingController();
  //   focusNode = FocusNode();
  //
  //   /// In case you need an SMS autofill feature
  //   smsRetriever = SmsRetrieverImpl(
  //     SmartAuth(),
  //   );
  // }

  @override
  void dispose() {
    pinController.dispose();
    focusNode.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // final defaultPinTheme = PinTheme(
    //   width: 56,
    //   height: 56,
    //   textStyle: const TextStyle(
    //     fontSize: 22,
    //     color: Color.fromRGBO(30, 60, 87, 1),
    //   ),
    //   decoration: BoxDecoration(
    //     borderRadius: BorderRadius.circular(19),
    //     border: Border.all(color: borderColor),
    //   ),
    // );
    return OrientationBuilder(
        builder: (context, orientation) {
      return LayoutBuilder(
          builder: (context, constraints) {
        return Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [MyTheme.lightthemecolor,MyTheme.lightthemecolor],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: SingleChildScrollView(
              child: SafeArea(
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Column(
                  children: [
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
                          Text("Forgot Password",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Colors.black
                          ),),
                          const SizedBox(height: 20),
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            controller: pinController,
                            style: TextStyle(fontSize: 16),
                            decoration: InputDecoration(
                              labelText: "Otp Pin",
                              prefixIcon: Icon(Icons.pin, color: MyTheme.t1containercolor),
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

                          // Transport Code Field
                          TextFormField(
                            keyboardType: TextInputType.phone,
                            controller: newPassController,
                            style: TextStyle(fontSize: 16),
                            decoration: InputDecoration(
                              labelText: "New Password",
                              prefixIcon: Icon(Icons.password, color: MyTheme.t1containercolor),
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
                            controller: cnfPassController,
                            style: TextStyle(fontSize: 16),
                            // keyboardType: TextInputType.phone,
                            // obscureText: _obsecureText,
                            decoration: InputDecoration(
                              labelText: "Confirm Password",
                              prefixIcon: Icon(Icons.password, color: MyTheme.t1containercolor),
                              // suffixIcon: IconButton(
                              //   icon: Icon(
                              //     _obsecureText ? Icons.visibility_off : Icons.visibility,
                              //     color: _obsecureText ? Colors.red : Colors.green,
                              //   ),
                              //   onPressed: _toggleVisibility,
                              // ),
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
                          const SizedBox(height: 20),

                          // Verify Button
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => LoginPage()),
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
                                "Forgot",
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
          ),
        );});
    });
  }
}
// class SmsRetrieverImpl implements SmsRetriever {
//   const SmsRetrieverImpl(this.smartAuth);
//
//   final SmartAuth smartAuth;
//
//   @override
//   Future<void> dispose() {
//     return smartAuth.removeSmsListener();
//   }
//
//   @override
//   Future<String?> getSmsCode() async {
//     final signature = await smartAuth.getAppSignature();
//     debugPrint('App Signature: $signature');
//     final res = await smartAuth.getSmsCode(
//       useUserConsentApi: true,
//     );
//     if (res.succeed && res.codeFound) {
//       return res.code!;
//     }
//     return null;
//   }
//
//   @override
//   bool get listenForMultipleSms => false;
// }
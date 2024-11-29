import 'package:flutter/material.dart';

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
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(height: 40,),
                          CircleAvatar(
                            radius: 80,
                            backgroundImage: AssetImage('lib/assets/logo.png'),
                            // child: Image.asset('lib/assets/logo.png',fit: BoxFit.cover,),
                          ),
                          SizedBox(height: 20,),
                          TextFormField(
                            controller: mobController,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.call,color: Colors.grey,),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey.shade100,width: 1)
                                ),
                                label: Text("Mobile Number")
                            ),
                          ),
                          SizedBox(height: 20,),
                          TextFormField(
                            controller: passwordController,
                            obscureText: _obsecureText,
                            decoration: InputDecoration(
                                prefixIcon: Icon(Icons.lock,color: Colors.grey,),
                                suffixIcon: IconButton(
                                  icon: Icon(
                                    _obsecureText ? Icons.visibility_off : Icons.visibility,
                                    color: _obsecureText ? Colors.red : Colors.green,
                                  ),
                                  onPressed: _toggleVisibility,
                                ),
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey.shade100,width: 1)
                                ),
                                label: Text("Password")
                            ),
                          ),
                          SizedBox(height: 8,),

                          Padding(
                            padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Reset",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                                Text("Forgot Password",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),

                              ],
                            ),
                          ),
                          SizedBox(height: 20,),

                          GestureDetector(
                            onTap: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>Login2()));
                            },
                            child: Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: 160,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  color: MyTheme.themecolor
                              ),
                              child: Text("Login",style: TextStyle(
                                  color: Colors.indigo,fontSize: 18,fontWeight: FontWeight.w600
                              ),),
                            ),
                          )
                        ],
                      ),
                    ),
                    )),
                  ),
                ),
              );
              });
        });
  }
}

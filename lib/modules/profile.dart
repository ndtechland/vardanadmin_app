import 'package:flutter/material.dart';

import '../constants/constants.dart';
class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: MyTheme.themecolor,
            title: Text(
              "Profile",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: MyTheme.t1containercolor,
              ),
            ),

          ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(radius: 70,
                backgroundImage: AssetImage("lib/assets/admin.png"),),
                SizedBox(height: 20,),
                Text("Kumar Prince",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                  color: Colors.blue
                ),),
                Text("+91 7019350053",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: MyTheme.t1containercolor
                ),),
                Text("Logged in as Transport",style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: MyTheme.t1containercolor
                ),),
                Container(height: 200,),
                Align(
                  alignment: Alignment.bottomCenter,
                    child: Image.asset("lib/assets/admin_bg.png")),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

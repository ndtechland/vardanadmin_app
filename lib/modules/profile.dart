import 'package:flutter/material.dart';
import '../constants/constants.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: MyTheme.themecolor,
          centerTitle: true,
          title: Text(
            "Profile",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: MyTheme.t1containercolor,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Gradient Background
                Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                    color: MyTheme.lightthemecolor,
                    // gradient: LinearGradient(
                    //   colors: [MyTheme.themecolor, Colors.blueAccent],
                    //   begin: Alignment.topLeft,
                    //   end: Alignment.bottomRight,
                    // ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Profile Image
                      CircleAvatar(
                        radius: 70,
                        backgroundImage: AssetImage("lib/assets/admin.png"),
                        backgroundColor: Colors.transparent,
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          // child: CircleAvatar(
                          //   radius: 35,
                          //   backgroundColor: Colors.white,
                          // ),
                        ),
                      ),
                      SizedBox(height: 10),
                      // Name and Status
                      Text(
                        "Kumar Prince",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: Colors.black,
                        ),
                      ),
                      // SizedBox(height: 5),
                      Text(
                        "+91 7019350053",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                      // SizedBox(height: 5),
                      Text(
                        "Logged in as Transport",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 30),

                // Card with Profile Info
                Card(
                  elevation: 5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        _buildProfileRow(Icons.email, "Email", "prince.kumar@gmail.com"),
                        _buildProfileRow(Icons.location_on, "Location", "Mumbai, India"),
                        _buildProfileRow(Icons.date_range, "Role", "Admin"),
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 30),

                // Edit Profile Button
                // ElevatedButton.icon(
                //   onPressed: () {
                //     // Navigate to edit profile page
                //   },
                //   style: ElevatedButton.styleFrom(
                //     backgroundColor: MyTheme.themecolor,
                //     padding: EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                //     shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(10),
                //     ),
                //   ),
                //   icon: Icon(
                //     Icons.edit,
                //     color: Colors.white,
                //   ),
                //   label: Text(
                //     "Edit Profile",
                //     style: TextStyle(
                //       fontSize: 18,
                //       fontWeight: FontWeight.bold,
                //       color: Colors.white,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
        ),

      ),
    );
  }

  // Helper method to build profile rows in the card
  Widget _buildProfileRow(IconData icon, String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Icon(
            icon,
            color: MyTheme.t1containercolor,
            size: 28,
          ),
          SizedBox(width: 15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16,
                  color: MyTheme.t1containercolor,
                ),
              ),
              SizedBox(height: 5),
              Text(
                value,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

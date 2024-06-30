import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rescue_med_ambulance/Widgets/Home/profileTextHolder.dart';
import 'package:rescue_med_ambulance/Widgets/Profile/profile_bar2.dart';

class Profile extends StatefulWidget {
  const Profile({
    super.key,
    required this.username,
    required this.vehiclenumber,
    required this.ambulanceid,
    required this.contactNumber,
    required this.membercount,
  });

  final String username;
  final String vehiclenumber;
  final String ambulanceid;
  final String contactNumber;
  final String membercount;

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: screenSize.width,
          height: screenSize.height,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 3, 142, 185),
          ),
          child: LayoutBuilder(builder: (context, constraints) {
            return Padding(
              padding: const EdgeInsets.only(top: 60),
              child: Column(children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: screenSize.height * 0.00,
                    horizontal: screenSize.width * 0.04,
                  ),
                  child: Column(
                    children: [
                      const ProfileBar2(
                        ambulanceNo: "ABC-1234",
                        crewNo: "Crew 12",
                      ),
                      SizedBox(height: screenSize.height * 0.03),
                      Column(
                        children: [
                          const Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "User Profile",
                                style: TextStyle(
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                  letterSpacing: 1,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: screenSize.height * 0.002),
                          Container(
                            height: 1.5,
                            width: screenSize.width * 0.95,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      SizedBox(height: screenSize.height * 0.03),
                      Column(
                        children: [
                          ProfileTextHolder(
                              feildName: "User Name",
                              username: widget.username),
                          SizedBox(height: screenSize.height * 0.01),
                          ProfileTextHolder(
                              feildName: "Vehicle Number",
                              username: widget.vehiclenumber),
                          SizedBox(height: screenSize.height * 0.01),
                          ProfileTextHolder(
                              feildName: "Ambulance ID",
                              username: widget.ambulanceid),
                          SizedBox(height: screenSize.height * 0.01),
                          ProfileTextHolder(
                              feildName: "Contact Number",
                              username: widget.contactNumber),
                          SizedBox(height: screenSize.height * 0.01),
                          ProfileTextHolder(
                              feildName: "Member Count",
                              username: widget.membercount),
                        ],
                      ),
                      SizedBox(height: screenSize.height * 0.05),
                      SizedBox(
                        height: screenSize.height * 0.055,
                        width: screenSize.width * 0.4,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 8,
                            padding: EdgeInsets.all(screenSize.width * 0.025),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                            backgroundColor: Colors.white,
                          ),
                          onPressed: () {
                            FirebaseAuth.instance.signOut();
                          },
                          child: const Center(
                            child: Text(
                              "LOG OUT",
                              style: TextStyle(
                                letterSpacing: 1.7,
                                color: Color.fromARGB(255, 3, 142, 185),
                                fontWeight: FontWeight.w900,
                                fontSize: 22,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenSize.height * 0.05),
                      Image.asset(
                        "assets/logo_2_full_white 1.png",
                        width: screenSize.width * 0.45,
                      ),
                     // SizedBox(height: screenSize.height * 0.05),
                    ],
                  ),
                ),
              ]),
            );
          }),
        ),
      ),
    );
  }
}

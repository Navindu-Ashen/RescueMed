import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rescue_med_ambulance/Screens/help.dart';
import 'package:rescue_med_ambulance/widgets/Home/counter.dart';
import 'package:rescue_med_ambulance/widgets/Home/emergency_card.dart';
import 'package:rescue_med_ambulance/widgets/Home/hospital_card.dart';
import 'package:rescue_med_ambulance/widgets/Home/new_patient_button.dart';
import 'package:rescue_med_ambulance/widgets/Home/profile_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        decoration: const BoxDecoration(
          color: Colors.white,
          image: DecorationImage(
            image: AssetImage("assets/backdrop_3.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: LayoutBuilder(builder: (context, constraints) {
            return Padding(
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: Center(
                      child: Image.asset(
                        'assets/logo_2.png',
                        width: 200,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: screenSize.height * 0.00,
                      horizontal: screenSize.width * 0.03,
                    ),
                    child: Column(
                      children: [
                        const ProfileBar(
                          userName: "Tharindu Malinda",
                          ambulanceNo: "ABC-1234",
                          crewNo: "Crew 12",
                          imgURL: "Testing",
                        ),
                        SizedBox(height: screenSize.height * 0.02),
                        const NewPatientButton(),
                        SizedBox(height: screenSize.height * 0.02),
                        const Counter( travelCount: 26,),
                        SizedBox(height: screenSize.height * 0.02),
                        const HospitalCard(),
                        SizedBox(height: screenSize.height * 0.02),
                        const EmergencyCard(),
                        SizedBox(height: screenSize.height * 0.04),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const HelpPage(),
                                  ),
                                );
                              },
                              child: Row(
                                children: [
                                  const Text(
                                    "Need Help?",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                  SizedBox(width: screenSize.width * 0.02),
                                  const Text(
                                    "Help section",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color.fromARGB(
                                          255, 255, 114, 114),
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {
                            FirebaseAuth.instance.signOut();
                          },
                          child: const Text("Log out"),
                        ),
                        const SizedBox(
                          height: 32,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 3, 142, 185),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.health_and_safety_outlined),
            label: 'Reports',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_4_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

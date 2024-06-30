import 'package:flutter/material.dart';
import 'package:rescue_med_ambulance/Screens/profile.dart';
import 'package:rescue_med_ambulance/Screens/reports.dart';
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
  Widget? currentScreen;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    currentScreen = Container(
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
                      const Counter(
                        travelCount: 26,
                      ),
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
                                  builder: (context) => const Profile(
                                    username: '',
                                    contactNumber: '',
                                    vehiclenumber: '',
                                    ambulanceid: '',
                                    membercount: '',
                                  ),
                                ),
                              );
                            },
                            child: Row(
                              children: [
                                const Text(
                                  "Need Help?",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                                SizedBox(width: screenSize.width * 0.02),
                                const Text(
                                  "Help section",
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Color.fromARGB(255, 255, 114, 114),
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
    );
    if (_selectedIndex == 1) {
      currentScreen = const ReportsPage();
    } else if (_selectedIndex == 2) {
      currentScreen = const Profile(
        username: "Tharindu Molagoda",
        vehiclenumber: "ABC-1234",
        ambulanceid: "C12",
        contactNumber: "0123456789",
        membercount: "3",
      );
    }
    return Scaffold(
      body: currentScreen,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 3, 142, 185),
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: (value) {
          setState(() {
            _selectedIndex = value;
          });
        },
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

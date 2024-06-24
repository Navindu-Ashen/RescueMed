import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rescue_med_ambulance/Screens/help.dart';

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
        color: Colors.white,
        child: SingleChildScrollView(
          child: LayoutBuilder(builder: (context, constraints) {
            return Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: screenSize.height * 0.02),
                  child: Center(
                    child: Image.asset(
                      'assets/logo_2.png',
                      height: screenSize.height * 0.1,
                      width: screenSize.width * 0.35,
                    ),
                  ),
                ),
                SizedBox(height: screenSize.height * 0.02),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: screenSize.height * 0.00,
                    horizontal: screenSize.width * 0.03,
                  ),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: screenSize.height * 0.086,
                            width: screenSize.width * 0.75,
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 16, 98, 147),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(36),
                                topRight: Radius.circular(15),
                                bottomLeft: Radius.circular(36),
                                bottomRight: Radius.circular(15),
                              ),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    SizedBox(width: screenSize.width * 0.01),
                                    const CircleAvatar(
                                      radius: 34,
                                      backgroundImage:
                                          AssetImage('assets/mole.jpg'),
                                      backgroundColor: Colors.transparent,
                                    ),
                                    SizedBox(width: screenSize.width * 0.02),
                                    Padding(
                                      padding: EdgeInsets.all(
                                          screenSize.width * 0.01),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Tharindu Molagoda",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18.5,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          const Text(
                                            "P.Tharindu",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 208, 207, 207),
                                                fontSize: 14,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                                left: screenSize.width * 0.39),
                                            child: const Text(
                                              "crew 12",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w400),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: screenSize.width * 0.02),
                          Container(
                            height: screenSize.height * 0.086,
                            width: screenSize.width * 0.17,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 16, 98, 147),
                                borderRadius: BorderRadius.circular(15)),
                            padding: EdgeInsets.all(screenSize.width * 0.025),
                            child: const Icon(
                              Icons.more_horiz_rounded,
                              size: 40,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: screenSize.height * 0.02),
                      Column(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              height: screenSize.height * 0.18,
                              width: screenSize.width * 0.93,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 3, 142, 185),
                                borderRadius: BorderRadius.circular(15),
                                boxShadow: [
                                  BoxShadow(
                                    color: const Color.fromARGB(255, 52, 52, 52)
                                        .withOpacity(0.4),
                                    offset: const Offset(0, 5),
                                    blurRadius: 10,
                                    spreadRadius: 1,
                                  ),
                                ],
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.all(screenSize.width * 0.01),
                                    child: Image.asset(
                                      'assets/Doctor rushing to the patient.png',
                                      height: screenSize.height * 0.5,
                                      width: screenSize.width * 0.5,
                                    ),
                                  ),
                                  SizedBox(width: screenSize.width * 0.095),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      const Text(
                                        "New",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 40,
                                            fontWeight: FontWeight.w600),
                                      ),
                                      const Text(
                                        "Patient",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 30,
                                            fontWeight: FontWeight.w400),
                                      ),
                                      Image.asset(
                                        'assets/logo_2_half.png',
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: screenSize.height * 0.02),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: screenSize.height * 0.09,
                            width: screenSize.width * 0.67,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 3, 142, 185),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color.fromARGB(255, 52, 52, 52)
                                      .withOpacity(0.4),
                                  offset: const Offset(0, 5),
                                  blurRadius: 10,
                                  spreadRadius: 1,
                                ),
                              ],
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/Screenshot_2024-06-23_233150-transformedE 1.png",
                                      height: screenSize.height * 0.09,
                                      fit: BoxFit.cover,
                                    ),
                                    SizedBox(width: screenSize.width * 0.07),
                                    Padding(
                                      padding: EdgeInsets.all(
                                          screenSize.width * 0.01),
                                      child: const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "Successful",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 23,
                                                fontWeight: FontWeight.w700),
                                          ),
                                          Text(
                                            "Travels",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 22,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: screenSize.width * 0.02),
                          Container(
                            height: screenSize.height * 0.09,
                            width: screenSize.width * 0.25,
                            decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 3, 142, 185),
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: const Color.fromARGB(255, 52, 52, 52)
                                      .withOpacity(0.4),
                                  offset: const Offset(0, 5),
                                  blurRadius: 10,
                                  spreadRadius: 1,
                                ),
                              ],
                            ),
                            child: const Center(
                              child: Text(
                                '25',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 45,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: screenSize.height * 0.02),
                      Container(
                        height: screenSize.height * 0.25,
                        width: screenSize.width * 0.95,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 16, 98, 147),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 52, 52, 52)
                                  .withOpacity(0.4),
                              offset: const Offset(0, 5),
                              blurRadius: 10,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              'assets/img2.png',
                              height: screenSize.height * 0.2,
                              fit: BoxFit.cover,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                  "Registered hospitals",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const Text(
                                  "in our system",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.01),
                                const Text(
                                  "Patient",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                SizedBox(height: screenSize.height * 0.02),
                                SizedBox(
                                  height: screenSize.height * 0.05,
                                  width: screenSize.width * 0.4,
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                      elevation: 8,
                                      padding: EdgeInsets.all(
                                          screenSize.width * 0.025),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      backgroundColor: const Color.fromARGB(
                                          255, 3, 142, 185),
                                    ),
                                    child: Text(
                                      "See all hospitals",
                                      style: TextStyle(
                                        letterSpacing: 1.7,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: screenSize.width * 0.036,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screenSize.height * 0.02),
                      Container(
                        height: screenSize.height * 0.25,
                        width: screenSize.width * 0.95,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 16, 98, 147),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                              color: const Color.fromARGB(255, 52, 52, 52)
                                  .withOpacity(0.4),
                              offset: const Offset(0, 5),
                              blurRadius: 10,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(3.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Emergency situations ",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  const Text(
                                    "that can handle",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  SizedBox(height: screenSize.height * 0.01),
                                  const Text(
                                    "Patient",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(height: screenSize.height * 0.02),
                                  SizedBox(
                                    height: screenSize.height * 0.05,
                                    width: screenSize.width * 0.4,
                                    child: ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                        elevation: 8,
                                        padding: EdgeInsets.all(
                                            screenSize.width * 0.025),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        backgroundColor: const Color.fromARGB(
                                            255, 3, 142, 185),
                                      ),
                                      child: Text(
                                        "See all situations",
                                        style: TextStyle(
                                          letterSpacing: 1.7,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                          fontSize: screenSize.width * 0.036,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Image.asset(
                              'assets/img1.png',
                              height: screenSize.height * 0.18,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
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
                                Text(
                                  "Need Help?",
                                  style: TextStyle(
                                    fontSize: screenSize.width * 0.04,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                    letterSpacing: 0.5,
                                  ),
                                ),
                                SizedBox(width: screenSize.width * 0.02),
                                Text(
                                  "Help section",
                                  style: TextStyle(
                                    fontSize: screenSize.width * 0.04,
                                    color: const Color.fromARGB(
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

import 'package:flutter/material.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 16, 98, 147),
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: const Color.fromARGB(255, 16, 98, 147),
              child: Column(
                children: [
                  Center(
                    child: Column(
                      children: [
                       
                        Image.asset(
                          'assets/7317079 1.png',
                          width: screenSize.width * 0.7,
                          
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(
                          Icons.arrow_back_ios,
                        ),
                        iconSize: 30,
                        color: Colors.white,
                      ),
                       
                    ],
                  ),
                  Image.asset(
                          'assets/logo_2_full_white 1.png',
                          width: screenSize.width * 0.3,
                          
                        ),
                ],
              ),
            ),
            Column(
              
              children: [
                SizedBox(
                  height: screenSize.height * 0.3,
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromARGB(255, 110, 110, 110),
                          spreadRadius: 2,
                          blurRadius: 8,
                          offset: Offset(0, 5),
                        ),
                      ],
                      image: DecorationImage(
                        image: AssetImage("assets/backdrop_3.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        child: Column(
                          //mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: screenSize.height * 0.02,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8),
                              child: Column(
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                // mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: screenSize.width * 0.04),
                                    child: const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Welcome!",
                                          style: TextStyle(
                                              fontSize: 22,
                                              color: Color.fromARGB(
                                                  255, 16, 98, 147),
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 1),
                                        ),
                                        Text(
                                          "Swift. Reliable. Lifesaving.",
                                          style: TextStyle(
                                              fontSize: 23,
                                              color: Color.fromARGB(
                                                  255, 16, 98, 147),
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.5),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: screenSize.height * 0.02,
                                  ),
                                  Container(
                                    height: 1.5,
                                    width: screenSize.width * 0.95,
                                    color:
                                        const Color.fromARGB(255, 16, 98, 147),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.all(screenSize.width * 0.03),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          height: screenSize.height * 0.025,
                                        ),
                                        const Text(
                                          "About us",
                                          style: TextStyle(
                                              fontSize: 22,
                                              color: Color.fromARGB(
                                                  255, 16, 98, 147),
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 1),
                                        ),
                                        const Text(
                                          "Welcome to RescueMed, your trusted partner in emergency medical services. Our mission is to provide swift, reliable, and efficient ambulance services at the touch of a button, ensuring that help is always just a tap away.",
                                          style: TextStyle(
                                              fontSize: 17,
                                              color: Colors.black,
                                              fontWeight: FontWeight.w400,
                                              letterSpacing: 1),
                                        ),
                                        SizedBox(
                                          height: screenSize.height * 0.025,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              "Who We Are",
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  color: Color.fromARGB(
                                                      255, 16, 98, 147),
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing: 1),
                                            ),
                                            SizedBox(
                                              height: screenSize.height * 0.015,
                                            ),
                                            const Text(
                                              "RescueMed is a cutting-edge mobile application designed to revolutionize the way emergency medical services are accessed. Our team consists of healthcare professionals, technology experts, and dedicated support staff who are committed to delivering the highest standard of care and assistance in critical moments.",
                                              style: TextStyle(
                                                  fontSize: 18,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: 1),
                                            ),
                                            SizedBox(
                                              height: screenSize.height * 0.025,
                                            ),
                                            const Text(
                                              "What We Do",
                                              style: TextStyle(
                                                  fontSize: 22,
                                                  color: Color.fromARGB(
                                                      255, 16, 98, 147),
                                                  fontWeight: FontWeight.w600,
                                                  letterSpacing: 1),
                                            ),
                                            SizedBox(
                                              height: screenSize.height * 0.015,
                                            ),
                                            Column(
                                              children: [
                                                const Text(
                                                  "In emergencies, every second counts. RescueMed connects you instantly with the nearest available ambulance, providing real-time tracking and communication to ensure that help arrives as quickly as possible. Our services include:",
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      letterSpacing: 1),
                                                ),
                                                SizedBox(
                                                  height:
                                                      screenSize.height * 0.02,
                                                ),
                                                const Text(
                                                  "+ 24/7 Availability: We are always ready to respond, no matter the time or place.",
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      letterSpacing: 1),
                                                ),
                                                SizedBox(
                                                  height:
                                                      screenSize.height * 0.008,
                                                ),
                                                const Text(
                                                  "+ GPS Tracking: Monitor the ambulance's location in real-time to stay informed about its arrival.",
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      letterSpacing: 1),
                                                ),
                                                SizedBox(
                                                  height:
                                                      screenSize.height * 0.008,
                                                ),
                                                const Text(
                                                  "+ Medical Support: Our network includes highly trained paramedics and medical professionals.",
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      letterSpacing: 1),
                                                ),
                                                SizedBox(
                                                  height:
                                                      screenSize.height * 0.008,
                                                ),
                                                const Text(
                                                  "+ Comprehensive Care: From accident scenes to hospital transfers, we handle all types of emergency situations.",
                                                  style: TextStyle(
                                                      fontSize: 17,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      letterSpacing: 1),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: screenSize.height * 0.025,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: screenSize.height * 0.025,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.all(screenSize.width * 0.03),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          width: screenSize.width * 0.86,
                                          child: const Text(
                                            "Thank you for choosing RecueMed. We are here for you when you need us most.",
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.black,
                                                fontWeight: FontWeight.w500,
                                                letterSpacing: 1),
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 3,
                                            textAlign: TextAlign.center,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: screenSize.height * 0.025,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.all(screenSize.width * 0.03),
                                    child: Column(
                                      children: [
                                        Column(
                                          children: [
                                            const Text(
                                              "Contact us for more information's,",
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  color: Color.fromARGB(
                                                      255, 16, 98, 147),
                                                  fontWeight: FontWeight.w500,
                                                  letterSpacing: 1),
                                            ),
                                            Column(
                                              children: [
                                                Padding(
                                                  padding: EdgeInsets.only(
                                                      left: screenSize.width *
                                                          0.25,
                                                      top: screenSize.height *
                                                          0.008),
                                                  child: Row(
                                                    children: [
                                                      const Icon(
                                                        Icons.phone,
                                                        color: Color.fromARGB(
                                                            255, 16, 98, 147),
                                                        size: 20,
                                                      ),
                                                      SizedBox(
                                                          width:
                                                              screenSize.width *
                                                                  0.015),
                                                      const Text(
                                                        "0223-455653",
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                            letterSpacing: 1),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: screenSize.height * 0.05,
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  'assets/logo_2.png',
                                  width: screenSize.width * 0.4,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: screenSize.height * 0.1,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:rescue_med_ambulance/Models/emergency.dart';

class EmergencyDetails extends StatefulWidget {
  const EmergencyDetails({
    super.key,
    required this.dummydata2,
  });

  final Emergency dummydata2;

  @override
  State<EmergencyDetails> createState() => _EmergencyDetailsState();
}

class _EmergencyDetailsState extends State<EmergencyDetails> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              color: const Color.fromARGB(255, 16, 98, 147),
              child: Column(
                children: [
                  Image.asset(
                    widget.dummydata2.imagePath,
                    width: double.infinity,
                    //alignment: Alignment.topCenter,
                  ),
                  Text(
                    widget.dummydata2.name,
                    style: const TextStyle(
                        fontSize: 23,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.arrow_back_ios,
                    ),
                    iconSize: 30,
                    color: Colors.white,
                  ),
                  Image.asset(
                    'assets/logo_2_full_white 1.png',
                    width: screenSize.width * 0.3,
                  ),
                ],
              ),
            ),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenSize.height * 0.4,
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
                      color: Colors.white,
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
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Hey,",
                                          style: TextStyle(
                                              fontSize: 25,
                                              color: Color.fromARGB(
                                                  255, 16, 98, 147),
                                              fontWeight: FontWeight.w500,
                                              letterSpacing: 1),
                                        ),
                                        Text(
                                          "What to do in an emergency delivery situation,",
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
                                          height: screenSize.height * 0.015,
                                        ),
                                        Text(
                                          widget.dummydata2.about,
                                          style: const TextStyle(
                                              fontSize: 15,
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
                                              "Immediately after the baby comes,follow these steps:",
                                              style: TextStyle(
                                                  fontSize: 21,
                                                  color: Color.fromARGB(
                                                      255, 16, 98, 147),
                                                  fontWeight: FontWeight.w500,
                                                  letterSpacing: 1),
                                            ),
                                            SizedBox(
                                              height: screenSize.height * 0.015,
                                            ),
                                            Text(
                                              widget.dummydata2.about,
                                              style: const TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: 1),
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: screenSize.height * 0.025,
                                        ),
                                        GestureDetector(
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: <Widget>[
                                              IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                    Icons.search_rounded),
                                                iconSize: 20,
                                                color: const Color.fromARGB(
                                                    255, 16, 98, 147),
                                              ),
                                              // SizedBox(
                                              //     width: screenSize.width * 0.01),
                                              const Text(
                                                "Visit Page",
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Color.fromARGB(
                                                      255, 16, 98, 147),
                                                  fontWeight: FontWeight.w600,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
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

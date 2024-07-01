import 'package:flutter/material.dart';
import 'package:rescue_med_ambulance/Models/hospitals.dart';

class HospitalDetails extends StatefulWidget {
  const HospitalDetails({
    super.key,
    required this.dummydata,
  });

  final Hospital dummydata;

  @override
  State<HospitalDetails> createState() => _HospitalDetailsState();
}

class _HospitalDetailsState extends State<HospitalDetails> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 16, 98, 147),
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              widget.dummydata.imagePath,
              width: double.infinity,
              alignment: Alignment.topCenter,
              fit: BoxFit.cover,
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
                    'assets/logo_2.png',
                    width: screenSize.width * 0.25,
                  ),
                ],
              ),
            ),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: screenSize.height * 0.38,
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
                            Column(
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              // mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  widget.dummydata.name,
                                  style: const TextStyle(
                                      fontSize: 23,
                                      color: Color.fromARGB(255, 16, 98, 147),
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      'assets/🦆 icon _google maps_.png',
                                      width: screenSize.width * 0.1,
                                    ),
                                    Text(
                                      widget.dummydata.address,
                                      style: const TextStyle(
                                          fontSize: 15,
                                          color:
                                              Color.fromARGB(255, 16, 98, 147),
                                          fontWeight: FontWeight.w400,
                                          letterSpacing: 1),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: screenSize.height * 0.015,
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.all(screenSize.width * 0.03),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          const Icon(
                                            Icons.phone,
                                            color: Color.fromARGB(
                                                255, 16, 98, 147),
                                            size: 20,
                                          ),
                                          SizedBox(
                                              width: screenSize.width * 0.015),
                                          Text(
                                            widget.dummydata.tel,
                                            style: const TextStyle(
                                                fontSize: 15,
                                                color: Color.fromARGB(
                                                    255, 16, 98, 147),
                                                fontWeight: FontWeight.w500,
                                                letterSpacing: 1),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Image.asset(
                                            widget.dummydata.type,
                                          ),
                                          SizedBox(
                                              width: screenSize.width * 0.015),
                                          const Text(
                                            "(Reviews)",
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  height: 1.5,
                                  width: screenSize.width * 0.95,
                                  color: const Color.fromARGB(255, 16, 98, 147),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.all(screenSize.width * 0.03),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Overview",
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
                                        widget.dummydata.about,
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
                                            "Surgery Information",
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
                                            widget.dummydata.directions,
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
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "Clinics",
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
                                            widget.dummydata.clinics,
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

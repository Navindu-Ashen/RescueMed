import 'package:flutter/material.dart';
import 'package:rescue_med_ambulance/Data/hospitals.dart';
import 'package:rescue_med_ambulance/Models/hospitals.dart';
import 'package:rescue_med_ambulance/Screens/hospital_details.dart';

class HospitalsList extends StatefulWidget {
  const HospitalsList({super.key});

  @override
  State<HospitalsList> createState() => _HospitalsListState();
}

class _HospitalsListState extends State<HospitalsList> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return Container(
          width: double.infinity,
          height: screenSize.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/backdrop_3.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(
                height: screenSize.height * 0.02,
              ),
              Row(
                children: <Widget>[
                  IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.arrow_back_ios,
                    ),
                    iconSize: 30,
                    color: Colors.black,
                  ),
                ],
              ),
              Image.asset(
                'assets/logo_2.png',
                width: screenSize.width * 0.45,
              ),
              SizedBox(
                height: screenSize.height * 0.04,
              ),
              //searchbar goes here...
              Expanded(
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 3, 142, 185),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 153, 153, 153),
                        spreadRadius: 6,
                        blurRadius: 8,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: screenSize.height * 0.03,
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: hospitals.length,
                            itemBuilder: (BuildContext context, int index) {
                              Hospital dummydata = hospitals[index];
                              return Stack(
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(15, 10, 5, 0),
                                    height: screenSize.height * 0.175,
                                    width: screenSize.width * 0.92,
                                    decoration: const BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                    ),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(
                                              screenSize.width * 0.01),
                                          child: Image.asset(
                                            dummydata.imagePath,
                                            width: screenSize.width * 0.3,
                                          ),
                                        ),
                                        // SizedBox(
                                        //     width: screenSize.width * 0.001),
                                        SizedBox(
                                          width: screenSize.width / 1.7,
                                          child: Padding(
                                            padding: const EdgeInsets.all(10.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          dummydata.name,
                                                          style: const TextStyle(
                                                              color:
                                                                  Colors.black,
                                                              fontSize: 18,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                        ),
                                                        Row(
                                                          children: [
                                                            const Icon(
                                                              Icons.location_on,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      79,
                                                                      79,
                                                                      79),
                                                              size: 15,
                                                            ),
                                                            Text(
                                                              dummydata.address,
                                                              style: const TextStyle(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          79,
                                                                          79,
                                                                          79),
                                                                  fontSize: 15,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700),
                                                            ),
                                                          ],
                                                        ),
                                                        SizedBox(
                                                          height: screenSize
                                                                  .height *
                                                              0.01,
                                                        ),
                                                        Row(
                                                          children: [
                                                            Image.asset(
                                                                dummydata.type),
                                                            SizedBox(
                                                                width: screenSize
                                                                        .width *
                                                                    0.015),
                                                            const Text(
                                                              "(Reviews)",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .black,
                                                                  fontSize: 11,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.end,
                                                  children: [
                                                    Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        SizedBox(
                                                          height: 35,
                                                          width:
                                                              screenSize.width *
                                                                  0.25,
                                                          child: ElevatedButton(
                                                            onPressed: () {
                                                              // Navigator.push(
                                                              //   context,
                                                              //   MaterialPageRoute(
                                                              //     builder:
                                                              //         (context) =>
                                                              //             const (),
                                                              //   ),
                                                              // );
                                                            },
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              elevation: 8,
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(5),
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                              ),
                                                              backgroundColor:
                                                                  const Color
                                                                      .fromARGB(
                                                                      255,
                                                                      16,
                                                                      98,
                                                                      147),
                                                            ),
                                                            child: const Text(
                                                              "Contact",
                                                              style: TextStyle(
                                                                letterSpacing:
                                                                    1,
                                                                color: Colors
                                                                    .white,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 17,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                            width: screenSize
                                                                    .width *
                                                                0.015),
                                                        SizedBox(
                                                          height: 35,
                                                          width:
                                                              screenSize.width *
                                                                  0.25,
                                                          child: ElevatedButton(
                                                            onPressed: () {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          HospitalDetails(
                                                                    dummydata:
                                                                        hospitals[
                                                                            index],
                                                                  ),
                                                                ),
                                                              );
                                                            },
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              elevation: 10,
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(5),
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            10),
                                                                side:
                                                                    const BorderSide(
                                                                  color: Color
                                                                      .fromARGB(
                                                                          255,
                                                                          16,
                                                                          98,
                                                                          147),
                                                                  width: 2,
                                                                ),
                                                              ),
                                                              backgroundColor:
                                                                  Colors.white,
                                                            ),
                                                            child: const Text(
                                                              "More",
                                                              style: TextStyle(
                                                                letterSpacing:
                                                                    1,
                                                                color: Color
                                                                    .fromARGB(
                                                                        255,
                                                                        16,
                                                                        98,
                                                                        147),
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                fontSize: 17,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}

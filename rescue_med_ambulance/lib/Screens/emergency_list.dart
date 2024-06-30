import 'package:flutter/material.dart';
import 'package:rescue_med_ambulance/Data/emergency.dart';
import 'package:rescue_med_ambulance/Models/emergency.dart';
import 'package:rescue_med_ambulance/Screens/emergency_details.dart';

class EmergencyList extends StatefulWidget {
  const EmergencyList({super.key});

  @override
  State<EmergencyList> createState() => _EmergencyListState();
}

class _EmergencyListState extends State<EmergencyList> {
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
                            itemCount: emergencies.length,
                            itemBuilder: (BuildContext context, int index) {
                              Emergency dummydata2 = emergencies[index];
                              return Stack(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                               EmergencyDetails(dummydata2: emergencies[index],),
                                        ),
                                      );
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.fromLTRB(
                                          15, 10, 5, 0),
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
                                          SizedBox(
                                              width: screenSize.width * 0.02),
                                          Container(
                                            height: screenSize.height * 0.155,
                                            decoration: const BoxDecoration(
                                              color: Color.fromARGB(
                                                  255, 16, 98, 147),
                                              borderRadius: BorderRadius.all(
                                                Radius.circular(15),
                                              ),
                                            ),
                                            child: Image.asset(
                                              dummydata2.imagePath,
                                              width: screenSize.width * 0.27,
                                            ),
                                          ),
                                          SizedBox(
                                              width: screenSize.width * 0.001),
                                          SizedBox(
                                            width: screenSize.width / 1.7,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(10.0),
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
                                                            dummydata2.name,
                                                            style: const TextStyle(
                                                                color: Colors
                                                                    .black,
                                                                fontSize: 18,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600),
                                                          ),
                                                          Row(
                                                            children: [
                                                              Container(
                                                                constraints:
                                                                    BoxConstraints(
                                                                  maxWidth:
                                                                      screenSize
                                                                              .width *
                                                                          0.5,
                                                                ),
                                                                child: Text(
                                                                  dummydata2
                                                                      .about,
                                                                  style:
                                                                      const TextStyle(
                                                                    color: Color
                                                                        .fromARGB(
                                                                            255,
                                                                            79,
                                                                            79,
                                                                            79),
                                                                    fontSize:
                                                                        13,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                                  overflow:
                                                                      TextOverflow
                                                                          .ellipsis,
                                                                  maxLines: 5,
                                                                ),
                                                              )
                                                            ],
                                                          ),
                                                          SizedBox(
                                                            height: screenSize
                                                                    .height *
                                                                0.01,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
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

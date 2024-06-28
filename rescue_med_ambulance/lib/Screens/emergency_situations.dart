import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rescue_med_ambulance/Screens/details.dart';
import 'package:rescue_med_ambulance/Widgets/Emergencies/accident.dart';
import 'package:rescue_med_ambulance/Widgets/Emergencies/heart_attack.dart';
import 'package:rescue_med_ambulance/Widgets/Emergencies/others.dart';
import 'package:rescue_med_ambulance/Widgets/Emergencies/pregnancy.dart';
import 'package:rescue_med_ambulance/Widgets/Emergencies/respiratory.dart';

class EmergencySituations extends StatefulWidget {
  const EmergencySituations({super.key});

  @override
  State<EmergencySituations> createState() => _EmergencySituationsState();
}

class _EmergencySituationsState extends State<EmergencySituations> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(body: LayoutBuilder(builder: (context, constraints) {
      return Container(
        width: double.infinity,
        height: screenSize.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/backdrop_3.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
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
                //height: screenSize.height * 0.1,
                width: screenSize.width * 0.45,
              ),
              SizedBox(
                height: screenSize.height * 0.04,
              ),
              Container(
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
                    horizontal: 20,
                  ),
                  child: Form(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: screenSize.height * 0.05),
                        const Text(
                          "Hey,",
                          style: TextStyle(
                            fontSize: 28,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            letterSpacing: 1,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        const Text(
                          "What Happened?",
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            letterSpacing: 2,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          height: 1.5,
                          width: screenSize.width * 0.9,
                          color: Colors.white,
                        ),
                        SizedBox(height: screenSize.height * 0.02),
                        const Text(
                          "Select issues and know the first aid procedure.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w400,
                            //letterSpacing: 1,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.04),
                        Container(
                          height: screenSize.height * 0.55,
                          width: screenSize.width * 0.9,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          padding: EdgeInsets.all(screenSize.width * 0.1),
                          child: Column(
                            children: [
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Pregnancy(),
                                  HeartAttack(),
                                ],
                              ),
                              SizedBox(height: screenSize.height * 0.045),
                              const Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Respiratory(),
                                  Accident(),
                                ],
                              ),
                              SizedBox(height: screenSize.height * 0.045),
                              const Others(),
                            ],
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.1),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }));
  }
}

import 'package:flutter/material.dart';
import 'package:rescue_med_ambulance/Screens/details.dart';
import 'package:rescue_med_ambulance/widgets/Emergencies/action_card.dart';
import 'package:rescue_med_ambulance/widgets/Emergencies/action_card_2.dart';

class NewPatient extends StatefulWidget {
  const NewPatient({super.key});

  @override
  State<NewPatient> createState() => _NewPatientState();
}

class _NewPatientState extends State<NewPatient> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
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
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 16,
                            top: 16,
                          ),
                          child: IconButton(
                            onPressed: () => Navigator.pop(context),
                            icon: const Icon(
                              Icons.arrow_back_ios,
                            ),
                            iconSize: 30,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/logo_2.png',
                      width: 200,
                    ),
                    const SizedBox(
                      height: 32,
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
                                height: 450,
                                width: screenSize.width * 0.9,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)),
                                padding: const EdgeInsets.all(16),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ActionCard(
                                          forwardPage: DetailsPage(),
                                          imagePath: "assets/pregnant 1.png",
                                          tite: "Pregnancy",
                                        ),
                                        ActionCard(
                                          forwardPage: DetailsPage(),
                                          imagePath: "assets/cardiogram 1.png",
                                          tite: "Cardiact",
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: screenSize.height * 0.045),
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        ActionCard(
                                          forwardPage: DetailsPage(),
                                          imagePath: "assets/oxygen 1.png",
                                          tite: "Respiratory",
                                        ),
                                        ActionCard(
                                          forwardPage: DetailsPage(),
                                          imagePath: "assets/accident 1.png",
                                          tite: "Accident",
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: screenSize.height * 0.045),
                                    const ActionCard2(
                                      forwardPage: DetailsPage(),
                                      imagePath: "assets/more.png",
                                      tite: "Other",
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 60),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileBar2 extends StatelessWidget {
  const ProfileBar2({
    super.key,
    required this.ambulanceNo,
    required this.crewNo,
  });

  final String ambulanceNo;
  final String crewNo;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: screenSize.height * 0.15,
          width: screenSize.width * 0.92,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Row(
            children: [
              SizedBox(width: screenSize.width * 0.015),
              SizedBox(
                  height: screenSize.height * 0.3,
                  width: screenSize.width * 0.3,
                  child: Image.asset("assets/50911 1.png")),
              SizedBox(width: screenSize.width * 0.001),
              SizedBox(
                width: screenSize.width / 1.7,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Save life,",
                                style: TextStyle(
                                    color:  Color.fromARGB(255, 16, 98, 147),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                ambulanceNo,
                                style: const TextStyle(
                                    color:  Color.fromARGB(255, 16, 98, 147),
                                    fontSize: 22,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                "assets/logo_2.png",
                                width: screenSize.width * 0.2,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            crewNo,
                            style: const TextStyle(
                                color:  Color.fromARGB(255, 16, 98, 147),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
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
      ],
    );
  }
}

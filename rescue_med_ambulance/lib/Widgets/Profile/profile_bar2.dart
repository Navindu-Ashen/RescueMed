import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileBar2 extends StatelessWidget {
  const ProfileBar2({
    super.key,
    required this.ambulanceNo,
    required this.crewNo,
    required this.username,
  });

  final String username;
  final String ambulanceNo;
  final String crewNo;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: screenSize.height * 0.15,
          width: screenSize.width * 0.91,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 3, 142, 185),
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            boxShadow: [
              BoxShadow(
                color: Color.fromARGB(255, 107, 107, 107),
                offset: Offset(0, 3),
                blurRadius: 10,
              ),
            ],
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
                              Text(
                                ambulanceNo,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 26,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                "assets/logo_2_full_white 1.png",
                                width: screenSize.width * 0.16,
                              ),
                            ],
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            username,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                letterSpacing: 1,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            crewNo,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
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

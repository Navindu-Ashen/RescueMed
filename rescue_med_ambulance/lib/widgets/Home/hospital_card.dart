import 'package:flutter/material.dart';
import 'package:rescue_med_ambulance/Screens/hospitals_list.dart';
import 'package:rescue_med_ambulance/Screens/registered_hospitals.dart';

class HospitalCard extends StatelessWidget {
  const HospitalCard({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: 200,
      width: screenSize.width * 0.95,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 16, 98, 147),
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 52, 52, 52).withOpacity(0.4),
            offset: const Offset(0, 5),
            blurRadius: 10,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Stack(
        children: [
          Positioned(
            left: 0,
            bottom: 0,
            child: Image.asset(
              'assets/img2.png',
              height: screenSize.height * 0.19,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            right: 8,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const Text(
                    "Registered hospitals \nin our system",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.end,
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: screenWidth / 2,
                    child: const Text(
                      "Access registered hospitals quickly and efficiently.",
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 42,
                    width: screenSize.width * 0.4,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HospitalsList(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 8,
                        padding: const EdgeInsets.all(8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        backgroundColor: const Color.fromARGB(255, 3, 142, 185),
                      ),
                      child: const Text(
                        "See all hospitals",
                        style: TextStyle(
                          letterSpacing: 1,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

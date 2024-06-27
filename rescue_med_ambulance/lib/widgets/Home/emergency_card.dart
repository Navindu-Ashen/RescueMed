import 'package:flutter/material.dart';

class EmergencyCard extends StatelessWidget {
  const EmergencyCard({super.key});

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
            right: 0,
            bottom: 0,
            child: Image.asset(
              'assets/img1.png',
              height: screenSize.height * 0.18,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 8,
            bottom: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Emergency situations \nthat can handle",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.start,
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: screenWidth / 2,
                    height: screenWidth / 8,
                    child: const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ),
                  SizedBox(height: screenSize.height * 0.01),
                  SizedBox(
                    height: screenSize.height * 0.05,
                    width: screenSize.width * 0.4,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        elevation: 8,
                        padding: EdgeInsets.all(screenSize.width * 0.025),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        backgroundColor: const Color.fromARGB(255, 3, 142, 185),
                      ),
                      child: Text(
                        "See all hospitals",
                        style: TextStyle(
                          letterSpacing: 1,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: screenSize.width * 0.04,
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

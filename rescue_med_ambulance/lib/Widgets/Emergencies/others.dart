import 'package:flutter/material.dart';
import 'package:rescue_med_ambulance/Screens/details.dart';

class Others extends StatelessWidget {
  const Others({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const DetailsPage(),
          ),
        );
      },
      child: Container(
        height: screenSize.height * 0.12,
        width: screenSize.width * 0.7,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 16, 98, 147),
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(255, 52, 52, 52).withOpacity(0.4),
              offset: const Offset(0, 5),
              blurRadius: 5,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Padding(
          padding: EdgeInsets.all(screenSize.width * 0.02),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset(
                    "assets/more.png",
                    width: screenSize.width * 0.16,
                  ),
                ],
              ),
              const Column(
                children: [
                  Text(
                    "Other",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

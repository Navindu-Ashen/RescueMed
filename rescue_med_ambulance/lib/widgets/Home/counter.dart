import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  const Counter({super.key, required this.travelCount});

  final int travelCount;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: screenSize.height * 0.09,
          width: screenSize.width * 0.67,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 3, 142, 185),
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/Screenshot_2024-06-23_233150-transformedE 1.png",
                height: 100,
                fit: BoxFit.cover,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Successful",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "Travels",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 22,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: screenSize.width * 0.02),
        Container(
          height: screenSize.height * 0.09,
          width: screenSize.width * 0.25,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 3, 142, 185),
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
          child: Center(
            child: Text(
              // ignore: unnecessary_null_comparison
              travelCount == null ? "..." : "$travelCount",
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.w600),
            ),
          ),
        ),
      ],
    );
  }
}

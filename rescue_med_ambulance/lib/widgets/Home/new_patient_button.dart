import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class NewPatientButton extends StatelessWidget {
  const NewPatientButton({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        GestureDetector(
          onTap: () {},
          child: Container(
            height: 150,
            width: screenSize.width * 0.93,
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(screenSize.width * 0.01),
                  child: Image.asset(
                    'assets/Doctor rushing to the patient.png',
                    height: screenSize.height * 0.5,
                    width: screenSize.width * 0.5,
                  ),
                ),
                SizedBox(width: screenSize.width * 0.095),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    if (screenSize.width <= 640)
                      const Text(
                        "New",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 40,
                            fontWeight: FontWeight.w600),
                      ),
                    if (screenSize.width <= 640)
                      const Text(
                        "Patient",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.w400),
                      ),
                    if (screenSize.width > 640)
                      const Row(
                        children: [
                          Text(
                            "New",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Text(
                            "Patient",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    if (screenSize.width > 640)
                      Image.asset(
                        "assets/logo_2_half.png",
                        width: 60,
                      ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

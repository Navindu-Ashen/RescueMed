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
              boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(255, 208, 226, 232),
                  offset: Offset(-0.8, -1.5),
                  blurRadius: 1,
                  spreadRadius: 2,
                ),
                BoxShadow(
                  color: Color.fromARGB(255, 60, 60, 60),
                  offset: Offset(0.8, 1.5),
                  blurRadius: 2,
                  spreadRadius: 2,
                ),
              ],
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'assets/Doctor rushing to the patient.png',
                  width: 150,
                ),
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
                    if (screenSize.width <= 640)
                      Image.asset(
                        "assets/logo_2_half.png",
                        width: 20,
                      ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ProfileBar extends StatelessWidget {
  const ProfileBar({
    super.key,
    required this.userName,
    required this.ambulanceNo,
    required this.crewNo,
    required this.imgURL,
  });

  final String userName;
  final String ambulanceNo;
  final String crewNo;
  final String imgURL;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: screenSize.height * 0.086,
          width: screenSize.width * 0.75,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 16, 98, 147),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(36),
              topRight: Radius.circular(15),
              bottomLeft: Radius.circular(36),
              bottomRight: Radius.circular(15),
            ),
          ),
          child: Row(
            children: [
              SizedBox(width: screenSize.width * 0.01),
              const CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/mole.jpg'),
                backgroundColor: Colors.transparent,
              ),
              SizedBox(width: screenSize.width * 0.02),
              SizedBox(
                width: screenSize.width / 1.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      userName,
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18.5,
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          ambulanceNo,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 208, 207, 207),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          crewNo,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: screenSize.width * 0.02),
        Container(
          height: screenSize.height * 0.086,
          width: screenSize.width * 0.17,
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 16, 98, 147),
              borderRadius: BorderRadius.circular(15)),
          child: const Center(
            child: Icon(
              Icons.more_horiz_rounded,
              size: 40,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

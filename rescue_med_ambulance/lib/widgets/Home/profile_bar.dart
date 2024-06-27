import 'package:flutter/material.dart';

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
          child: Column(
            children: [
              Row(
                children: [
                  SizedBox(width: screenSize.width * 0.01),
                  const CircleAvatar(
                    radius: 34,
                    backgroundImage: AssetImage('assets/mole.jpg'),
                    backgroundColor: Colors.transparent,
                  ),
                  SizedBox(width: screenSize.width * 0.02),
                  Padding(
                    padding: EdgeInsets.all(screenSize.width * 0.01),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          userName,
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18.5,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          ambulanceNo,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 208, 207, 207),
                              fontSize: 14,
                              fontWeight: FontWeight.w400),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: screenSize.width * 0.39),
                          child: Text(
                            crewNo,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
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
          padding: EdgeInsets.all(screenSize.width * 0.025),
          child: const Icon(
            Icons.more_horiz_rounded,
            size: 40,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

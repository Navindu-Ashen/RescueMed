import 'package:flutter/material.dart';

class ActionCard2 extends StatelessWidget {
  const ActionCard2({
    super.key,
    required this.forwardPage,
    required this.imagePath,
    required this.tite,
  });

  final Widget forwardPage;
  final String tite;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => forwardPage,
          ),
        );
      },
      child: Container(
        height: 100,
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
          padding: const EdgeInsets.all(8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Image.asset(
                    imagePath,
                    width: 50,
                  ),
                ],
              ),
              Text(
                tite,
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 1,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

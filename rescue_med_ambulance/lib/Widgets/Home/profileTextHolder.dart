import 'package:flutter/material.dart';

class ProfileTextHolder extends StatelessWidget {
  const ProfileTextHolder({
    super.key,
    required this.feildName,
    required this.username,
  });

  final String username;
  final String feildName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 111, 111, 111),
              offset: Offset(0, 3),
              blurRadius: 4,
            ),
          ],
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 10),
              child: Text(
                "$feildName :",
                style: const TextStyle(
                    color: Color.fromARGB(255, 60, 60, 60), fontSize: 14),
              ),
            ),
            Positioned(
              bottom: 8,
              right: 15,
              child: Text(
                username,
                style: const TextStyle(
                    color: Color.fromARGB(255, 16, 98, 147),
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

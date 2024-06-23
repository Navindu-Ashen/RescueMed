import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
            width: screenSize.width,
            height: screenSize.height,
            color: const Color.fromARGB(255, 146, 218, 238),
            child: SingleChildScrollView(
                child: LayoutBuilder(builder: (context, constraints) {
              return Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: screenSize.height * 0.02),
                    child: Center(
                      child: Image.asset(
                        'assets/logo_2.png',
                        height: screenSize.height * 0.1,
                        width: screenSize.width * 0.35,
                      ),
                    ),
                  ),
                ],
              );
            }))));
  }
}

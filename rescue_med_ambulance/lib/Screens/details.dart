import 'package:flutter/material.dart';
import 'package:rescue_med_ambulance/Screens/help.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

String gender = '';

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return Container(
          width: double.infinity,
          height: screenSize.height,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/backdrop_3.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: screenSize.height * 0.02,
                ),
                Row(
                  children: <Widget>[
                    IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(
                        Icons.arrow_back_ios,
                      ),
                      iconSize: 30,
                      color: Colors.black,
                    ),
                  ],
                ),
                Image.asset(
                  'assets/logo_2.png',
                  //height: screenSize.height * 0.1,
                  width: screenSize.width * 0.45,
                ),
                SizedBox(
                  height: screenSize.height * 0.04,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 3, 142, 185),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromARGB(255, 90, 90, 90),
                        spreadRadius: 6,
                        blurRadius: 8,
                        offset: Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: screenSize.height * 0.00,
                      horizontal: screenSize.width * 0.05,
                    ),
                    child: SingleChildScrollView(
                      child: Form(
                        child: Column(
                          children: [
                            SizedBox(height: screenSize.height * 0.02),
                            Text(
                              "Enter Patient",
                              style: TextStyle(
                                fontSize: screenSize.width * 0.05,
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1.5,
                              ),
                            ),
                            Text(
                              "DETAILS",
                              style: TextStyle(
                                fontSize: screenSize.width * 0.1,
                                fontWeight: FontWeight.w900,
                                color: Colors.white,
                                letterSpacing: 5,
                              ),
                            ),
                            SizedBox(height: screenSize.height * 0.002),
                            Container(
                              height: 1.5,
                              width: screenSize.width * 0.8,
                              color: Colors.white,
                            ),
                            SizedBox(height: screenSize.height * 0.03),
                            Text(
                              "Welcome to Your Trusted Care Companion!",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: screenSize.width * 0.04,
                                fontWeight: FontWeight.w500,
                                letterSpacing: 1,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(height: screenSize.height * 0.02),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: screenSize.width * 0.72,
                                  child: TextFormField(
                                    style: const TextStyle(color: Colors.black),
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        Icons.person,
                                        color:
                                            Color.fromARGB(255, 103, 103, 103),
                                      ),
                                      labelText: "Patient Name",
                                      labelStyle: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 103, 103, 103),
                                        fontWeight: FontWeight.w400,
                                      ),
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      filled: true,
                                    ),
                                  ),
                                ),
                                SizedBox(width: screenSize.width * 0.03),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: screenSize.height * 0.0655,
                                    width: screenSize.width * 0.15,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    padding:
                                        EdgeInsets.all(screenSize.width * 0.03),
                                    child: const Column(
                                      children: [
                                        Icon(
                                          Icons.voice_chat,
                                          size: 30,
                                          color: Color.fromARGB(
                                              255, 103, 103, 103),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: screenSize.height * 0.01),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: screenSize.width * 0.72,
                                  child: TextFormField(
                                    style: const TextStyle(color: Colors.black),
                                    decoration: InputDecoration(
                                      prefixIcon: const Icon(
                                        Icons.assignment,
                                        color:
                                            Color.fromARGB(255, 103, 103, 103),
                                      ),
                                      labelText: "Patient Age",
                                      labelStyle: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 103, 103, 103),
                                        fontWeight: FontWeight.w400,
                                      ),
                                      fillColor: Colors.white,
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      filled: true,
                                    ),
                                  ),
                                ),
                                SizedBox(width: screenSize.width * 0.03),
                                GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    height: screenSize.height * 0.0655,
                                    width: screenSize.width * 0.15,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    padding:
                                        EdgeInsets.all(screenSize.width * 0.03),
                                    child: const Column(
                                      children: [
                                        Icon(
                                          Icons.voice_chat,
                                          size: 30,
                                          color: Color.fromARGB(
                                              255, 103, 103, 103),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: screenSize.height * 0.01),
                            TextFormField(
                              style: const TextStyle(color: Colors.black),
                              decoration: InputDecoration(
                                prefixIcon: const Icon(
                                  Icons.water_drop_rounded,
                                  color: Color.fromARGB(255, 103, 103, 103),
                                ),
                                labelText: "Blood Group (Optional)",
                                labelStyle: const TextStyle(
                                  color: Color.fromARGB(255, 103, 103, 103),
                                  fontWeight: FontWeight.w400,
                                ),
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                filled: true,
                              ),
                            ),
                            SizedBox(height: screenSize.height * 0.01),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    print("Male");
                                    setState(() {
                                      gender = 'M';
                                    });
                                  },
                                  child: Container(
                                    height: screenSize.height * 0.0655,
                                    width: screenSize.width * 0.44,
                                    decoration: BoxDecoration(
                                        color: gender == 'M'
                                            ? const Color.fromARGB(255, 0, 0, 0)
                                            : const Color.fromARGB(
                                                255, 101, 193, 218),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    padding: EdgeInsets.all(
                                        screenSize.width * 0.025),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(
                                                width: screenSize.width * 0.05),
                                            const Icon(
                                              Icons.male,
                                              size: 35,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                                width: screenSize.width * 0.02),
                                            const Text(
                                              "Male",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: () {
                                    print("Female");
                                    setState(() {
                                      gender = 'F';
                                    });
                                  },
                                  child: Container(
                                    height: screenSize.height * 0.0655,
                                    width: screenSize.width * 0.44,
                                    decoration: BoxDecoration(
                                        color: gender == 'F'
                                            ? const Color.fromARGB(255, 0, 0, 0)
                                            : const Color.fromARGB(
                                                255, 255, 114, 114),
                                        borderRadius:
                                            BorderRadius.circular(15)),
                                    padding: EdgeInsets.all(
                                        screenSize.width * 0.025),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            SizedBox(
                                                width: screenSize.width * 0.05),
                                            const Icon(
                                              Icons.female,
                                              size: 35,
                                              color: Colors.white,
                                            ),
                                            // SizedBox(width: screenSize.width * 0.01),
                                            const Text(
                                              "Female",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: screenSize.height * 0.01),
                            Column(
                              children: [
                                Container(
                                  height: screenSize.height * 0.2,
                                  width: screenSize.width * 0.9,
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(15)),
                                  padding:
                                      EdgeInsets.all(screenSize.width * 0.15),
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: screenSize.height * 0.05,
                                        width: screenSize.width * 0.4,
                                        child: ElevatedButton(
                                          onPressed: () {},
                                          style: ElevatedButton.styleFrom(
                                            elevation: 5,
                                            padding: EdgeInsets.all(
                                                screenSize.width * 0.02),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(50),
                                            ),
                                            backgroundColor:
                                                const Color.fromARGB(
                                                    255, 3, 142, 185),
                                          ),
                                          child: Center(
                                            child: Text(
                                              "+ Add image",
                                              style: TextStyle(
                                                letterSpacing: 1.7,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize:
                                                    screenSize.width * 0.04,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: screenSize.height * 0.04),
                            SizedBox(
                              height: screenSize.height * 0.055,
                              width: screenSize.width * 0.4,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  elevation: 8,
                                  padding:
                                      EdgeInsets.all(screenSize.width * 0.025),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  backgroundColor: Colors.white,
                                ),
                                child: const Center(
                                  child: Text(
                                    "SUBMIT",
                                    style: TextStyle(
                                      letterSpacing: 1.7,
                                      color: Color.fromARGB(255, 3, 142, 185),
                                      fontWeight: FontWeight.w900,
                                      fontSize: 22,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: screenSize.height * 0.05),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const HelpPage(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "Need Help?",
                                    style: TextStyle(
                                      fontSize: screenSize.width * 0.04,
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: screenSize.height * 0.03),
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      }),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:rescue_med_ambulance/Screens/help.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

String gender = '';

class _DetailsPageState extends State<DetailsPage> {
  String? selectedBloodGroup;
  List<String> bloodGroups = [
    "A positive",
    "A negative",
    "B positive",
    "B negative",
    "AB positive",
    "AB negative",
    "O positive",
    "O negative",
  ];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(builder: (context, constraints) {
          return Container(
            width: double.infinity,
            height: screenSize.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/backdrop_3E.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const SizedBox(
                    height: 16,
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
                    width: 200,
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
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32,
                      ),
                      child: SingleChildScrollView(
                        child: Form(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(height: 8),
                              const Text(
                                "Enter Patient",
                                style: TextStyle(
                                  fontSize: 28,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1.6,
                                ),
                              ),
                              const Text(
                                "DETAILS",
                                style: TextStyle(
                                  fontSize: 40,
                                  fontWeight: FontWeight.w900,
                                  color: Colors.white,
                                  letterSpacing: 5,
                                ),
                              ),
                              const SizedBox(height: 8),
                              Container(
                                height: 1.5,
                                width: double.infinity,
                                color: Colors.white,
                              ),
                              const SizedBox(height: 16),
                              const Text(
                                "Welcome to Your Trusted Care Companion!",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(height: 16),
                              SizedBox(
                                width: double.infinity,
                                child: TextFormField(
                                  keyboardType: TextInputType.name,
                                  autocorrect: false,
                                  textCapitalization: TextCapitalization.words,
                                  style: const TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                    prefixIcon: const Icon(
                                      Icons.person,
                                      color: Color.fromARGB(255, 103, 103, 103),
                                    ),
                                    labelText: "Patient Name",
                                    labelStyle: const TextStyle(
                                      color: Color.fromARGB(255, 103, 103, 103),
                                      fontWeight: FontWeight.w400,
                                    ),
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    filled: true,
                                    suffixIcon: GestureDetector(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16),
                                        child: Icon(
                                          Icons.voice_chat,
                                          color: Color.fromARGB(
                                              255, 103, 103, 103),
                                          size: 32,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              SizedBox(
                                width: double.infinity,
                                child: TextFormField(
                                  keyboardType: TextInputType.number,
                                  style: const TextStyle(color: Colors.black),
                                  decoration: InputDecoration(
                                    prefixIcon: const Icon(
                                      Icons.assignment,
                                      color: Color.fromARGB(255, 103, 103, 103),
                                    ),
                                    labelText: "Patient Age",
                                    labelStyle: const TextStyle(
                                      color: Color.fromARGB(255, 103, 103, 103),
                                      fontWeight: FontWeight.w400,
                                    ),
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    filled: true,
                                    suffixIcon: GestureDetector(
                                      onTap: () {},
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 16),
                                        child: Icon(
                                          Icons.voice_chat,
                                          color: Color.fromARGB(
                                              255, 103, 103, 103),
                                          size: 32,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 8),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15)),
                                child: DropdownButtonFormField<String>(
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          width: 0, color: Colors.white),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(15),
                                      ),
                                    ),
                                    errorStyle: TextStyle(
                                      color: Colors.red,
                                      fontSize: 10,
                                    ),
                                  ),
                                  value: selectedBloodGroup,
                                  dropdownColor:
                                      const Color.fromARGB(255, 255, 255, 255),
                                  borderRadius: BorderRadius.circular(15),
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      selectedBloodGroup = newValue;
                                    });
                                  },
                                  items: bloodGroups
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Row(
                                        children: [
                                          const Icon(
                                            Icons.bloodtype_rounded,
                                            color: Color.fromARGB(
                                                255, 103, 103, 103),
                                          ),
                                          const SizedBox(
                                            width: 16,
                                          ),
                                          Text(
                                            value,
                                            style: const TextStyle(
                                              fontSize: 16,
                                              color:
                                                  Color.fromARGB(255, 0, 0, 0),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  }).toList(),
                                  hint: const Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 8),
                                    child: Text(
                                      "Select blood group",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color:
                                            Color.fromARGB(255, 172, 172, 172),
                                      ),
                                    ),
                                  ),
                                  onSaved: (value) {
                                    selectedBloodGroup = value;
                                  },
                                  validator: (value) {
                                    if (selectedBloodGroup == null) {
                                      return "  Select blood group";
                                    }
                                    return null;
                                  },
                                ),
                              ),
                              const SizedBox(height: 8),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          gender = 'M';
                                        });
                                      },
                                      child: Container(
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color: gender == 'M'
                                                ? const Color.fromARGB(
                                                    255, 0, 0, 0)
                                                : const Color.fromARGB(
                                                    255, 101, 193, 218),
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.male,
                                              size: 30,
                                              color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: 8,
                                            ),
                                            Text(
                                              "Male",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                    child: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          gender = 'F';
                                        });
                                      },
                                      child: Container(
                                        height: 50,
                                        decoration: BoxDecoration(
                                            color: gender == 'F'
                                                ? const Color.fromARGB(
                                                    255, 0, 0, 0)
                                                : const Color.fromARGB(
                                                    255, 255, 114, 114),
                                            borderRadius:
                                                BorderRadius.circular(15)),
                                        child: const Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Icon(
                                              Icons.female,
                                              size: 35,
                                              color: Colors.white,
                                            ),
                                            SizedBox(width: 8),
                                            Text(
                                              "Female",
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Center(
                                          child: IconButton(
                                        color: const Color.fromARGB(
                                            255, 255, 255, 255),
                                        style: IconButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(
                                              255, 3, 142, 185),
                                        ),
                                        icon: const Icon(
                                          Icons.photo_filter_outlined,
                                        ),
                                        onPressed: () {},
                                      )),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8,
                                  ),
                                  Expanded(
                                    child: Container(
                                      height: 100,
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Center(
                                          child: IconButton(
                                        color: const Color.fromARGB(
                                            255, 255, 255, 255),
                                        style: IconButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(
                                              255, 3, 142, 185),
                                        ),
                                        icon: const Icon(
                                          Icons.photo_filter_outlined,
                                        ),
                                        onPressed: () {},
                                      )),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 32),
                              SizedBox(
                                height: 50,
                                width: 150,
                                child: ElevatedButton(
                                  onPressed: () {},
                                  style: ElevatedButton.styleFrom(
                                    elevation: 8,
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
                              const SizedBox(height: 32),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const HelpPage(),
                                        ),
                                      );
                                    },
                                    child: const Text(
                                      "Need Help?",
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.5,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(height: 16),
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
      ),
    );
  }
}

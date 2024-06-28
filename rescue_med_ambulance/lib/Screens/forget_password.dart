import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:rescue_med_ambulance/Screens/login.dart';

class ForgetPasswordPage extends StatefulWidget {
  const ForgetPasswordPage({super.key});

  @override
  State<ForgetPasswordPage> createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  final _resetPasswordForm = GlobalKey<FormState>();
  var enteredEmail = "";
  bool isSendingEmail = false;

  Future resetPassword(double width, double height) async {
    final isValid = _resetPasswordForm.currentState!.validate();
    if (!isValid) {
      return;
    }
    _resetPasswordForm.currentState!.save();
    FocusScope.of(context).unfocus();

    setState(() {
      isSendingEmail = true;
    });
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: enteredEmail);
      showMsg(
        width,
        height,
        "Password reset link has been sent to your email.",
        "Check your email for reset password.",
      );
    } on FirebaseAuthException catch (e) {
      showMsg(
        width,
        height,
        e.message.toString(),
        "Sorry try again!",
      );
    }
    setState(() {
      isSendingEmail = false;
    });
  }

  void showMsg(
    double width,
    double height,
    String messageTitle,
    String messageData,
  ) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          backgroundColor: Colors.white,
          title: Text(
            messageTitle,
            style: const TextStyle(
              color: Color.fromARGB(255, 16, 98, 147),
              fontWeight: FontWeight.bold,
              fontSize: 20.5,
              letterSpacing: 0.5,
            ),
            textAlign: TextAlign.center,
          ),
          content: Text(
            messageData,
            style: const TextStyle(
              color: Color.fromARGB(255, 16, 98, 147),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          actions: [
            Center(
              child: SizedBox(
                height: height,
                width: width,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 16, 98, 147),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text(
                    "Done",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(body: LayoutBuilder(builder: (context, constraints) {
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
                height: screenSize.height * 0.06,
              ),
              Image.asset(
                'assets/logo_1.png',
                height: screenSize.height * 0.1,
                width: screenSize.width * 0.3,
              ),
              SizedBox(
                height: screenSize.height * 0.02,
              ),
              Image.asset(
                'assets/Screenshot_2024-06-24_211645-transformedE 1.png',
                height: screenSize.width * 0.5,
              ),
              SizedBox(
                height: screenSize.height * 0.02,
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
                      color: Color.fromARGB(255, 153, 153, 153),
                      spreadRadius: 6,
                      blurRadius: 8,
                      offset: Offset(0, 5),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Form(
                    key: _resetPasswordForm,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(height: 8),
                        const Text(
                          "Reset Your",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1.5,
                          ),
                        ),
                        const Text(
                          "PASSWORD",
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.w900,
                            color: Colors.white,
                            letterSpacing: 5,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Container(
                          height: 1.5,
                          width: screenSize.width * 0.8,
                          color: Colors.white,
                        ),
                        SizedBox(height: screenSize.height * 0.02),
                        const Text(
                          "Please enter your email to get a password reset link",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 19,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.04),
                        TextFormField(
                          style: const TextStyle(color: Colors.black),
                          keyboardType: TextInputType.emailAddress,
                          textCapitalization: TextCapitalization.none,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.email_outlined,
                              color: Color.fromARGB(255, 103, 103, 103),
                            ),
                            labelText: "Enter Email Address",
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
                          onSaved: (value) {
                            enteredEmail = value!;
                          },
                          validator: (value) {
                            if (value == null ||
                                value.trim().isEmpty ||
                                !value.trim().contains("@")) {
                              return "Enter a valid email address";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: screenSize.height * 0.05),
                        if (!isSendingEmail)
                          SizedBox(
                            height: screenSize.height * 0.065,
                            width: screenSize.width * 0.5,
                            child: ElevatedButton(
                              onPressed: () {
                                resetPassword(screenSize.width * 0.25,
                                    screenSize.height * 0.045);
                              },
                              style: ElevatedButton.styleFrom(
                                elevation: 8,
                                padding: const EdgeInsets.all(8),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                backgroundColor: Colors.white,
                              ),
                              child: const Center(
                                child: Text(
                                  "SEND LINK",
                                  style: TextStyle(
                                    letterSpacing: 1.7,
                                    color: Color.fromARGB(255, 3, 142, 185),
                                    fontWeight: FontWeight.w800,
                                    fontSize: 24,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        if (isSendingEmail)
                          SizedBox(
                            height: screenSize.height * 0.065,
                            width: screenSize.width * 0.5,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                elevation: 8,
                                padding:
                                    EdgeInsets.all(screenSize.width * 0.03),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                backgroundColor: Colors.white,
                              ),
                              child: const SizedBox(
                                width: 20,
                                height: 20,
                                child: Center(
                                    child: CircularProgressIndicator(
                                  color: Color.fromARGB(255, 3, 142, 185),
                                )),
                              ),
                            ),
                          ),
                        SizedBox(height: screenSize.height * 0.06),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const LoginPage()),
                                );
                              },
                              child: const Text(
                                "Try another way ?",
                                style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 0.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenSize.height * 0.06),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }));
  }
}

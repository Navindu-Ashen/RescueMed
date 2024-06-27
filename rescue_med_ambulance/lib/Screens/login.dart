import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

final _firebase = FirebaseAuth.instance;

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _loginForm = GlobalKey<FormState>();
  bool isAuthenticating = false;
  bool isObsecured = true;
  var enteredEmail = "";
  var enteredPassword = "";

  void submit() async {
    final isValid = _loginForm.currentState!.validate();
    if (!isValid) {
      return;
    }

    setState(() {
      isAuthenticating = true;
    });

    FocusScope.of(context).unfocus();
    _loginForm.currentState!.save();

    try {
      await _firebase.signInWithEmailAndPassword(
          email: enteredEmail, password: enteredPassword);
    } on FirebaseAuthException catch (error) {
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).clearSnackBars();
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(error.message ?? "Signup faild"),
        ),
      );
      setState(() {
        isAuthenticating = false;
      });
      return;
    }
    setState(() {
      isAuthenticating = false;
    });
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
              Image.asset(
                'assets/login_main.png',
                height: screenSize.width * 0.5,
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
                    key: _loginForm,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(height: 8),
                        const Text(
                          "Welcome Back!",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                          ),
                        ),
                        const Text(
                          "LOGIN",
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
                          "Lorem ipsum dolor sit amet,",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            letterSpacing: 1,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: screenSize.height * 0.02),
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
                                !value.contains("@")) {
                              return "Enter a valid email address";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: screenSize.height * 0.01),
                        TextFormField(
                          style: const TextStyle(color: Colors.black),
                          obscureText: isObsecured,
                          decoration: InputDecoration(
                            prefixIcon: const Icon(
                              Icons.lock,
                              color: Color.fromARGB(255, 103, 103, 103),
                            ),
                            suffixIcon: GestureDetector(
                              onTap: () => setState(() {
                                isObsecured = !isObsecured;
                              }),
                              child: Icon(
                                isObsecured
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                size: 18,
                                color: Colors.grey,
                              ),
                            ),
                            labelText: "Enter Password",
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
                            enteredPassword = value!;
                          },
                          validator: (value) {
                            if (value == null || value.trim().isEmpty) {
                              return "Enter a valid password";
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: screenSize.height * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: const Text(
                                "Forgot Password?",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  decoration: TextDecoration.none,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: screenSize.height * 0.02),
                        if (!isAuthenticating)
                          SizedBox(
                            height: screenSize.height * 0.065,
                            width: screenSize.width * 0.5,
                            child: ElevatedButton(
                              onPressed: submit,
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
                                  "LOGIN",
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
                        if (isAuthenticating)
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
                        SizedBox(height: screenSize.height * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: const Text(
                                "Want to be a part of us?",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
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
              )
            ],
          ),
        ),
      );
    }));
  }
}

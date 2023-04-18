import 'package:firebase_app/auth_controller.dart';
import 'package:firebase_app/login_page.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    var confirmpasswordController = TextEditingController();

    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
        width: w,
        height: h * 4,
        decoration: const BoxDecoration(
            image: DecorationImage(image: AssetImage("img/login.png"))),
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 25, right: 25),
                    width: w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: h * .18,
                        ),
                        const Text(
                          "Sign Up As ",
                          style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        const Text(
                          "Donor",
                          style: TextStyle(
                              fontSize: 35,
                              color: Colors.white60,
                              fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Color.fromARGB(255, 231, 245, 251),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Username",
                                  prefixIcon: Icon(
                                    Icons.supervised_user_circle_rounded,
                                    color: Color.fromARGB(255, 240, 206, 38),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 231, 245, 251),
                                          width: 1.0)),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 231, 245, 251),
                                          width: 1.0)))),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 231, 245, 251),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                  hintText: "Email id",
                                  prefixIcon: Icon(
                                    Icons.email,
                                    color: Color.fromARGB(255, 240, 206, 38),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 231, 245, 251),
                                          width: 1.0)),
                                  enabledBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(30),
                                    borderSide: BorderSide(
                                        color:
                                            Color.fromARGB(255, 231, 245, 251),
                                        width: 1.0),
                                  ),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30))),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 231, 245, 251),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: "Phone Number",
                                  prefixIcon: Icon(
                                    Icons.phone,
                                    color: Color.fromARGB(255, 240, 206, 38),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 231, 245, 251),
                                          width: 1.0)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 231, 245, 251),
                                          width: 1.0),
                                      borderRadius: BorderRadius.circular(30))),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 231, 245, 251),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: " address",
                                  prefixIcon: Icon(
                                    Icons.home,
                                    color: Color.fromARGB(255, 240, 206, 38),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 246, 226, 226),
                                          width: 1.0)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 231, 245, 251),
                                          width: 1.0),
                                      borderRadius: BorderRadius.circular(30))),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 231, 245, 251),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: " Pincode",
                                  prefixIcon: Icon(
                                    Icons.pin,
                                    color: Color.fromARGB(255, 240, 206, 38),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 246, 226, 226),
                                          width: 1.0)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 231, 245, 251),
                                          width: 1.0),
                                      borderRadius: BorderRadius.circular(30))),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 231, 245, 251),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: TextField(
                              controller: passwordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: "Password",
                                  prefixIcon: Icon(
                                    Icons.password,
                                    color: Color.fromARGB(255, 240, 206, 38),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 246, 226, 226),
                                          width: 1.0)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 231, 245, 251),
                                          width: 1.0),
                                      borderRadius: BorderRadius.circular(30))),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 231, 245, 251),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: TextField(
                              controller: confirmpasswordController,
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: "Confirm Password",
                                  prefixIcon: Icon(
                                    Icons.password,
                                    color: Color.fromARGB(255, 240, 206, 38),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(30),
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 246, 226, 226),
                                          width: 1.0)),
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(
                                              255, 231, 245, 251),
                                          width: 1.0),
                                      borderRadius: BorderRadius.circular(30))),
                            )),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  GestureDetector(
                    onTap: () {
                      AuthController.instance.register(
                          emailController.text.trim(),
                          passwordController.text.trim(),
                          confirmpasswordController.text.trim());
                    },
                    child: Container(
                        width: 300,
                        height: 70,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                                image: AssetImage("img/loginbtn.png"),
                                fit: BoxFit.cover)),
                        child: Center(
                          child: Text("Signup",
                              style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        )),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  RichText(
                      text: TextSpan(
                          text: "Already have an account?",
                          style: TextStyle(color: Colors.grey, fontSize: 16),
                          children: [
                        TextSpan(
                            text: " Login",
                            style: TextStyle(
                                color: Color.fromARGB(255, 72, 71, 71),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                            recognizer: new TapGestureRecognizer()
                              ..onTap = () => {Get.to(() => LoginPage())})
                      ]))
                ],
              ),
            )));
  }
}

import 'package:firebase_app/auth_controller.dart';
import 'package:firebase_app/signup_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'login_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp().then((Value) => Get.put(AuthController()));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Container(
              width: w,
              height: h * 0.757,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('img/img2.jpg'), fit: BoxFit.cover),
              )),
          Container(
            decoration:
                BoxDecoration(color: Color.fromARGB(255, 238, 246, 250)),
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    child: Center(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (ctx) {
                                return LoginPage();
                              },
                            ),
                          );
                        },
                        child: Container(
                            width: 200,
                            height: 60,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: const DecorationImage(
                                    image: AssetImage("img/loginbtn.png"),
                                    fit: BoxFit.cover)),
                            child: const Center(
                              child: Text("Login",
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white)),
                            )),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 75,
                    child: Center(
                      child: TextButton(
                          onPressed: () {
                            showDialog(
                                context: context,
                                builder: (context) => SimpleDialog(
                                      title: const Text('Sign up as a'),
                                      children: <Widget>[
                                        SimpleDialogOption(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 24, vertical: 20),
                                          onPressed: () {
                                            Navigator.of(context).push(
                                              MaterialPageRoute(builder: (ctx) {
                                                return SignupPage();
                                              }),
                                            );
                                          },
                                          child: Text(
                                            'Donor',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ),
                                        SimpleDialogOption(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 24, vertical: 20),
                                          onPressed: () {
                                            Navigator.of(context).push(
                                              MaterialPageRoute(builder: (ctx) {
                                                return SignupPage();
                                              }),
                                            );
                                          },
                                          child: Text(
                                            'Reciever',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ),
                                      ],
                                    ));
                          },
                          child: Container(
                              width: 200,
                              height: 75,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: const DecorationImage(
                                      image: AssetImage("img/loginbtn.png"),
                                      fit: BoxFit.cover)),
                              child: const Center(
                                child: Text("Sign up",
                                    style: TextStyle(
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ))),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

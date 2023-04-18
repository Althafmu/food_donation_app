import 'package:firebase_app/add_post.dart';
import 'package:firebase_app/auth_controller.dart';
import 'package:flutter/material.dart';

class welcomepage extends StatelessWidget {
  String email;
  welcomepage({Key? key, required this.email}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Container(
        width: w,
        height: h * .1,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("img/login.png"), fit: BoxFit.cover)),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 150,
                ),
                Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    width: w,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "WELCOME",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 70,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Food Donation App",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey,
                              fontWeight: FontWeight.normal),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 80,
                ),
                Text(
                  email,
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 26, 25, 25)),
                ),
                SizedBox(
                  height: 200,
                ),
                FloatingActionButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (ctx) {
                          return addpost();
                        }),
                      );
                    },
                    child: Icon(Icons.add)),
                SizedBox(
                  height: 200,
                ),
                GestureDetector(
                  onTap: () {
                    AuthController.instance.logout();
                  },
                  child: Container(
                      width: 200,
                      height: 70,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                              image: AssetImage("img/loginbtn.png"),
                              fit: BoxFit.cover)),
                      child: Center(
                        child: Text("Sign out",
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                                color: Colors.white)),
                      )),
                ),
              ],
            ),
          ),
        ));
  }
}

import 'package:firebase_app/welcome.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class addpost extends StatefulWidget {
  const addpost({super.key});

  @override
  State<addpost> createState() => _addpostState();
}

class _addpostState extends State<addpost> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
        body: SingleChildScrollView(
            child: Column(children: [
      Container(
          margin: const EdgeInsets.only(left: 25, right: 25),
          width: w,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(
              height: h * .18,
            ),
            const Text(
              "ADD DONATION ",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const Text(
              "Enter food Details",
              style: TextStyle(
                  fontSize: 30,
                  color: Colors.black54,
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
                      hintText: "name of food",
                      prefixIcon: Icon(
                        Icons.food_bank_outlined,
                        color: Color.fromARGB(255, 240, 206, 38),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 231, 245, 251),
                              width: 1.0)),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 231, 245, 251),
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
                  decoration: InputDecoration(
                      hintText: "Quantity",
                      prefixIcon: Icon(
                        Icons.production_quantity_limits,
                        color: Color.fromARGB(255, 240, 206, 38),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 231, 245, 251),
                              width: 1.0)),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 231, 245, 251),
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
                      hintText: "Drop point",
                      prefixIcon: Icon(
                        Icons.pin_drop,
                        color: Color.fromARGB(255, 240, 206, 38),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 231, 245, 251),
                              width: 1.0)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 231, 245, 251),
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
                      hintText: "phone No",
                      prefixIcon: Icon(
                        Icons.phone,
                        color: Color.fromARGB(255, 240, 206, 38),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 231, 245, 251),
                              width: 1.0)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(255, 231, 245, 251),
                              width: 1.0),
                          borderRadius: BorderRadius.circular(30))),
                )),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () => {},
              child: Container(
                  width: 200,
                  height: 70,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: AssetImage("img/loginbtn.png"),
                          fit: BoxFit.cover)),
                  child: Center(
                    child: Text("Post",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                  )),
            ),
          ]))
    ])));
  }
}

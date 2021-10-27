// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Page.dart';
import 'package:flutter_application_1/components/buttons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.only(left: 10, top: 30),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Icon(
                    Icons.menu,
                  ),
                  // ignore: deprecated_member_use
                  FlatButton(
                      onPressed: () {},
                      child: Container(
                          width: 47,
                          height: 47,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(26),
                              gradient: LinearGradient(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  colors: [
                                    Color(0xffF68989),
                                    Color(0xffFE5150)
                                  ])),
                          child: Icon(
                            Icons.search,
                            color: Colors.white,
                          )))
                ]),
            Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Text('Hi Gabriel',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: Color(0xffEB5757)))),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Text('Find your Delicious Food',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 21,
                      color: Color(0xff4F4F4F))),
            ),
            SizedBox(height: 27),
            Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Foods(img: 'assets/FoodType.png', text: 'Fast Food'),
                  Foods(img: 'assets/FoodType1.png', text: 'Italian'),
                  Foods(img: 'assets/FoodType3.png', text: 'Japanese'),
                  Foods(img: 'assets/FoodType3.png', text: 'Sea Food'),
                ]),
            Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 20, top: 30),
                      child: Text(
                        'Popular',
                        style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 21,
                            color: Color(0xff4F4F4F)),
                      ))
                ]),
            SingleChildScrollView(
                child: Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                  Foods2(img: 'assets/pizza.png'),
                  Foods2(img: 'assets/pizza1.png')
                ])),
            Button2(),
          ])),
    );
  }
}

class Foods extends StatelessWidget {
  final String img;
  final String text;
  const Foods({
    Key? key,
    required this.img,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 15,
        ),
        InkWell(
            onTap: () {},
            child: Column(
              children: [Image.asset(img), Text(text)],
            ))
      ],
    );
  }
}

class Foods2 extends StatelessWidget {
  final String img;

  const Foods2({
    Key? key,
    required this.img,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      SizedBox(width: 15),
      InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Itens()));
          },
          child: Image.asset(img)),
    ]);
  }
}

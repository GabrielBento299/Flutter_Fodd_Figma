// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/buttons.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Color(0xffF68989),
            Color(0xffFE5150),
          ])),
          child: Stack(children: [
            Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Image.asset('assets/foto.png', width: 450, height: 420)),
            Center(
                child: Padding(
                    padding: const EdgeInsets.only(top: 405),
                    child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(26)),
                        elevation: 15,
                        child: Container(
                            alignment: Alignment.center,
                            width: 334,
                            height: 235,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 31,
                                ),
                                Text(
                                  'Quick Delivery at \n your Doorstep',
                                  style: TextStyle(
                                      fontSize: 31,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff4F4F4F)),
                                ),
                                SizedBox(
                                  height: 11,
                                ),
                                Text(
                                    'Home delivery and onlione reservation \n system for retaurants and cafe',
                                    style: TextStyle(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xffBDBDBD))),
                                SizedBox(
                                  height: 12,
                                ),
                                Buttons(),
                              ],
                            )))))
          ])),
    );
  }
}

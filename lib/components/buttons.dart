// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Page.dart';
import 'package:flutter_application_1/home_page.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    return Container(
        decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.white,
                offset: Offset(1.0, 6.0),
                blurRadius: 0.25,
              )
            ],
            borderRadius: BorderRadius.circular(40),
            gradient:
                LinearGradient(colors: [Color(0xffF68989), Color(0xffFE5150)])),
        // ignore: deprecated_member_use
        child: FlatButton(
          height: 68,
          minWidth: 210,
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          textColor: Colors.white,
          child: Text('Get Started',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
        ));
  }
}

class Button2 extends StatelessWidget {
  const Button2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: OutlinedButton(
        onPressed: () {},
        child: Text(
          'Menu',
          style: TextStyle(
            color: Colors.white,
            fontSize: 19,
            fontWeight: FontWeight.w500,
          ),
        ),
        style: OutlinedButton.styleFrom(
          backgroundColor: Color(0xffF68989),
          shape: CircleBorder(),
          padding: EdgeInsets.all(24),
        ),
      ),
    );
  }
}

class Button3 extends StatelessWidget {
  const Button3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color(0xffFE5150),
        elevation: 5,
        onPrimary: Color(0xffF68989),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      onPressed: () {},
      child: Container(
        width: 310,
        height: 53,
        child: Center(
          child: Text(
            'ADD TO CART',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
        ),
      ),
    );
  }
}

 

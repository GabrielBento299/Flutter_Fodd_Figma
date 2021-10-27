// ignore_for_file: file_names, prefer_const_literals_to_create_immutables, prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/buttons.dart';

class Itens extends StatelessWidget {
  const Itens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white38,
        elevation: 0,
        foregroundColor: Colors.black,
        leadingWidth: 55,
        actions: [
          SizedBox(
            width: 55,
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite_outline_sharp,
                  color: Colors.black,
                  size: 40,
                )),
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Text('Melting Cheese', style: TextStyle(fontSize: 21)),
              SizedBox(
                height: 6,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/money.png'),
                  Text(' 9.47', style: TextStyle(fontSize: 21))
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/pizza4.png', width: 282, height: 228),
                  Text('\$ 19.34'),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('\$ 6.44', style: TextStyle(fontSize: 11)),
                      Text('\$ 9.47', style: TextStyle(fontSize: 11)),
                      Text('\$ 15.32', style: TextStyle(fontSize: 11))
                    ],
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(' 9.47', style: TextStyle(fontSize: 16)),
                        Text(' 9.47', style: TextStyle(fontSize: 16)),
                        Text(' 9.47', style: TextStyle(fontSize: 16))
                      ]),
                  SizedBox(
                    height: 55,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Iten(
                            text: '4.9',
                            icons: Icons.star,
                            color: Colors.yellow[600]),
                        Iten(
                            text: '44 Calories',
                            icons: Icons.fireplace,
                            color: Colors.orange[600]),
                        Iten(
                            text: '20 - 30 min',
                            icons: Icons.timer_sharp,
                            color: Colors.blue)
                      ]),
                  SizedBox(
                    height: 25,
                  ),
                  Button3(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Iten extends StatelessWidget {
  final String text;
  final IconData icons;
  final dynamic color;

  const Iten(
      {Key? key, required this.text, required this.icons, icon, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Icon(icons, color: color),
      Text(text,
          style: TextStyle(
            fontSize: 16,
          ))
    ]);
  }
}

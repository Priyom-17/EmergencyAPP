// ignore_for_file: prefer_const_constructors

import 'package:assignment_saleheen/buttons.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const product(),
    );
  }
}

class product extends StatelessWidget {
  const product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 15,
        title: const Text(
          'Product Page',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(5, 30, 5, 70),
        width: 500,
        height: 700,
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(12)),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(15),
              child: const Text(
                'iPhone 13 128GB (Singapore Unofficial)',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
            ),
            Container(
              //padding: const EdgeInsets.all(10),
              child: Center(
                child: Image.asset(
                  'lib/images/iphone.jpg',
                  width: 250,
                  height: 250,
                ),
              ),
            ),
            const SizedBox(height: 5),
            Container(
              // padding: const EdgeInsets.only(left: 30),
              child: const Text(
                'Key features:',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              // padding: const EdgeInsets.only(left: 30),
              child: Column(
                children: [
                  SizedBox(height: 15),
                  Text(
                    'Model: iPhone 13',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Display: 6.1" Super Retina XDR OLED Display',
                    style: TextStyle(fontSize: 17),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Processor: A15 Bionic Chip, Storage: 128GB',
                    style: TextStyle(fontSize: 17),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Camera: 12MP + 12MP Rear, 12MP Front',
                    style: TextStyle(fontSize: 17),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Features: Face ID, eSIM Support, 5G Support',
                    style: TextStyle(fontSize: 17),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Price : 87,500৳',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            SizedBox(height: 5),
            button(
              onTap: () {},
            ),
          ],
        ),
      ),

      //payment button
    );
  }
}

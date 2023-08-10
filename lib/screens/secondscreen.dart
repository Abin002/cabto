import 'package:cabto/screens/sections/buttonrowbelowcar.dart';
import 'package:cabto/screens/sections/carselectionsection.dart';
import 'package:cabto/screens/sections/destinationsecton.dart';
import 'package:cabto/screens/sections/pickdate.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          children: [
            // Full-width Image
            SizedBox(
              width: double.infinity,
              height: 150,
              child: Stack(
                children: [
                  Image.asset('assets/images.jpg',
                      fit: BoxFit.cover, width: double.infinity),
                  Positioned(
                    top: 2,
                    left: 5,
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ItemContainer(),
                  Divider(
                    thickness: 1.2,
                  ),
                  PickDate(),
                ],
              ),
            ),

            const SizedBox(
              height: 5,
            ),

            const Expanded(
              child:
                  CarSelection(), // Make CarSelection section take up the remaining space
            ),

            const Buttonrowbelowcar(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Padding(
                padding: EdgeInsets.fromLTRB(110, 12, 110, 12),
                child: Text(
                  'Submit',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

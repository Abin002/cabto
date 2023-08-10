import 'package:cabto/widgets/changingcard.dart';
import 'package:flutter/material.dart';

class Buttonrowbelowcar extends StatefulWidget {
  const Buttonrowbelowcar({super.key});

  @override
  _ButtonrowbelowcarState createState() => _ButtonrowbelowcarState();
}

class _ButtonrowbelowcarState extends State<Buttonrowbelowcar> {
  int selectedCardIndex = 0;

  void selectCard(int index) {
    setState(() {
      selectedCardIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Rentallcard(
          cardcontent: 'Book For My Self',
          isSelected: selectedCardIndex == 0,
          onPressed: () => selectCard(0),
        ),
        Rentallcard(
          isSelected: selectedCardIndex == 1,
          onPressed: () => selectCard(1),
          cardcontent: 'Book For Others',
        ),
      ],
    );
  }
}

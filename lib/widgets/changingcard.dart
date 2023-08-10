import 'package:flutter/material.dart';

class Rentallcard extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onPressed;
  final String cardcontent;

  const Rentallcard({
    super.key,
    required this.isSelected,
    required this.onPressed,
    required this.cardcontent,
  });

  @override
  Widget build(BuildContext context) {
    Color cardColor =
        isSelected ? const Color.fromARGB(255, 228, 228, 228) : Colors.white;

    return Card(
      elevation: 10,
      margin: const EdgeInsets.only(left: 18),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
        side: BorderSide(
          color: Colors.grey[300]!,
          width: 1.0,
        ),
      ),
      color: cardColor,
      child: InkWell(
        onTap: onPressed,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            children: [
              if (isSelected)
                const Icon(Icons.check,
                    size: 18, color: Color.fromARGB(255, 0, 0, 0)),
              const SizedBox(width: 5),
              Text(cardcontent),
            ],
          ),
        ),
      ),
    );
  }
}

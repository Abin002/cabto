import 'package:flutter/material.dart';

class CarSelection extends StatefulWidget {
  const CarSelection({super.key});

  @override
  _CarSelectionState createState() => _CarSelectionState();
}

class _CarSelectionState extends State<CarSelection> {
  int _selectedTileIndex = -1;

  final List<Map<String, dynamic>> carData = [
    {
      'title': 'Bens',
      'subtitle': 'S CLASS',
      'imagePath': 'assets/car.png',
      'trailingText': '5465RS', // Trailing text for Car 1
    },
    {
      'title': 'Bmw',
      'subtitle': 'E SERIES',
      'imagePath': 'assets/car5.png',
      'trailingText': '3000RS', // Trailing text for Car 2
    },
    {
      'title': 'Toyota',
      'subtitle': 'SUV',
      'imagePath': 'assets/car3.png',
      'trailingText': '7000RS', // Trailing text for Car 3
    },
    {
      'title': 'Ceverlet',
      'subtitle': 'SEDAN',
      'imagePath': 'assets/car4.png',
      'trailingText': '9000RS', // Trailing text for Car 4
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: carData.length,
        itemBuilder: (context, index) {
          final item = carData[index];
          return Padding(
            padding: const EdgeInsets.symmetric(
                vertical: 8, horizontal: 16), // Add padding here
            child: InkWell(
              onTap: () {
                setState(() {
                  _selectedTileIndex = index;
                });
              },
              child: Ink(
                decoration: BoxDecoration(
                  color: _selectedTileIndex == index
                      ? Colors.grey[200]
                      : const Color.fromARGB(
                          255, 255, 255, 255), // Change color when tapped
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: Image.asset(item['imagePath']),
                  title: Text(item['title']),
                  subtitle: Text(item['subtitle']),
                  trailing: Text(
                    item['trailingText'],
                    style: const TextStyle(color: Colors.green),
                  ),
                  dense: false,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

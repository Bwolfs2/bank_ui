import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final Color backgroundColor;
  final bool isSelected;
  final String logoUrl;
  final String cardTitle;
  final String cardValue;
  final String cardNumber;

  const MyCard({
    Key? key,
    required this.backgroundColor,
    required this.isSelected,
    required this.logoUrl,
    required this.cardTitle,
    required this.cardValue,
    required this.cardNumber,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 130 / 200,
      child: Container(
        margin: isSelected ? EdgeInsets.zero : const EdgeInsets.only(bottom: 20),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              logoUrl,
              width: 42,
            ),
            const Spacer(),
            Text(
              cardTitle,
              style: TextStyle(fontSize: 12, color: isSelected ? Colors.white : Colors.black),
            ),
            const SizedBox(height: 8),
            Text(
              cardValue,
              style: TextStyle(fontSize: 20, color: isSelected ? Colors.white : Colors.black, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Text(
              cardNumber,
              style: TextStyle(fontSize: 15, color: isSelected ? Colors.white : Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}

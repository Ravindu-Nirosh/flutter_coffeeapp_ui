import 'package:flutter/material.dart';

class CoffeTypes extends StatelessWidget {

  final String coffetypes;
  final bool isSelected;
  final VoidCallback onTap;

  CoffeTypes({
    required this.coffetypes,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Text(coffetypes,
        style:TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: isSelected? Colors.orange : Colors.white,
        ) ,
        ),
      ),
    );
  }
}

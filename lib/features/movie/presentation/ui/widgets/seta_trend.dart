import 'package:flutter/material.dart';

class Seta extends StatelessWidget {
  final double value;
  const Seta(this.value);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.north_east, color: Colors.green),
        const SizedBox(width:8.0),
        Text(
          value.toStringAsFixed(1),
          style: const TextStyle(fontSize: 18),
        )
      ],
    );
  }
}
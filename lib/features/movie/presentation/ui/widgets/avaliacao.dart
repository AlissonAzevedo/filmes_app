import 'package:flutter/material.dart';

class Rate extends StatelessWidget {
  final double value;
  const Rate(this.value);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.favorite, color: Colors.red),
        const SizedBox(width:8.0),
        Text(
          value.toStringAsFixed(1),
          style: const TextStyle(fontSize: 18),
        )
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

const kDateFormat = 'dd/MM/yyyy';

class ChipDate extends StatelessWidget {
  final DateTime date;
  final Color color;
  final String dateFormat;

  const ChipDate({
    Key ?key,
    required this.date,
    this.color = Colors.amber,
    this.dateFormat = kDateFormat,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      backgroundColor: color.withOpacity(0.3),
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      avatar: const CircleAvatar(
        backgroundColor: Colors.transparent,
        child: Icon(
          Icons.calendar_today,
          size: 18,
          color: Colors.white,
        ),
      ),
      label: Text(
        DateFormat(dateFormat).format(date),
        textAlign: TextAlign.end,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
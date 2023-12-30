import 'package:flutter/material.dart';
import 'constants.dart';
class ReuseableColumn extends StatelessWidget {
  final IconData icon;
  final String text;
  const ReuseableColumn({super.key, required this.icon,required this.text});
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 90,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(text,style: klabelTextStyle),
      ],
    );
  }
}

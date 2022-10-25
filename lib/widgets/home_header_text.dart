import 'package:flutter/material.dart';

class HomeHeaderText extends StatelessWidget {
  const HomeHeaderText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          "Hello Kaocher",
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Let's gets something?",
          style: TextStyle(
              color: Colors.black54, fontWeight: FontWeight.w600, fontSize: 18),
        ),
      ],
    );
  }
}

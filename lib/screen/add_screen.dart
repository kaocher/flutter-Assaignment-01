import 'package:flutter/material.dart';
class AddScreen extends StatelessWidget {
  const AddScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("Add Screen"),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
class Categories extends StatelessWidget {
   Categories({Key? key}) : super(key: key);
  final List _items = [
    'Food',
    'Electronics',
    'Groceries',
    'Dress',
  ];

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 45,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(right: 15),
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: Text(
                  _items[index],
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
            );
          }),
    );
  }
}

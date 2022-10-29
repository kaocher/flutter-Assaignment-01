import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllCategories extends StatelessWidget {
  AllCategories({Key? key}) : super(key: key);
  final List _items = [
    'Food',
    'Electronics',
    'Groceries',
    'Dress',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(),
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return SingleCategory(categoryTitle: _items[index]);
          }),
    );
  }
}

class SingleCategory extends StatelessWidget {
  final String categoryTitle;
  const SingleCategory({Key? key, required this.categoryTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Container(
      margin: const EdgeInsets.only(right: 15).r,
      padding: const EdgeInsets.symmetric(horizontal: 20).r,
      decoration: BoxDecoration(
          color: Colors.black26, borderRadius: BorderRadius.circular(30).r),
      child: Center(
        child: Text(
          categoryTitle,
          style: textTheme.bodyMedium,
        ),
      ),
    );
  }
}

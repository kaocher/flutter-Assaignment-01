import 'package:flutter/material.dart';
import 'package:flutter_assaignment_1/utils/const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeHeaderText extends StatelessWidget {
  const HomeHeaderText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:  [
        Text( headerText1,
          style: textTheme.titleLarge,
        ),
        SizedBox(
          height: 10.h,
        ),
        Text( headerText2,
          style: textTheme.titleMedium
        ),
      ],
    );
  }
}

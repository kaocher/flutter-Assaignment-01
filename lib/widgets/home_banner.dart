import 'package:flutter/material.dart';
import 'package:flutter_assaignment_1/utils/const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class HomeBanner extends StatelessWidget {

  final List<Color> bannerColor=[
    Colors.deepOrange,
    Colors.purpleAccent,
    Colors.redAccent,
    Colors.blue,
    Colors.blueGrey,
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    return SizedBox(
      height: 180.h,
      // height: size.height * .20,
      child: ListView.builder(
          itemCount: bannerColor.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              height: 180.h,
              width: 340.w,
              margin: const EdgeInsets.only(right: 20).r,
              decoration: BoxDecoration(
                  color: bannerColor[index],
                  borderRadius: BorderRadius.circular(20).r
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                   Padding(
                    padding: const EdgeInsets.only(top: 15, left: 20).r,
                    child:  Text(
                      "40% off During\nCovid 19",
                      style: textTheme.bodyLarge,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: SizedBox(
                      height: 80.h,
                      width: 80.h,
                      // height: size.height * .09,
                      // width: size.height * .09,

                      child:  const Image(
                        image: AssetImage(watchImage),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }
          ),
    );
  }
}

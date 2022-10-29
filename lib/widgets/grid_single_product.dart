import 'package:flutter/material.dart';
import 'package:flutter_assaignment_1/utils/const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridSingleProduct extends StatelessWidget {
  const GridSingleProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    return SizedBox(
        height: 300.h,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              child: SizedBox(
                height: 260.h,
                width: 200.w,
                
                child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                  Positioned(
                      left: 40.w,
                      top: -40.h,
                      child: SizedBox(
                        height: 180.h,
                        width: 150.w,
                        // color: Colors.purpleAccent,
                        child: const Image(
                          image: AssetImage(watchImage),
                          fit: BoxFit.cover,
                        ),
                      )),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        // color: Colors.pink,
                        height: 120.h,
                        padding: const EdgeInsets.all(15).r,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            Text(
                              "Apple Watch",
                              overflow: TextOverflow.ellipsis,
                              style: textTheme.bodyMedium,
                            ),
                            Text(
                              "Series 6 . Red",
                              style: textTheme.titleMedium!.copyWith(fontSize: 15.sp)
                            ),
                            Text(
                              "\$ 100",
                              style: textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ]),
              ),
            ),
          ],
        ),
      );
  }
}

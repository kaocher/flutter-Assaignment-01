import 'package:flutter/material.dart';
import 'package:flutter_assaignment_1/utils/app_theme/app_theme.dart';
import 'package:flutter_assaignment_1/utils/colors.dart';
import 'package:flutter_assaignment_1/utils/const.dart';
import 'package:flutter_assaignment_1/widgets/categories.dart';
import 'package:flutter_assaignment_1/widgets/home_banner.dart';
import 'package:flutter_assaignment_1/widgets/home_header_text.dart';
import 'package:flutter_assaignment_1/widgets/grid_single_product.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    return Scaffold(
      // backgroundColor: lightBgColor,
      body: SafeArea(
          child: SizedBox(
        height: size.height,
        width: size.width,
        child: SingleChildScrollView(

          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.only(top: 50, left: 20).r,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeHeaderText(),
               SizedBox(
                height: 30.h,
              ),
               HomeBanner(),
               SizedBox(
                height: 30.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:  [
                   Text( categoryHeaderText,
                    style: textTheme.bodyLarge
                  ),
                  Padding(
                    padding:  const EdgeInsets.only(right: 15).r,
                    child: GestureDetector(
                      onTap: (){},
                      child:  Text( categoryTrailingText,
                        style: textTheme.bodyMedium!.copyWith(color: Colors.deepOrange)
                      ),
                    ),
                  ),
                ],
              ),
               SizedBox(
                height: 20.h,
              ),
              AllCategories(),
               SizedBox(
                height: 30.h,
              ),
              GridView.builder(
                padding:  const EdgeInsets.only(right: 15,).r,
                  itemCount: 10,
                  shrinkWrap: true,
                  primary: false,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate:
                       const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 50,
                          crossAxisSpacing: 10,
                        // mainAxisExtent: size.height * .35
                        childAspectRatio: .56
                          ),
                  itemBuilder: (context, index) {
                    return  const GridSingleProduct();
                  }),
            ],
          ),
        ),
      )),
    );
  }
}

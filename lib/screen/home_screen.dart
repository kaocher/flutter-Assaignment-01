import 'package:flutter/material.dart';
import 'package:flutter_assaignment_1/widgets/categories.dart';
import 'package:flutter_assaignment_1/widgets/home_banner.dart';
import 'package:flutter_assaignment_1/widgets/home_header_text.dart';
import 'package:flutter_assaignment_1/widgets/grid_single_product.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
          child: SizedBox(
        height: size.height,
        width: size.width,
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            primary: true,
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeHeaderText(),
                const SizedBox(
                  height: 20,
                ),
                const HomeBanner(),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "Top Categories",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Text(
                        "View All",
                        style: TextStyle(
                            color: Colors.deepOrange,
                            fontSize: 20,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Categories(),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 1700,
                  padding: const EdgeInsets.only(right: 15),
                  child: GridView.builder(
                      itemCount: 10,
                      primary: false,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 10,
                              crossAxisSpacing: 10,
                              childAspectRatio: .6),
                      itemBuilder: (context, index) {
                        return const GridSingleProduct();
                      }),
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}

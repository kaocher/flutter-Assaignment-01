import 'package:flutter/material.dart';
import 'package:flutter_assaignment_1/utils/const.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/colors.dart';
import '../widgets/grid_single_product.dart';

class AdsScreen extends StatelessWidget {
  const AdsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    var textTheme = Theme.of(context).textTheme;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(

          title:  Text(
            "My Ads",
            style: textTheme.bodyLarge,
          ),
          centerTitle: true,
          bottom: TabBar(
            indicatorWeight: 3.h,
             labelPadding: const EdgeInsets.all(20).r,
              indicatorColor: Colors.grey.shade400,
              tabs: [
            Column(
              children:  [
                Icon(
                  Icons.shopping_basket_outlined,

                ),
                 Text(
                  'My Ads',
                  style: textTheme.bodyText1,
                )
              ],
            ),
            Column(
              children:  [
                Icon(
                  Icons.favorite_outline,

                ),
                 Text(
                  'My Favourites',
                  style: textTheme.bodyText1,
                )
              ],
            ),
          ]
          ),
        ),
        body: SafeArea(
          child: TabBarView(

              children: [
                SizedBox(
                  height: size.height,
                  width: size.width,
                  child: GridView.builder(
                    padding: const EdgeInsets.only(top: 20,left: 15,right: 15).r,
                    physics: const BouncingScrollPhysics(),
                      itemCount: 10,
                      gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 40,
                          crossAxisSpacing: 10,
                        childAspectRatio: .6
                         ),
                      itemBuilder: (context, index) {
                        return const GridSingleProduct();
                      }),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: 10,
                      padding: const EdgeInsets.only(top: 10,left: 20,right: 20,).r,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: const EdgeInsets.only(bottom: 10).r,
                          height: 90.h,

                          child:  Card(
                            elevation: 3,
                              child: ListTile(
                                leading: const Image(
                                  image: AssetImage(watchImage),
                                  fit: BoxFit.cover,
                                ),
                                title:  Text(
                                  "Apple Watch",
                                  overflow: TextOverflow.ellipsis,
                                  style: textTheme.bodyMedium,
                                ),
                                subtitle:  Text(
                                  "Series 6 . Red",
                                  style: textTheme.titleMedium!.copyWith(fontSize: 15),
                                ),
                                trailing: Text(
                                  "\$ 100",
                                  style: textTheme.bodyMedium,
                                ),


                              )),
                        );
                      }),
                ),

          ]),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../widgets/grid_single_product.dart';

class AdsScreen extends StatelessWidget {
  const AdsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          toolbarHeight: 100,
          backgroundColor: Colors.white,
          title: const Text(
            "My Ads",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          bottom: TabBar(
            indicatorWeight: 4,
             labelPadding: EdgeInsets.all(20),
              indicatorColor: Colors.grey.shade400,
              tabs: [
            Column(
              children: const [
                Icon(
                  Icons.shopping_basket_outlined,
                  color: Colors.black,
                  size: 30,
                ),
                Text(
                  'My Ads',
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
            Column(
              children: const [
                Icon(
                  Icons.favorite_outline,
                  color: Colors.black,
                  size: 30,
                ),
                Text(
                  'My Favourites',
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          ]),
        ),
        body: SafeArea(
          child: TabBarView(

              children: [
                SizedBox(
                  height: size.height,
                  width: size.width,
                  child: GridView.builder(
                      itemCount: 4,
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
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                      itemCount: 4,
                      padding: EdgeInsets.only(top: 20,left: 20,right: 20,),
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(bottom: 10),
                          height: 85,

                          child: Card(
                            elevation: 6,
                              child: ListTile(
                                leading: Image(
                                  image: AssetImage("assets/watch1.png"),
                                  fit: BoxFit.cover,
                                ),
                                title:  Text(
                                  "Apple Watch",
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                                subtitle:  Text(
                                  "Series 6 . Red",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                                trailing: Text(
                                  "\$ 100",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
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

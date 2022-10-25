import 'package:flutter/material.dart';
class GridSingleProduct extends StatelessWidget {
  const GridSingleProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Container(
          height: 270,
          width: 200,

          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)),
          child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                    left: 40,
                    top: -40,
                    child: Container(
                      height: 180,
                      width: 150,
                      // color: Colors.purpleAccent,
                      child: const Image(
                        image: AssetImage("assets/watch1.png"),
                        fit: BoxFit.cover,
                      ),
                    )
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      // color: Colors.pink,
                      height: 120,
                      padding: EdgeInsets.all(15),
                      child: Column(
                        mainAxisAlignment:
                        MainAxisAlignment.spaceBetween,
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Apple Watch",
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Series 6 . Red",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 15,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "\$ 100",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ]),
        ),
      ],
    );
  }
}

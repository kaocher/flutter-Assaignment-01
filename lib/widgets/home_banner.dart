import 'package:flutter/material.dart';
class HomeBanner extends StatelessWidget {
  const HomeBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 180,
      child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              height: 200,
              width: 350,
              margin: const EdgeInsets.only(right: 20),
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(20)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Padding(
                    padding: EdgeInsets.only(top: 15, left: 10),
                    child: Text(
                      "40% off During\nCovid 19",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: SizedBox(
                      height: 80,
                      width: 80,
                      child:  Image(
                        image: AssetImage("assets/watch1.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            );
          }),
    );
  }
}

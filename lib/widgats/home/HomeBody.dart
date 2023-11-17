import 'package:flutter/material.dart';
import 'package:store_one/constans.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 70),
                  decoration: BoxDecoration(
                      color: kBackgroundColor,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                ),
                ProductCard(context)
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container ProductCard(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.bottomCenter,
      margin: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      height: 190.0,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 170,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(22),
              ),
              color: kBackgroundColor,
              boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0, 15),
                    blurRadius: 22)
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              margin: EdgeInsets.only(top: 5),
              child: Image.asset(
                "images/airpod.png",
                fit: BoxFit.cover,
              ),
              width: 200,
              height: 160,
            ),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              child: SizedBox(
                height: 130,
                width: size.width - 200,
                child: Padding(
                  padding: const EdgeInsets.only(right: 20, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ("سماعة لاسلكية"),
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Spacer(),
                      Text(
                        ("سماعة جيدة"),
                        style: Theme.of(context).textTheme.bodySmall,
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: kSecondaryColor,
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 11,
                            vertical: 5,
                          ),
                          child: Text(
                            "السعر: \$99",
                            style: Theme.of(context).textTheme.bodyMedium,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ))
        ],
      ),
    );
  }
}

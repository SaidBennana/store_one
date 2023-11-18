import 'package:flutter/material.dart';
import 'package:store_one/Pages/detels_Screen.dart';
import 'package:store_one/constans.dart';
import 'package:store_one/models/prodacts.dart';
import 'package:store_one/widgats/home/Prodact_Card.dart';

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
                ListView.builder(
                    itemCount: Prodacts.length,
                    itemBuilder: (ctx, index) => ProductCard(
                        context,
                        Prodacts[index].price,
                        Prodacts[index].title,
                        Prodacts[index].subTitle,
                        Prodacts[index].image,
                        () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Deteles_Screen(
                                    des: Prodacts[index].description,
                                    image: Prodacts[index].image,
                                    price: Prodacts[index].price,
                                    tital: Prodacts[index].title,
                                  ),
                                ),
                              ),
                            })),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

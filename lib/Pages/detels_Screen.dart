import 'package:flutter/material.dart';
import 'package:store_one/constans.dart';
import 'package:store_one/widgats/detels_prodect/detels_Card.dart';

class Deteles_Screen extends StatelessWidget {
  const Deteles_Screen(
      {super.key, this.image, this.tital, this.price, this.des});
  final image;
  final tital;
  final price;
  final des;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "الرجوع",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: kPrimaryColor,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: kBackgroundColor,
        elevation: 0,
      ),
      backgroundColor: kPrimaryColor,
      body: Detels_Card(des: des, image: image, price: price, tital: tital),
    );
  }
}

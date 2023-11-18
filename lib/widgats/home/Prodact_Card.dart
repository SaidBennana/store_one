import 'package:flutter/material.dart';
import 'package:store_one/constans.dart';
import 'package:store_one/models/prodacts.dart';

class prodact_card extends StatelessWidget {
  const prodact_card(
      {super.key,
      required this.index,
      required this.prodact,
      required this.press});
  final int index;
  final Prodact prodact;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return ProductCard(context, prodact.price, prodact.title, prodact.subTitle,
        prodact.image, press);
  }
}

Container ProductCard(
    BuildContext context, price, title, subTitle, image, press) {
  Size size = MediaQuery.of(context).size;
  return Container(
    alignment: Alignment.bottomCenter,
    margin: EdgeInsets.symmetric(
        horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
    height: 190.0,
    child: InkWell(
      onTap: press,
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
                image,
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
                        (title),
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                      Spacer(),
                      Text(
                        (subTitle),
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
                            "السعر: \$${price}",
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
    ),
  );
}

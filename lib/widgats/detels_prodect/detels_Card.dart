import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store_one/constans.dart';

class Detels_Card extends StatelessWidget {
  const Detels_Card({super.key, this.image, this.tital, this.price, this.des});
  final image;
  final tital;
  final price;
  final des;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.symmetric(
              horizontal: kDefaultPadding * 2, vertical: 10),
          width: double.infinity,
          decoration: BoxDecoration(
            color: kBackgroundColor,
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50)),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    height: size.width * 0.8,
                    child: Stack(children: [
                      Container(
                        width: size.width * 0.6,
                        height: size.width * 0.6,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                      ),
                      Image.asset(
                        image,
                        width: size.width * 0.6,
                        height: size.width * 0.6,
                        fit: BoxFit.cover,
                      )
                    ]),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ColorDots(),
                    ColorDots(),
                    ColorDots(),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    tital,
                    style: GoogleFonts.getFont("Almarai", fontSize: 25),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Text(
                    "السعر :\$ ${price}",
                    style: GoogleFonts.getFont("Almarai",
                        fontSize: 20, color: kSecondaryColor),
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: Text(
            des,
            style: TextStyle(
              color: kBackgroundColor,
              fontSize: 19.0,
            ),
          ),
        )
      ],
    );
  }
}

class ColorDots extends StatelessWidget {
  const ColorDots({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2),
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),
      width: 24,
      height: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle, border: Border.all(color: Colors.blue)),
      child: Container(
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
      ),
    );
  }
}

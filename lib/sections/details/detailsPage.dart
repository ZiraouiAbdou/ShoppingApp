import 'package:flutter/material.dart';
import 'package:shopapp/utilities/constants.dart';
import 'package:shopapp/utilities/product.dart';
import 'package:shopapp/sections/itemsPage.dart';

import 'BuyNow.dart';
import 'colorshapes.dart';
import 'countBuys.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white54,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context, MaterialPageRoute(builder: (context) {
              return const MainItemsView();
            }));
          },
          child: const Icon(
            Icons.arrow_back,
            color: blackColor,
          ),
        ),
        actions: const [
          Icon(
            Icons.search,
            color: blackColor,
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Icon(
              Icons.shopping_cart,
              color: blackColor,
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: product.color,
          ),
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)),
                color: Colors.white),
            margin: const EdgeInsets.only(top: 275),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 2,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 70, 20, 0),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Color:",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            ColorShapes(color: products[0].color),
                            const ColorShapes(color: Colors.redAccent),
                            const ColorShapes(
                                color: Color.fromARGB(255, 128, 128, 128)),
                          ],
                        )
                      ],
                    ),
                    RichText(
                        text: TextSpan(children: [
                      const TextSpan(
                          text: "Size\n",
                          style: TextStyle(
                              color: blackColor, fontWeight: FontWeight.bold)),
                      TextSpan(
                          text: "${product.size}",
                          style: const TextStyle(
                              color: blackColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold)),
                    ]))
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  product.description,
                  style: const TextStyle(wordSpacing: 3, height: 2),
                ),
                const SizedBox(
                  height: 10,
                ),
                const ProductBuysCount(),
                const SizedBox(
                  height: 15,
                ),
                BuyNowButton(product: product),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Shoes Type",
                  style: TextStyle(color: whiteColor),
                ),
                Text(product.name,
                    style: const TextStyle(
                        color: whiteColor,
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Price",
                            style: TextStyle(
                              color: whiteColor,
                            ),
                          ),
                          Text(
                            "\$${product.price}",
                            style: const TextStyle(
                                color: whiteColor,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Expanded(child: Image.asset(product.image))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../utilities/constants.dart';
import '../../utilities/product.dart';

class BuyNowButton extends StatelessWidget {
  final Product product;
  const BuyNowButton({
    required this.product,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.fromLTRB(48, 10, 0, 0),
            decoration: BoxDecoration(
                color: product.color, borderRadius: BorderRadius.circular(23)),
            width: 200,
            height: 50,
            child: const Text(
              "Buy Now",
              style: TextStyle(
                  color: whiteColor, fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}

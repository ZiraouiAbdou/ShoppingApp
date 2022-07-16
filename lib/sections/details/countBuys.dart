import 'package:flutter/material.dart';

import '../../utilities/constants.dart';

class ProductBuysCount extends StatefulWidget {
  const ProductBuysCount({
    Key? key,
  }) : super(key: key);

  @override
  State<ProductBuysCount> createState() => _ProductBuysCountState();
}

class _ProductBuysCountState extends State<ProductBuysCount> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        OutlinedButton(
          onPressed: () {
            setState(() {
              if (count > 1) count--;
            });
          },
          child: const Text(
            "-",
            style: TextStyle(fontSize: 40, color: blackColor),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          count < 10 ? "0$count" : "$count",
          style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          width: 10,
        ),
        OutlinedButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          child: const Text(
            "+",
            style: TextStyle(fontSize: 40, color: blackColor),
          ),
        ),
      ],
    );
  }
}

int count = 1;

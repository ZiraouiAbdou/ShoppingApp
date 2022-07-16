import 'package:flutter/material.dart';

import '../utilities/product.dart';
import 'details/detailsPage.dart';

class MainItemsView extends StatelessWidget {
  const MainItemsView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 30, crossAxisSpacing: 0, crossAxisCount: 2),
            itemCount: products.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Expanded(
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23),
                          color: products[index].color,
                        ),
                        child: Image.asset(
                          products[index].image,
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return DetailsScreen(
                          product: products[index],
                        );
                      }));
                    },
                    child: Text(
                      products[index].name,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "\$${products[index].price}",
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  )
                ],
              );
            }));
  }
}

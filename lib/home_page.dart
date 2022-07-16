import 'package:flutter/material.dart';
import 'package:shopapp/utilities/constants.dart';
import 'package:shopapp/sections/itemsPage.dart';
import 'package:shopapp/sections/topbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white24,
        leading: const Icon(
          Icons.account_circle_sharp,
          color: blackColor,
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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            lineSpace,
            Text(
              "Man & Women",
              style: gras,
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              child: TopBar(),
            ),
            MainItemsView(),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../utilities/constants.dart';

class TopBar extends StatefulWidget {
  const TopBar({
    Key? key,
  }) : super(key: key);

  @override
  State<TopBar> createState() => _TopBarState();
}

class _TopBarState extends State<TopBar> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: selectedIndex != index
                ? const EdgeInsets.fromLTRB(0, 10, 10, 0)
                : EdgeInsets.fromLTRB(0, 4, 10, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Text(
                    categories[index],
                    style: selectedIndex == index ? selectedStyle : normalStyle,
                  ),
                ),
                Container(
                  height: 2,
                  width: 40,
                  color: selectedIndex == index ? blackColor : whiteColor,
                )
              ],
            ),
          );
        });
  }
}

const TextStyle selectedStyle =
    TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold);
const TextStyle normalStyle = TextStyle(fontSize: 14);

int selectedIndex = 0;

List<String> categories = [
  'Shoes',
  'T-shirts',
  'Coats',
  'Summer',
  'Winter',
  'Hats',
  'Shorts'
];

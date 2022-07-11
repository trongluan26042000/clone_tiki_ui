import 'package:flutter/material.dart';

class SliverProfileAppBar extends StatefulWidget {
  const SliverProfileAppBar({Key? key}) : super(key: key);

  @override
  _SliverProfileAppBarState createState() => _SliverProfileAppBarState();
}

class _SliverProfileAppBarState extends State<SliverProfileAppBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      actions: <Widget>[
        Row(
          children: [
            Stack(
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.settings_outlined  ),
                ),
              ],
            ),
            Stack(
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.shopping_cart),
                ),
                Positioned(
                  top: 8.0,
                  right: 8.0,
                  child: Container(
                    width: 16.0,
                    height: 16.0,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      shape:BoxShape.circle,
                      color: Colors.deepOrangeAccent,
                    ),
                    child: const Text("4",style: TextStyle(
                      fontSize: 12.0, fontWeight: FontWeight.bold,
                    ),),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}

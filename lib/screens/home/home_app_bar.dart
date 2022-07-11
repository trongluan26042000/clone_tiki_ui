import 'package:flutter/material.dart';

class SliverHomeAppBar extends StatefulWidget {
  const SliverHomeAppBar({Key? key}) : super(key: key);

  @override
  _SliverHomeAppBarState createState() => _SliverHomeAppBarState();
}

class _SliverHomeAppBarState extends State<SliverHomeAppBar> {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text('Tiki'),
      centerTitle: true,
      actions: <Widget>[
        Row(
          children: [
            Stack(
              children: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.notifications_none_outlined),
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
                    child: const Text("10",style: TextStyle(
                      fontSize: 12.0, fontWeight: FontWeight.bold,
                    ),),
                  ),
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
      expandedHeight: 120.0,
      pinned: true,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(24.0),
        child: Container(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            height: 48.0,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4.0),
                boxShadow:  [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 5.0,
                      offset: const Offset(0.0,0.0)
                  )
                ]
            ),
            child: Row(
              children: <Widget>[
                IconButton(onPressed: () {},
                    icon: const Icon(Icons.search, color: Colors.grey,)),
                Text("Bạn tìm gì hôm nay?",
                  style: TextStyle(color: Colors.grey[600],fontSize: 16.0),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

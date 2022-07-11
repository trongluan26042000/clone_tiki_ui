import 'package:clone_tiki_ui/screens/home/home_app_bar.dart';
import 'package:clone_tiki_ui/widgets/banner_carouel.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          const SliverHomeAppBar(),
          const BannerCarouel(),
          SliverFixedExtentList(
              delegate: SliverChildBuilderDelegate((context, index){
               return Container(color: Colors.red[(index % 9) * 100],);
              }),
              itemExtent: 56.0,
          ),
        ],
      ),
    );
  }
}

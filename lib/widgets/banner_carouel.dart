import 'package:clone_tiki_ui/model/banner.dart';
import 'package:clone_tiki_ui/widgets/page_view_with_dot_dart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BannerCarouel extends StatefulWidget {

  const BannerCarouel({Key? key}) : super(key: key);

  @override
  _BannerCarouelState createState() => _BannerCarouelState();
}

class _BannerCarouelState extends State<BannerCarouel> {
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: AspectRatio(
        aspectRatio: 2.5,
        child: PageView.builder(
          controller: PageController(viewportFraction: 1.0),
          itemCount: 4,
          itemBuilder: (context,index){
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image:NetworkImage(BannerList[index].thumbnaiUrl),
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

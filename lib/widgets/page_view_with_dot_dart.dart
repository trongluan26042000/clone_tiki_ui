import 'package:flutter/material.dart';

class PageViewWithDot extends StatefulWidget {
  const PageViewWithDot({Key? key}) : super(key: key);

  @override
  State<PageViewWithDot> createState() => _PageViewWithDotState();
}

class _PageViewWithDotState extends State<PageViewWithDot> {
  List<String> list = ['1', '2', '3', '4'];
  PageController pageController = PageController();
  double currentIndex = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // pageController.addListener(() {
    //   setState(() {
    //     currentIndex=pageController.page??0;
    //   });
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 100,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Stack(children: [
          Container(
            color: Colors.red,
            child: PageView(
              controller: pageController,
              onPageChanged: (page) {
                setState(() {
                  currentIndex = page.toDouble();
                });
              },
              children: List.generate(
                  list.length,
                      (index) => Center(
                    child: Text(list[index]),
                  )),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(
                  list.length,
                      (index) => Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: DotIndex(isHightLight: index == currentIndex))),
            ),
          )
        ]),
      ),
    );
  }
}

class DotIndex extends StatelessWidget {
  const DotIndex({Key? key, required this.isHightLight}) : super(key: key);
  final bool isHightLight;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      height: 2,
      width: 5,
      color: isHightLight ? Colors.blue : Colors.black,
    );
  }
}

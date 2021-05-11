import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:grocery_app/constants.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({Key key}) : super(key: key);

  @override
  _OnBoardScreenState createState() => _OnBoardScreenState();
}

int _currentPage = 0;
final _controller = PageController(
  initialPage: 0,
);

List<Widget> _pages = [
  Column(
    children: [
      Expanded(child: Image.asset('images/enteraddress.png')),
      Text(
        'Set Your Delivery Location',
        style: KPageViewTextStyle,
        textAlign: TextAlign.center,
      ),
    ],
  ),
  Column(
    children: [
      Expanded(child: Image.asset('images/orderfood.png')),
      Text(
        'Order Online your grocery',
        style: KPageViewTextStyle,
        textAlign: TextAlign.center,
      ),
    ],
  ),
  Column(
    children: [
      Expanded(child: Image.asset('images/deliverfood.png')),
      Text(
        'we deliver your grocery to your house',
        style: KPageViewTextStyle,
        textAlign: TextAlign.center,
      ),
    ],
  ),
];

class _OnBoardScreenState extends State<OnBoardScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: PageView(
          controller: _controller,
          children: _pages,
          onPageChanged: (index) {
            setState(() {
              _currentPage = index;
            });
          },
        ),
      ),
      SizedBox(
        height: 20.0,
      ),
      DotsIndicator(
        dotsCount: _pages.length,
        position: _currentPage.toDouble(),
        decorator: DotsDecorator(
            size: const Size.square(9.0),
            activeSize: const Size(18.0, 9.0),
            activeShape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0)),
            activeColor: Colors.deepOrangeAccent),
      ),
      SizedBox(
        height: 20.0,
      ),
    ]);
  }
}

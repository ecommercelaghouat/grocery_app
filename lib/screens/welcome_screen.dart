import 'package:flutter/material.dart';
import 'package:grocery_app/screens/onboard_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Stack(
            children: [
              Positioned(
                right: 0.0,
                top: 10.0,
                child: FlatButton(
                  child: Text('Skip', style: TextStyle(color: Colors.deepOrangeAccent),),
                  onPressed: (){

                  },
                ),
              ),
              Column(
                children: [
                  Expanded(
                    child: OnBoardScreen(),
                  ),
                  Text('Ready to order from your favorite market'),
                  SizedBox(
                    height: 20,
                  ),
                  FlatButton(
                    color: Colors.deepOrangeAccent,
                    child: Text('set Delivery Location', style: TextStyle(color: Colors.white),),
                    onPressed: () {},
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FlatButton(
                    child: RichText(
                      text: TextSpan(
                          text: 'Already a custumer ? ',
                          style: TextStyle(color: Colors.black),
                          children: [
                            TextSpan(
                              text: 'Login',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87),
                            ),
                          ]),
                    ),
                    onPressed: () {},
                  )
                ],
              ),
            ],
          )),
    );
  }
}

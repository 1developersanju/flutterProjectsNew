import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SizedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Vx.gray200,
        body: Column(children: <Widget>[
          "This is SizedBox page"
              .text
              .center
              .makeCentered()
              .box
              .red200
              .make()
              .whOneForth(context),
          200.heightBox,
          "This is SizedBox page"
              .text
              .center
              .makeCentered()
              .box
              .red200
              .blue900
              .make()
              .whOneForth(context),
        ]),
      ),
    );
  }
}

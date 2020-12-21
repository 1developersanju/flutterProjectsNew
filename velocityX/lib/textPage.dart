import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class TextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'velocityX'.text.letterSpacing(2).make(),
      ),
      body: Container(
        child: FlatButton(
          // color: Vx.gray300,
          child: "Sanjeev2004"
              .text
              .blue600
              .size(50)
              .underline
              .capitalize
              .thin
              .hidePartial
              .makeCentered(),
          onPressed: () {},
        ),
      ),
    );
  }
}

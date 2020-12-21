import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class BoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "TextBox".text.makeCentered(),
      ),
      backgroundColor: Vx.white,
      body: "Hello everyone"
          .text
          .yellow600
          .size(50)
          .make()
          .box
          .square(400)
          .alignCenter
          .p16
          .linearGradient([
        Vx.green500,
        Vx.teal600,
      ]).makeCentered(),
    );
  }
}

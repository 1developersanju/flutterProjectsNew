import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Vx.blue900,
        appBar: AppBar(
          title: "Card Page".text.make(),
        ),
        body: "Hello friends this is velocityX's \ncard page"
            .text
            .size(18)
            .center
            .makeCentered()
            .p16()
            .card
            .zeroCircular
            .red300
            .rounded
            .make()
            .wh(300, 300)
            .centered(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class FlexPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlue,
        body: [
          "VxBlock One".text.make().box.red300.make(),
          "VxBlock Two".text.make().box.yellow300.make().p12(),
          "VxBlock Three".text.make().box.green300.make().p24(),
          VxDiscList(
            ['Item 1', 'Item 2', 'Item 3'],
            color: Vx.orange500,
            fontSize: 45,
            padding: Vx.m16,
          ),
          VxDecimalList(
            ['.Item a', '.Item b', '.Item c', '.Item d'],
            color: Vx.orange400,
            fontSize: 45,
            padding: Vx.m12,
          ),
          VxDiscList(
            ['.Item e', '.Item f', '.Item g', '.Item 4', '.Item 5', '.Item 6'],
            color: Vx.orange300,
            fontSize: 45,
            padding: Vx.m12,
          ),
        ].vStack().p16().scrollVertical(),
      ),
    );
  }
}

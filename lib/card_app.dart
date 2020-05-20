import 'package:flutter/material.dart';


class CardApp extends StatelessWidget {
  final Widget child;

  const CardApp({Key key, this.child}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(20),
              child: Container(decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: child,),);
  }
}
import 'package:flutter/material.dart';
import 'package:nubank_design/first_card.dart';

import 'card_app.dart';

class PageViewApp extends StatelessWidget {
  final double top;
  final ValueChanged<int> onChanged;
  final GestureDragUpdateCallback onPanUpdate;

  const PageViewApp({Key key, this.top, this.onChanged, this.onPanUpdate}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(top:top , height: MediaQuery.of(context).size.height * .50,left: 0, right: 0,
            duration: Duration(milliseconds: 300),
            curve: Curves.easeInOut,
            child:GestureDetector(
              onPanUpdate: onPanUpdate,
                child: PageView(
                onPageChanged: onChanged,
                physics: BouncingScrollPhysics(),
              children: <Widget>[
                CardApp(child: FirstCard(),),
                CardApp(),
                CardApp(),
                ],
                ),
            )
            );
  }
}
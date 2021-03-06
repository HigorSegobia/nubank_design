import 'package:flutter/material.dart';
import 'package:nubank_design/item_menu_bottom.dart';
import 'package:nubank_design/my_dots_app.dart';
import 'package:nubank_design/page_view_app.dart';
import 'bottom_menu.dart';
import 'my_app_bar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool _showMenu;
  int _currentIndex;
  double _yPosition;
  @override
  void initState() {
    super.initState();
    _showMenu = false;
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    if(_yPosition == null){
      _yPosition = _screenHeight * .20;
    }
    return Scaffold(
      backgroundColor: Colors.purple[800],
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          MyAppBar(
            showMenu: _showMenu,
            onTap: (){
              setState(() {
                _showMenu = !_showMenu;
              });
            },
            ),
          PageViewApp(
          top:_yPosition,//top: !_showMenu ? _screenHeight * .20 : _screenHeight *.70,
          onChanged: (index){
            setState(() {
              _currentIndex = index;
            });
          },
          onPanUpdate: (details){
            setState(() {
              if(_yPosition < _screenHeight * .75 || _yPosition > _screenHeight * .20){
                _yPosition += details.delta.dy;
              }
            });
          },
          ),
          MyDotApp(
            top: _screenHeight * .65,
            currentIndex: _currentIndex,
          ),
          BottomMenu(),
        ],
      ),
    );
  }
}
import 'package:flutter/material.dart';

import 'item_menu_bottom.dart';

class BottomMenu extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
            duration: Duration(milliseconds: 200),
            bottom: 18 + MediaQuery.of(context).padding.bottom,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height * .16,
            child: Container( 
            child: ListView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              children: <Widget>[
              ItemMenuBottom(icon:Icons.person_add, text: 'Indicar amigos',),
              ItemMenuBottom(icon:Icons.phone_android, text: 'Recarga de Celular',),
              ItemMenuBottom(icon:Icons.chat, text: 'Cobrar',),
              ItemMenuBottom(icon:Icons.monetization_on, text: 'Imprestimos',),
              ItemMenuBottom(icon:Icons.move_to_inbox,text: 'Depositar',),
              ItemMenuBottom(icon:Icons.settings, text: 'Ajustar',),
            ],),)
            );
  }
}
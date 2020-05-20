import 'package:flutter/material.dart';

class FirstCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child: Container(
              child: Row(
                children: <Widget>[
                  Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(children: <Widget>[
                        Icon(Icons.credit_card, color: Colors.grey,),
                        SizedBox(width: 5,),
                        Text('Cartão de crédito', style: TextStyle(color: Colors.grey, fontSize: 13),)
                      ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:20.0, top: 20, bottom: 20),
                      child: SizedBox(
                        width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'FATURA ATUAL', 
                              style: TextStyle(color: Colors.teal, 
                              fontSize: 13, 
                              fontWeight: FontWeight.bold),
                              ),
                            Text.rich(
                              TextSpan(
                                text: 'R\$', 
                                children: [
                                  TextSpan(text: '14.435', 
                                  style: TextStyle(fontWeight: FontWeight.bold)),
                                  TextSpan(text: ',50'),]),
                            textAlign: TextAlign.start ,
                            style: TextStyle(
                              color: Colors.teal, 
                              fontSize: 28, 
                              ),
                              ),
                              Text.rich(
                                TextSpan(
                                  text: 'Limite Disponivel',
                                  children: [
                                    TextSpan(
                                      text: ' R\$ 8.445,50',
                                      style: TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold
                                      )
                                    ),
                                  ]
                                ),
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                color:Colors.grey,
                                fontSize: 12,
                              ),
                              ),
                          ],),
                      ),
                    )
                  ],)),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 12, left: 10, right: 15),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                        child: Container(width: 7,decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child:Column(
                        children: <Widget>[
                          Expanded(flex:3, child: Container(color:Colors.orange,)),
                          Expanded(flex:1,child: Container(color: Colors.blue,)),
                          Expanded(flex:2,child: Container(color: Colors.green,)),
                        ],
                      ),
                      ),
                    ),
                  ),
                ],
              ),
            )
            ),
          Expanded(
            flex: 1,
              child: Container(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(Icons.shopping_cart, color: Colors.grey,),
                      SizedBox(width: 5,),
                      Flexible(child: Text('Compra mais recente em RiotGames no valor de R\$ 87,00',style: TextStyle(color: Colors.grey, fontSize: 13),)),
                      Icon(Icons.chevron_right, color: Colors.grey[400], size: 18,)

                    ],
                  ),
                ),
              color: Colors.grey[200],
              ),
          ),
        ],
      ),
    );
  }
}
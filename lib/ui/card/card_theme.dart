import 'package:flutter/material.dart';

class Card_Theme extends StatelessWidget {
  const Card_Theme({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 20,right: 20,),
      color: Colors.blue,
      shadowColor: Colors.black,
      elevation: 10,
      child: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 20,
              margin: EdgeInsets.only(left: 10,right: 10,top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sales Statistics',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.bold
                      )
                  ),
                  Row(
                    children:[ Text('Change action view',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15
                        )
                    ),
                      SizedBox(width: 5,),
                      InkWell(
                        onTap: () {},
                        child: Icon(Icons.keyboard_arrow_right,
                        color:Colors.white ,
                        ),
                      )
                    ]
                  ),
                ],
              ),
            ),
            SizedBox(height: 8,),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 10,right: 10,),
              height: 20,
              child: Text(
                'Project Manager',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                  )
              ),
            ),
            SizedBox(height: 10,),
            Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.only(left: 10,right: 10,),
              height: 20,
              child: Text(
                  'React, HTML',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  )
              ),
            ),
            SizedBox(height: 15,),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.0),
                side: BorderSide(
                  color: Colors.white, // Màu sắc của đường viền
                  width: 4.0, // Độ dày của đường viền
                ),),
              margin: EdgeInsets.only(right: 10,left: 10),
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.white,
                ),
                child: Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                      Text('Todays Revenue'),
                      SizedBox(height: 20,),
                      Text('10,000 USD',style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Text('+12,5 %',style: TextStyle(
                            color: Colors.green
                          ),),
                          SizedBox(width: 10,),
                          Container(
                            width: 1,
                            height: 20,
                            color: Colors.black,
                          ),
                          SizedBox(width: 10,),
                          Text('313 Oders',style: TextStyle(
                              color: Colors.blue
                          ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20,),
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 100,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                                color: Colors.black12
                            ),
                            child: Center(
                                child: Text('16 fresh orders',
                                style: TextStyle(
                                  fontSize: 12
                                ),)
                            ),
                          ),
                          SizedBox(width: 25,),
                          Container(
                            height: 20,
                            width: 120,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                color: Colors.black12
                            ),
                            child: Center(
                                child: Text('20 available orders',
                                  style: TextStyle(
                                      fontSize: 12
                                  ),)
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

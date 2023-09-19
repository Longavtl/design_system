import 'package:design_system/ui/button/button.dart';
import 'package:design_system/ui/card/card_items.dart';
import 'package:flutter/material.dart';

class Card_Theme extends StatelessWidget {
  const Card_Theme({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color:Colors.amber,
        height: 1000,
        child: Stack(
          children:[
            Positioned(
              top: 0,
              child: Container(
                color: Colors.blue,
                height: 483,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
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
                          InkWell(
                            onTap: () {
                              ///
                            },
                            child: Row(
                              children: [
                                Text('Change action view', style: TextStyle(color: Colors.white,fontSize: 14),),
                                SizedBox(width: 8,),
                                Icon(Icons.chevron_right_rounded,color: Colors.white,)
                              ],
                            ),
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
                  ]
                ),
            )
            ),
            Positioned.fill(
              top: 146,
              left: 0,
              child: Column(
                children:[
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                  side: BorderSide(
                    color: Colors.white, // Màu sắc của đường viền
                    width: 4.0, // Độ dày của đường viền
                  ),),
                margin: EdgeInsets.only(right: 10,left: 10),
                child: Container(
                  width: 334,
                  height: 198,
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
                          ),
                      ]
                  ),
                 ),
                ),
              ),
                  GridView.count(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    crossAxisCount: 2, // Số cột bạn muốn hiển thị// Tỉ lệ giữa chiều rộng và chiều cao của mỗi item
                    children: List.generate(6, (index) {
                      return Card_Items(
                        img: 'assets/icons/card_items/card_item2.png',
                        bodyText: 'New project',
                        contentText: 'long',
                        subTile: 'long',
                      );
                    }),
                  )
                ],
    ),
    )])));
  }
}

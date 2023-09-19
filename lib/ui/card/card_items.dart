import 'package:flutter/material.dart';

class Card_Items extends StatelessWidget {
  Card_Items({
    required this.img,
    required this.contentText,
    required this.subTile,
    required this.bodyText
}) ;
  String img ;
  String contentText;
  String subTile;
  String bodyText;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        margin: EdgeInsets.zero,
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
          side: BorderSide(
            color: Colors.white, // Màu sắc của đường viền
            width: 4.0, // Độ dày của đường viền
          ),),
        child: Container(
          width: 155,
          height: 182,
          child: Center(
            child: Container(
              width: 123,
              height: 150,
              child: Column(
                children: [
                  Container(
                  height: 56,
                  width: 150,
                  alignment: Alignment.topLeft,
                  child: Image.asset(img,fit:BoxFit.cover),
                ),
                  Container(
                    width: 123,
                    height: 90,
                    padding: EdgeInsets.only(top: 8,bottom: 8),
                    child: Column(
                      children: [
                        Container(
                            child: Text(contentText,
                            style: TextStyle(
                              fontSize:16,
                              fontWeight: FontWeight.bold
                            )
                            ),
                            alignment: Alignment.topLeft,
                            height: 24,
                        ),
                        SizedBox(height: 4,),
                        Container(
                          child: Text(subTile,
                          style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 12
                          )
                          ),
                          alignment: Alignment.topLeft,
                          height: 16,
                        ),
                        SizedBox(height: 6,),
                        Container(
                          child: Text(bodyText,
                              style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14
                              )
                          ),
                          alignment: Alignment.topLeft,
                          height: 22,
                        )
                      ],
                    ),
                  )
                ]
              ),
            ),
          ),
        ),
      ),
    );
  }
}

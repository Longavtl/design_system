import 'package:flutter/material.dart';

class SearchBarCustom extends StatelessWidget {
  const SearchBarCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      width: 414,
      padding: EdgeInsets.only(bottom: 8,top: 8,left: 16,right: 16),
      child: Container(
        width: 382,
        height: 32,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.amber
        ),
      ),
    );
  }
}

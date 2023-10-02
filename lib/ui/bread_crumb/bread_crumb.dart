import 'package:breadcrumbs/breadcrumbs.dart';
import 'package:flutter/material.dart';

class Bread_Scrumb extends StatelessWidget {
   Bread_Scrumb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildBreadcrumb('This is a test long av tl'),

              Breadcrumbs(
                crumbs: [
                  TextSpan(text: 'This'),
                  TextSpan(text: 'is'),
                  TextSpan(text: 'another'),
                  TextSpan(text: 'test'),
                ],
                separator: ' > ',
                style: TextStyle(color: Colors.black),
              ),
              Breadcrumbs(
                crumbs: [
                  TextSpan(text: 'This'),
                  TextSpan(text: 'is'),
                  TextSpan(text: 'another'),
                  TextSpan(text: 'test'),
                  TextSpan(text: 'with'),
                  TextSpan(text: 'an'),
                  TextSpan(text: 'overflow'),
                  TextSpan(text: 'somewhere'),
                ],
                separator: ' > ',
                style: TextStyle(color: Colors.black),
              ),
              Breadcrumbs(
                crumbs: [
                  TextSpan(text: 'These breacrumbs'),
                  TextSpan(text: 'will'),
                  TextSpan(
                      text: 'always overflow because I am a super long text'
                  ),
                ],
                separator: ' > ',
                style: TextStyle(color: Colors.blue),
              ),
            ],
    );
  }
   Widget _buildBreadcrumb(String text) {
     final list = text.split(' ');
     return Breadcrumbs.builder(
       itemCount: list.length,
       itemBuilder: (context, index) => TextSpan(
         text: list[index],
       ),
       style: TextStyle(color: Colors.black),
     );
   }
  }

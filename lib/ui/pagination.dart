import 'package:design_system/ui/paginationItem.dart';
import 'package:flutter/material.dart';

enum Type { basic, advance }
enum K { yes, no }

class Pagination extends StatefulWidget {
  
  final int totalValue;
  int currentValue;
  int startValue;
  int endValue;
  final Type listChild;
  final K textField;
  final K withLabel;

  Pagination({
    this.totalValue = 5,
    this.currentValue = 1,
    this.startValue = 1,
    this.endValue = 4,
    required this.listChild,
    required this.textField,
    required this.withLabel
  });

  @override
  State<Pagination> createState() => _PaginationState();
}

class _PaginationState extends State<Pagination> {
  @override
  Widget build(BuildContext context) {

    return widget.withLabel == K.no
    ? Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          widget.currentValue > 1 ? InkWell(
            onTap: (){
              setState(() {
                widget.currentValue--;
                if (widget.currentValue<=5 && widget.startValue > 1) {
                  widget.startValue--;
                  widget.endValue--;
                };
              });
            },
            child: Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.white
              ),
              child: const Center(
                child: Icon(Icons.arrow_back_ios_new,
                color: Colors.black,
                size: 14)
              ),
            ),
          ) : Container(),
          for (int i = widget.startValue; i <= widget.endValue; i++)
            InkWell(
              onTap: () {
                setState(() {
                  widget.currentValue = i;
                });
              },
              child: PaginationItem(
                status: i == widget.currentValue ? Status.active : Status.fdefault,
                value: i.toString()
              ),
            ),
            widget.currentValue < widget.totalValue ? InkWell(
            onTap: (){
              setState(() {
                widget.currentValue++;
                if (widget.currentValue>=4 && widget.endValue < widget.totalValue) {
                  widget.startValue++;
                  widget.endValue++;
                };
              });
            },
            child: Container(
              margin: EdgeInsets.only(
                left: 8.0
              ),
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.white
              ),
              child: const Center(
                child: Icon(Icons.arrow_forward_ios,
                color: Colors.black,
                size: 14)
              ),
            ),
          ) : Container(),
        ],
      )
    )
    : Container();
  }
}
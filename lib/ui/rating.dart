
import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  
  final String style;
  final String rated;
  final String labelPosition;
  final String label;

  Rating({
    required this.style,
    required this.rated,
    required this.labelPosition,
    this.label = "Label"
  });

  @override
  Widget build(BuildContext context) {
    int count = style == "One star" ? 1 : style == "Full star" ? 5 : 0;
    Icon star = rated == "Yes" ? const Icon(Icons.star, color: Colors.yellow) : const Icon(Icons.star_border);
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          child: (labelPosition == "Left") 
          ? Text(label, style: const TextStyle(
            fontSize: 14,
          ),) 
          : null
        ),
        for (int i = 0; i < count; i++)
          star,
        Container(
          child: (labelPosition == "Right") ? Text(label) : null
        ),
      ],
    );
  }

}
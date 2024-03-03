import 'package:flutter/material.dart';

class Homewidget extends StatelessWidget {
  const Homewidget({
    super.key,
    required this.title,
    
    this.icon,
    
    this.colour,
  });
  final String? title;
  final Color? colour;
  final IconData? icon;
   


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: (){},
            child: CircleAvatar(
              radius: 25,
              child: Icon(icon),
            ),
          ),
        ),
         Text(
          title!,
          style: const TextStyle(
              fontWeight: FontWeight.w500, fontSize: 18, color: Colors.black),
        ),
      ],
    );
  }
}

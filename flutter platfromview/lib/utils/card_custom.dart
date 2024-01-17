import 'package:flutter/material.dart';
class CustomCard extends StatelessWidget {
  final Widget child;
  final Color color;
  final double elevation;
  final EdgeInsets margin;

  CustomCard({required this.child, this.color = Colors.white, this.elevation = 0,this.margin=const EdgeInsets.all(8.0)});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: this.child,
      color: this.color,
      elevation: this.elevation,
      margin:EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}
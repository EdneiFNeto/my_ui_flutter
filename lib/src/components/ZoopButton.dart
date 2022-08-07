import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:zoop_ui/src/components/ZoopText.dart';

import '../model/ZoopColor.dart';

class ZoopButton extends StatelessWidget {

  final ZoopColor? color;
  final String title;
  final double? width;
  final double? height;
  final void Function() onClick;

  ZoopButton({ 
    required this.title, 
    this.color, 
    required this.onClick,
    this.width,
    this.height
  });

  @override
  Widget build(BuildContext context){
    return  Container(
      width: width ?? double.infinity,
      height: height ?? 60,
      margin: const EdgeInsets.all(8),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: color != null ? color?.buttonColor  :const Color(0xFFFF7300),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        ),
        onPressed: onClick,
        child: ZoopText(title: title, color: color),
      ),
    );
  }
}
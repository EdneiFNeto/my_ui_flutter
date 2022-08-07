import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zoop_ui/src/model/ZoopColor.dart';

class ZoopText extends StatelessWidget {

  final ZoopColor? color;
  final String title;
  final double? fontSize;
  final TextAlign? textAlign;

  ZoopText({
    required this.title, 
    this.color, 
    this.fontSize,
    this.textAlign
  });

  @override
  Widget build(BuildContext context){
    return  Text(
      title,  
      textAlign: textAlign ?? TextAlign.center,
      style: GoogleFonts.roboto(
        textStyle: TextStyle(
          fontSize: fontSize ?? 16,
          color: color != null ?  color?.textColor :const Color.fromARGB(254, 253, 253, 253)
        )
      )
    );
  }
}
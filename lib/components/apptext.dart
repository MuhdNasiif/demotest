import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppText extends StatelessWidget {
  const AppText(this.text,
      {super.key,
      this.color,
      this.size = 14,
      this.align,
      this.maxLines,
      this.family,
      this.weight,
      this.style,
      this.overflow,
      this.decoration});

  final dynamic text;
  final String? family;
  final Color? color;
  final double? size;
  final FontWeight? weight;
  final TextAlign? align;
  final int? maxLines;
  final TextStyle? style;

  final TextOverflow? overflow;
  final Decoration? decoration;

  @override
  Widget build(BuildContext context) {
    return Text('${text ?? ''}',
        maxLines: maxLines,
        overflow: overflow,
        style: GoogleFonts.poppins(
          fontWeight: weight,
          fontSize: size,
          color: color,
          decoration:TextDecoration.none,
          
        ),
        textAlign: align);
  }
}

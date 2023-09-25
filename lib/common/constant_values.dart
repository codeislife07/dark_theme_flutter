
import 'package:e_learner_app_flutter/common/theme/fonts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double height=690;
double width=360;

TextTheme? customeTextStyle({double fontSize=15,Color? color, required BuildContext context}){
  return Theme.of(context).textTheme.copyWith(
    bodySmall:  GoogleFonts.getFont(
      fontHeader,
      textStyle: Theme.of(context).textTheme.displayLarge!.copyWith(
        fontWeight: FontWeight.w700,
        fontSize: fontSize,
        color: color
      ),
    )
  );
}
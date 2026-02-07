import 'package:flutter/painting.dart';
import 'package:google_fonts/google_fonts.dart';

class Styles {
static  TextStyle largeTextRegular (Color color){
  return GoogleFonts.inter(color: color,fontWeight: FontWeight.w400,fontSize: 20);

}
static  TextStyle largeTextSemiBold (Color color){
  return GoogleFonts.inter(color: color,fontWeight: FontWeight.w600,fontSize: 20);

}
static  TextStyle fontBold (Color color){
  return GoogleFonts.inter(color: color,fontWeight: FontWeight.w700,fontSize: 18);

}
static  TextStyle fontMedium (Color color){
  return GoogleFonts.inter(color: color,fontWeight: FontWeight.w500,fontSize: 16);

}
static  TextStyle fontSemiMedium (Color color){
  return GoogleFonts.inter(color: color,fontWeight: FontWeight.w600,fontSize: 16);

}
static  TextStyle fontNormal (Color color){
  return GoogleFonts.inter(color: color,fontWeight: FontWeight.w400,fontSize: 14);

}
static  TextStyle smallTextMedium (Color color){
  return GoogleFonts.inter(color: color,fontWeight: FontWeight.w500,fontSize: 14);

}
static  TextStyle smallTextSemiBold (Color color){
  return GoogleFonts.inter(color: color,fontWeight: FontWeight.w600,fontSize: 14);

}
static  TextStyle fontSmallNormal (Color color){
  return GoogleFonts.inter(color: color,fontWeight: FontWeight.w400,fontSize: 12);

}
static  TextStyle fontSmallBold (Color color){
  return GoogleFonts.inter(color: color,fontWeight: FontWeight.w700,fontSize: 12);

}
}
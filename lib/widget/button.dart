import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_bus_user_panel/common/style.dart';

class Button extends StatelessWidget {
  final String text;

  const Button({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12, horizontal: 130),
        decoration: BoxDecoration(
            color: Style.MainBColor, borderRadius: BorderRadius.circular(10.0)),
        child: Text(
          text,
          style: GoogleFonts.poppins(
              color: Colors.white, fontWeight: FontWeight.w400, fontSize: 14),
        ),
      ),
    );
  }
}

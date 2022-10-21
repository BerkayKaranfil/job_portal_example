import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeTextFormFieldWidget extends StatefulWidget {
  const HomeTextFormFieldWidget({super.key});

  @override
  State<HomeTextFormFieldWidget> createState() =>
      _HomeTextFormFieldWidgetState();
}

class _HomeTextFormFieldWidgetState extends State<HomeTextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      width: 335,
      decoration: BoxDecoration(
        color: Color(0xff0C0D15),
        borderRadius: BorderRadius.circular(12),
      ),
      child: TextFormField(
        cursorColor: Colors.white,
        decoration: InputDecoration(
          hintText: "Search job or company...",
          hintStyle: GoogleFonts.inter(color: Color(0xff94A3B8), fontSize: 15),
          prefixIcon: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset("assets/homeassets/search.svg")),
          prefixIconColor: Color(0xffFFFFFF),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Color(0xff334155)),
              borderRadius: BorderRadius.circular(12)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Color(0xff334155)),
              borderRadius: BorderRadius.circular(12)),
          focusColor: Color(0xff334155),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
    );
  }
}

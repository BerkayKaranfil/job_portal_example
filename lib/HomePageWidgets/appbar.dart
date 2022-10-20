import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class AppbarWidget extends StatefulWidget {
  const AppbarWidget({super.key});

  @override
  State<AppbarWidget> createState() => _AppbarWidgetState();
}

class _AppbarWidgetState extends State<AppbarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      width: 375,
      decoration: BoxDecoration(
        color: Color(0xff0C0D15),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 4, bottom: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text("Welcome!",
                    style: GoogleFonts.inter(
                        color: Color(0xff94A3B8),
                        fontSize: 12,
                        fontWeight: FontWeight.w500)),
                SizedBox(
                  height: 4,
                ),
                Text(
                  "Jon Doe",
                  style: GoogleFonts.inter(
                      color: Color(0xffF8FAFC),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Image.asset(
              "assets/homeassets/Notification.png",
              scale: .9,
            ),
          ],
        ),
      ),
    );
  }
}

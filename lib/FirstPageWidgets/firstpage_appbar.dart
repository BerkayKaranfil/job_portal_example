import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FirstPageAppbarWidget extends StatefulWidget {
  const FirstPageAppbarWidget({super.key});

  @override
  State<FirstPageAppbarWidget> createState() => _FirstPageAppbarWidgetState();
}

class _FirstPageAppbarWidgetState extends State<FirstPageAppbarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: double.infinity,
      decoration: BoxDecoration(color: Color(0xff0C0D15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
              onTap: () {
                setState(() {});
              },
              child: SvgPicture.asset(
                  "assets/homeassets/firstassets/arrowleft.svg")),
          Row(
            children: [
              SvgPicture.asset(
                  "assets/homeassets/firstassets/firstfavorite.svg"),
              SizedBox(
                width: 20,
              ),
              SvgPicture.asset(
                  "assets/homeassets/firstassets/outline.svg"),
            ],
          )
        ],
      ),
    );
  }
}

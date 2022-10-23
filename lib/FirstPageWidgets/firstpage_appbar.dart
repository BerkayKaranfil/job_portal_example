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
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Container(
            height: 50,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Color(0xff0C0D15)
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(onTap: () {
                  setState(() {
                    
                  });
                }, child: SvgPicture.asset("assetName")),
                Row(
                  children: [
                    SvgPicture.asset("assetName"),
                    SizedBox(
                      width: 10,
                    ),
                    SvgPicture.asset("assetName"),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
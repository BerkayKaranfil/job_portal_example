import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:job_portal_example/HomePageWidgets/appbar.dart';
import 'package:job_portal_example/HomePageWidgets/home_textformfield.dart';
import 'package:job_portal_example/HomePageWidgets/listview_item.dart';
import 'package:job_portal_example/items.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: ((context, items items, widget) {
      return Scaffold(
        backgroundColor: Color(0xff0C0D15),
        body: Padding(
          padding: const EdgeInsets.only(right: 20, left: 20),
          child: Column(
            children: [
              SizedBox(
                height: 44,
              ),
              AppbarWidget(),
              SizedBox(
                height: 16,
              ),
              HomeTextFormFieldWidget(),
              SizedBox(
                height: 22,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular Jobs", style: GoogleFonts.inter(fontSize: 17, color: Color(0xffF8FAFC), fontWeight: FontWeight.bold),),
                  Text("See All", style: GoogleFonts.inter(fontSize: 15, color: Color(0xff404040)),)
                ],
              ),
              SizedBox(
                height: 16,
              ),
              Container(
                height: 510,
                width: double.infinity,
                child: HomePageListViewWidget(),
              )
            ],
          ),
        ),
      );
    }));
  }
}
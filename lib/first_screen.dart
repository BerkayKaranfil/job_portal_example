import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:job_portal_example/FirstPageWidgets/firstpage_appbar.dart';
import 'package:job_portal_example/FirstPageWidgets/firstpage_job_detail.dart';
import 'package:job_portal_example/FirstPageWidgets/firstpage_mainbox.dart';
import 'package:job_portal_example/items.dart';
import 'package:provider/provider.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: ((context, items items, widget) {
      return Scaffold(
        backgroundColor: Color(0xff0C0D15),
        body: Column(
          children: [
            SizedBox(
              height: 44,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20,left: 20),
              child: FirstPageAppbarWidget(),
            ),
            SizedBox(
              height: 28,
            ),
            Container(
              height: 683,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff0E1926),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(32), topRight: Radius.circular(32))
              ),
              child: Column(
                children: [SizedBox(
                  height: 32,
                ),
                  FirstPageJobBoxWidget(),
                  SizedBox(
                    height: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20, left: 20),
                    child: Divider(thickness: 1, color: Color(0xff2B2D30),),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  
                ],
              ),
            ),
            
          ],
        ),
      );
    }));
  }
}
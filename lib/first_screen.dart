import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:job_portal_example/FirstPageWidgets/firstpage_appbar.dart';
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
            FirstPageAppbarWidget(),
            
          ],
        ),
      );
    }));
  }
}
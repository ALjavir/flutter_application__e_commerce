import 'package:flutter/material.dart';
import 'package:flutter_application__e_commerce/globalW/homepage_disc1.dart';
import 'package:flutter_application__e_commerce/pages/homepage.dart';
import 'package:flutter_application__e_commerce/utils/allcolor.dart';

class BNB extends StatefulWidget {
  const BNB({super.key});

  @override
  State<BNB> createState() => _BNBState();
}

class _BNBState extends State<BNB> {
  List<Widget> pagelist = [
    Homepage(),
    DisCount(),
  ];
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          currentIndex: num,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ""),
            BottomNavigationBarItem(
                icon: Icon(Icons.heart_broken_rounded), label: ""),
            // BottomNavigationBarItem(icon: Icon(Icons.list), label: "listV"),
            // BottomNavigationBarItem(
            //     icon: Icon(Icons.add_box), label: "Container"),
            // BottomNavigationBarItem(
            //     icon: Icon(Icons.text_fields_sharp), label: "Text"),
            // BottomNavigationBarItem(
            //     icon: Icon(Icons.fullscreen_sharp), label: "Expend"),
          ],
          selectedItemColor: Allcolor.blueColor,
          unselectedItemColor: Allcolor.homepagec2,
          onTap: (value) {
            setState(() {
              num = value;
            });
          },
        ),
      ),
      body: pagelist.elementAt(num),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application__e_commerce/utils/allcolor.dart';

class TextFild extends StatelessWidget {
  final String hintt;
  final TextEditingController;
  const TextFild({super.key, required this.hintt, this.TextEditingController});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          //color: Colors.white.withOpacity(0.50),
          color: Allcolor.blueColor.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 1),
          child: TextField(
            controller: TextEditingController,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hintt,
              hintStyle: TextStyle(fontSize: 14),
              contentPadding: EdgeInsets.only(left: 13.0),
            ),
          ),
        ),
      ),
    );
  }
}

    //Padding(
    //   padding: const EdgeInsets.fromLTRB(20, 0, 20, 15),
    //   child: Container(
    //     decoration: BoxDecoration(
    //         color: Allcolor.email_fill_color,
    //         borderRadius: BorderRadius.circular(10)),
    //     child: TextField(
    //       controller: TextEditingController,
    //       decoration: InputDecoration(
    //           border: InputBorder.none,
    //           hintText: hintt,
    //           contentPadding: EdgeInsets.only(left: 13.0)),
    //     ),
    //   ),
    // );

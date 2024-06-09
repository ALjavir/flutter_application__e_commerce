// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application__e_commerce/utils/allcolor.dart';

class MyElevatedButton extends StatelessWidget {
  final double width;
  final double height;
  final VoidCallback onPressed;
  final String buttonText;

  const MyElevatedButton({
    Key? key,
    required this.width,
    required this.height,
    required this.onPressed,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Allcolor.blueColor),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        child: Center(
          child: Text(
            buttonText,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}


// MyElevatedButton(
//   width: 120,
//   onPressed: () {
//     // Add your login logic here
//   },
//   buttonText: 'Login',
// ),



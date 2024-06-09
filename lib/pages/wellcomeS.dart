import 'package:flutter/material.dart';
import 'package:flutter_application__e_commerce/pages/loginS.dart';
import 'package:flutter_application__e_commerce/pages/registerS.dart';
import 'package:flutter_application__e_commerce/utils/allcolor.dart';
import 'package:flutter_application__e_commerce/utils/alltext.dart';

class WellS extends StatefulWidget {
  const WellS({super.key});

  @override
  State<WellS> createState() => _WellSState();
}

class _WellSState extends State<WellS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Container(
            alignment: Alignment.topCenter,
            child: Image.asset("assets/image/p1.png")),
        SizedBox(height: 25),
        Container(
          child: Text(
            Alltxt.wellcomeS_txt_1,
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Allcolor.blueColor),
          ),
        ),
        SizedBox(height: 15),
        Container(
          child: Text(
            Alltxt.wellcomeS_txt_2,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Allcolor.blackColor),
          ),
        ),
        SizedBox(
          height: 100,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 50,
              width: 120,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => LoginS()));
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Allcolor.blueColor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    'Login',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 70,
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => RgS()));
              },
              child: Text(
                "Register",
                style: TextStyle(
                  color: Allcolor.blackColor,
                  fontWeight: FontWeight.w500,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}

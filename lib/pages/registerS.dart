import 'package:flutter/material.dart';
import 'package:flutter_application__e_commerce/globalW/elButton.dart';
import 'package:flutter_application__e_commerce/globalW/txtfild.dart';
import 'package:flutter_application__e_commerce/pages/bottomN.dart';
import 'package:flutter_application__e_commerce/utils/allcolor.dart';
import 'package:flutter_application__e_commerce/utils/alltext.dart';

class RgS extends StatefulWidget {
  const RgS({super.key});

  @override
  State<RgS> createState() => _RgSState();
}

class _RgSState extends State<RgS> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController passwordCon = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(29, 100, 29, 10),
        child: Center(
          child: Column(
            children: [
              Container(
                child: Text(
                  "Create Account",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: Allcolor.blueColor),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                child: Text(
                  Alltxt.loginS2_2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: Allcolor.blackColor),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                  child: TextFild(
                TextEditingController: email,
                hintt: 'Email',
              )),
              Container(
                  child: TextFild(
                TextEditingController: password,
                hintt: 'Password',
              )),
              Container(
                  child: TextFild(
                TextEditingController: passwordCon,
                hintt: 'Confirm Password',
              )),
              SizedBox(
                height: 25,
              ),
              Container(
                child: MyElevatedButton(
                  height: 50,
                  width: double.infinity,
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => BNB()));
                  },
                  buttonText: 'Sign up',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Already have an account",
                    style: TextStyle(
                      color: Allcolor.blackColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

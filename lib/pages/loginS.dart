import 'package:flutter/material.dart';
import 'package:flutter_application__e_commerce/globalW/elButton.dart';
import 'package:flutter_application__e_commerce/globalW/txtfild.dart';
import 'package:flutter_application__e_commerce/pages/bottomN.dart';
import 'package:flutter_application__e_commerce/pages/registerS.dart';
import 'package:flutter_application__e_commerce/utils/allcolor.dart';
import 'package:flutter_application__e_commerce/utils/alltext.dart';

class LoginS extends StatefulWidget {
  const LoginS({super.key});

  @override
  State<LoginS> createState() => _LoginSState();
}

class _LoginSState extends State<LoginS> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  bool showpass = true;
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
                  Alltxt.loginS1_1,
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                      color: Allcolor.blueColor),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: Text(
                  Alltxt.loginS1_2,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
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
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.bottomRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forget your password?",
                    style: TextStyle(
                      color: Allcolor.blueColor,
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                child: MyElevatedButton(
                  height: 50,
                  width: double.infinity,
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => BNB()));
                  },
                  buttonText: 'Sign in',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) => RgS()));
                  },
                  child: Text(
                    Alltxt.loginS2_1,
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

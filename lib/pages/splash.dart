import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application__e_commerce/pages/wellcomeS.dart';
import 'package:flutter_application__e_commerce/utils/allcolor.dart';
import 'package:flutter_application__e_commerce/utils/alltext.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => WellS(),
      ));
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Allcolor.blueColor,
        height: double.infinity,
        width: double.infinity,
        child: Center(
          child: Text(
            Alltxt.spalsh,
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application__e_commerce/utils/allcolor.dart';
import 'package:flutter_application__e_commerce/utils/alltext.dart';

class DisCount extends StatefulWidget {
  const DisCount({super.key});

  @override
  State<DisCount> createState() => _DisCountState();
}

class _DisCountState extends State<DisCount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: Container(
          padding: EdgeInsets.fromLTRB(10, 8, 0, 8),
          height: 120,
          width: 280,
          decoration: BoxDecoration(
            color: Allcolor.blueColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              Container(
                width: 160,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        height: 50,
                        child: Flexible(
                            child: Text(
                          Disstxt.dis1,
                          style: TextStyle(color: Colors.white),
                        ))),
                    Container(
                      padding: EdgeInsets.only(top: 15),
                      alignment: Alignment.bottomLeft,
                      child: ElevatedButton(
                          onPressed: () {}, child: Text("Get now")),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Image.asset(
                  'assets/image/dis1.png',
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

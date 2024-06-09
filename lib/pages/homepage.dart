import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application__e_commerce/globalW/homeitemdata.dart';
import 'package:flutter_application__e_commerce/globalW/homepage_disc1.dart';
import 'package:flutter_application__e_commerce/utils/allcolor.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<Map<String, String>> cat = [
    {"icon": "assets/image/Vector (1).png"},
    {"icon": "assets/image/Vector (2).png"},
    {"icon": "assets/image/Vector (3).png"},
    {"icon": "assets/image/Vector (3).png"},
    {"icon": "assets/image/Vector (4).png"},
    {"icon": "assets/image/Vector (5).png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [Icon(Icons.search, size: 30), SizedBox(width: 12)],
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 10, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello Fola",
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
              Text(
                "Let's start shopping!",
                style: TextStyle(color: Colors.black.withOpacity(.5)),
              ),
              Padding(padding: EdgeInsets.only(bottom: 20)),
              Container(
                height: 150,
                width: double.infinity,
                child: CarouselSlider.builder(
                    itemCount: 3,
                    itemBuilder: (context, index, realIndex) {
                      return DisCount();
                    },
                    options: CarouselOptions(
                      autoPlay: false,
                      autoPlayAnimationDuration: Duration(seconds: 2),
                      autoPlayCurve: Curves.linear,
                      enlargeCenterPage: true,
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Categories",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  ),
                  TextButton(
                      onPressed: () {},
                      child: Text(
                        "See all",
                        style: TextStyle(color: Allcolor.blueColor),
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: SizedBox(
                  height: 65,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: false,
                      itemCount: 5,
                      itemBuilder: (contex, index) {
                        return Container(
                          margin: EdgeInsets.only(right: 10),
                          width: 64,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: Allcolor.homepagec1,
                              border: Border.all(
                                color: Allcolor.homepagec2,
                              )),
                          child:
                              Center(child: Image.asset(cat[index]["icon"]!)),
                        );
                      }),
                ),
              ),
              GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15),
                  itemCount: 6,
                  shrinkWrap: true,
                  itemBuilder: (contex, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 10),
                      width: 64,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Allcolor.homepagec1,
                          border: Border.all(
                            color: Allcolor.homepagec2,
                          )),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(12, 12, 0, 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //Text(itemlist[index].off),
                            //Image.asset(itemlist[index].image,
                            //fit: BoxFit.cover),
                            Text(
                              itemlist[index].name,
                              style: TextStyle(fontSize: 10),
                            ),
                            Text(itemlist[index].off_price,
                                style: TextStyle(fontSize: 10)),
                            //Text(itemlist[index].price),
                          ],
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}

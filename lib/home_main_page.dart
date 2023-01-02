import 'package:flutter/material.dart';
import 'package:flexible_scrollbar/flexible_scrollbar.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'dart:math';

class menuPage extends StatefulWidget {
  @override
  _registerpages createState() => _registerpages();
}

class _registerpages extends State<menuPage> {
  _registerpages({Key});

  String foodname = "COFFESS";
  var pageName = 'Coffess';
  int presspagenumber = 0;

  choosenBoxColor(index) {
    if (index == presspagenumber) {
      return Color.fromARGB(255, 255, 139, 139);
    } else {
      return Color.fromARGB(255, 206, 88, 88);
    }
  }

  @override
  Widget build(BuildContext context) {
    var sizes = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 100,
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Hello, Emir!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  padding: EdgeInsets.all(15),
                  splashRadius: 25,
                  icon: Container(
                    child: Icon(Icons.menu),
                    padding: EdgeInsets.only(top: 4),
                    margin: EdgeInsets.only(bottom: 3),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white.withOpacity(0.25),
                          spreadRadius: 10,
                          blurRadius: 0,
                          offset: Offset(0, 5), // changes position of shadow
                        ),
                      ],
                    ),
                  )),
            ],
          )),
      backgroundColor: Color.fromARGB(255, 107, 37, 37),
      body: Scrollbar(
        child: ListView(
          children: [
            Container(
              alignment: Alignment.centerLeft,
              child: Text(
                "$foodname",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                    color: Colors.white60),
              ),
              margin: EdgeInsets.only(left: 17),
            ),
            Container(
              margin: EdgeInsets.only(top: 20, left: 10, right: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: Colors.white),
              child: Row(
                children: [
                  IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                  Text(
                    "Search",
                    style: TextStyle(fontSize: 15, color: Colors.black26),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            Align(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 400,
                    width: 100,
                    child: Scrollbar(
                      thickness: 0,
                      child: ListView.builder(
                          itemBuilder: (_, index) {
                            return Container(
                              child: TextButton(
                                child: RotatedBox(
                                  quarterTurns: 3,
                                  child: Text(
                                    "${categoryTitle[index]}",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  setState(() {
                                    presspagenumber = index;
                                    pageName = categoryTitle[index];
                                    foodname =
                                        categoryTitle[index].toUpperCase();
                                  });
                                },
                              ),
                              margin: EdgeInsets.only(left: 20, top: 10),
                              alignment: Alignment.center,
                              width: 75,
                              height: 100,
                              decoration: BoxDecoration(
                                  color: choosenBoxColor(index),
                                  borderRadius: BorderRadius.circular(15)),
                            );
                          },
                          itemCount: categoryTitle.length),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Container(
                    height: 400,
                    width: 2,
                    decoration: BoxDecoration(color: Colors.white),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 30),
                    height: 500,
                    width: 200,
                    color: Colors.transparent,
                    child: Scrollbar(
                      thickness: 0,
                      child: ListWheelScrollView(
                        itemExtent: 255,
                        physics: BouncingScrollPhysics(),
                        overAndUnderCenterOpacity: 0.5,
                        children: List.generate(
                          foods['Coffess']!.length,
                          (index) => Container(
                            margin: EdgeInsets.all(10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Align(
                                  child: IconButton(
                                      onPressed: () {},
                                      splashRadius: 15,
                                      icon: Icon(Icons.shopping_cart)),
                                  alignment: Alignment.topRight,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Padding(padding: EdgeInsets.only(left: 40)),
                                    Center(
                                      child: Column(
                                        children: [
                                          Text(
                                            "${foods[pageName]?[0][index]}",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 213, 125, 125),
                                                fontSize: 17),
                                          ),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 20)),
                                          Text(
                                            "₺${foods[pageName]?[1][index]}",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 22,
                                                color: Color.fromARGB(
                                                    255, 152, 33, 33)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  child: Image.asset(
                                    '${foods[pageName]?[2][index]}',
                                    height: 100,
                                    width: 100,
                                  ),
                                  alignment: Alignment.bottomLeft,
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(200.0),
                                  topRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                  bottomRight: Radius.circular(50)),
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.white,
                                    spreadRadius: 3,
                                    blurRadius: 5),
                              ],
                            ),
                            height: 250,
                            width: 150,
                          ),
                        ),
                      ),
                    ),

                  ),
                ],
              ),
              alignment: Alignment.centerLeft,
            )
          ],
        ),
      ),
    );
  }
}

var categoryTitle = [
  'Coffess',
  'Snacks',
  'Desserts',
];

var foodTitle = ['Coffee', 'Snakers', 'Desserts'];

Map<String, List<List<String>>> foods = {
  'Coffess': [
    [
      'Latte \n'
          'Coffee',
      'Latte \n'
          'Coffee',
      'Latte \n'
          'Coffee',
      'Latte \n'
          'Coffee'
    ],
    ['150', '150', '150', '150'],
    [
      'lib/pictures/download.png',
      'lib/pictures/download.png',
      'lib/pictures/download.png',
      'lib/pictures/download.png',
    ]
  ],
  'Snacks': [
    [
      'Snickers \n'
          'Snack',
      'Snickers \n'
          'Snack',
      'Snickers \n'
          'Snack',
      'Snickers \n'
          'Snack'
    ],
    ['50', '50', '50', '50'],
    [
      'lib/pictures/shopping.png',
      'lib/pictures/shopping.png',
      'lib/pictures/shopping.png',
      'lib/pictures/shopping.png',
    ]
  ],
  'Desserts': [
    [
      'Cheesecake \n'
          'Dessert',
      'Cheesecake \n'
          'Dessert',
      'Cheesecake \n'
          'Dessert',
      'Cheesecake \n'
          'Dessert'
    ],
    ['200', '200', '200', '200'],
    [
      'lib/pictures/cake.png',
      'lib/pictures/cake.png',
      'lib/pictures/cake.png',
      'lib/pictures/cake.png',
    ]
  ],
};

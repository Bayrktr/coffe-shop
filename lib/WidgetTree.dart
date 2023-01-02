import 'package:coffe_ui/home_main_page.dart';
import 'package:coffe_ui/settingspage.dart';
import 'package:flutter/material.dart';
import 'package:flexible_scrollbar/flexible_scrollbar.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

import 'dart:math';

class mainpage extends StatefulWidget {
  @override
  _registerpages createState() => _registerpages();
}

class _registerpages extends State<mainpage> {
  _registerpages({Key});

  @override
  Widget build(BuildContext context) {
    var sizes = MediaQuery.of(context).size;
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        extendBody: true,
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20)),
            boxShadow: [
              BoxShadow(color: Colors.white24, spreadRadius: 0, blurRadius: 10),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: BottomAppBar(
              color: Color.fromARGB(255, 165, 80, 80),
              child: TabBar(
                indicatorColor: Colors.white24,
                indicatorWeight: 3,
                labelPadding: EdgeInsets.all(5),
                tabs: [
                  Icon(
                    MdiIcons.coffee,
                    size: 25,
                  ),
                  Icon(
                    MdiIcons.shoppingOutline,
                    size: 25,
                  ),
                  Icon(
                    Icons.location_on,
                    size: 25,
                  ),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          children: [menuPage(), menuPage(), menuPage()],
        ),
        drawer: ClipRRect(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(10.0),
            bottom: Radius.circular(10.0),
          ),
          child: Drawer(
            width: 250,
            child: Container(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 210, 133, 133)),
              child: Column(
                children: [
                  Container(
                    height: 125,
                    /*
                    child: DrawerHeader(
                      child: Align(
                        child: Text(
                          'Akıllı Menum',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              decorationThickness: 5,
                              decorationColor: Colors.black),
                        ),
                        alignment: Alignment.bottomLeft,
                      ),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('lib/pictures/logo.png'),
                              fit: BoxFit.fill)),
                    ),

                     */
                  ),
                  Container(
                    child: ListTile(
                      leading: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Your Profile',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      onTap: () {},
                    ),
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(width: 1.0, color: Colors.white24),
                    )),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(width: 1.0, color: Colors.white24),
                    )),
                    child: ListTile(
                      leading: Icon(
                        Icons.location_on,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Points',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      onTap: () {},
                    ),
                  ),
                  Container(
                    child: ListTile(
                      leading: Icon(
                        MdiIcons.history,
                        color: Colors.white,
                      ),
                      title: Text(
                        'Shopping History',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      onTap: () {},
                    ),
                    decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 1.0, color: Colors.white24),
                        )),
                  ),

                  Expanded(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Text(
                        '',
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ),
                  Container(
                      child: Align(
                          alignment: FractionalOffset.bottomCenter,
                          child: Container(
                              child: Column(
                            children: <Widget>[
                              ListTile(
                                leading: Icon(
                                  Icons.settings,
                                  color: Colors.white,
                                ),
                                title: Text('Settings & Help',
                                    style: TextStyle(fontSize: 15)),
                                onTap: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => settingpages(
                                      )));
                                },
                              ),
                              ListTile(
                                leading: Icon(
                                  MdiIcons.exitToApp,
                                  color: Colors.white,
                                ),
                                title: Text('Exit',
                                    style: TextStyle(fontSize: 15)),
                                onTap: () {
                                  SystemNavigator.pop();
                                },
                              ),
                            ],
                          ))))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

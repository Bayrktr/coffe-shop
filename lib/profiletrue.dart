import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class profiletruepage extends StatefulWidget {
  @override
  _registerpages createState() => _registerpages();
}

class _registerpages extends State<profiletruepage> {
  _registerpages({Key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(230, 255, 255, 255),
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          bottomOpacity: 0.0,
          elevation: 0.0,
          leadingWidth: 75,
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back, color: Colors.black, size: 30),
          )),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Center(
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://img.a.transfermarkt.technology/portrait/big/28003-1671435885.jpg?lm=1'),
                    radius: 65,
                    child: Align(
                      child: IconButton(
                          splashRadius: 20,
                          onPressed: () {},
                          icon: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.pinkAccent,
                            ),
                            alignment: Alignment.center,
                            child: Icon(
                              Icons.add_a_photo,
                              color: Colors.white,
                              size: 18,
                            ),
                          )),
                      alignment: Alignment.bottomRight,
                    ),
                  ),
                ),
              ),
              ListTile(
                  title: Center(
                    child: Text(
                      "Lionel Messi",
                      style: TextStyle(fontWeight: FontWeight.w600),
                    ),
                  ),
                  subtitle: Center(
                    child: Text(
                      'Real Goat',
                      style: TextStyle(color: Colors.grey),
                    ),
                  )),
            ],
          ),
          Container(
            child: Column(
              children: [
                Column(
                  children: [
                    Container(
                      child: ListTile(
                        title: Text(
                          "Edit Profile",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        leading: Container(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.person,
                            color: Color.fromARGB(255, 250, 66, 147),
                          ),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 248, 158, 197),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ),
                      margin: EdgeInsets.only(top: 10),
                    ),
                    Container(
                      child: ListTile(
                        title: Text(
                          "My Stats",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        leading: Container(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.bar_chart,
                            color: Color.fromARGB(255, 2, 236, 105),
                          ),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 178, 232, 202),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ),
                      margin: EdgeInsets.only(top: 5),
                    ),
                    Container(
                      child: ListTile(
                        title: Text(
                          "Shopping History",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        leading: Container(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            Icons.settings,
                            color: Color.fromARGB(255, 162, 0, 255),
                          ),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 229, 188, 255),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ),
                      margin: EdgeInsets.only(top: 5, bottom: 10),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      color: Color.fromARGB(200, 200, 200, 200),
                      height: 1,
                    ),
                    Container(
                      child: ListTile(
                        title: Text(
                          "Invite a friend",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        leading: Container(
                          padding: EdgeInsets.all(10),
                          child: Icon(Icons.person_add, color: Colors.black),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 210, 210, 210),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ),
                      margin: EdgeInsets.only(top: 5),
                    ),
                    Container(
                      child: ListTile(
                        title: Text(
                          "Help",
                          style: TextStyle(fontWeight: FontWeight.w500),
                        ),
                        leading: Container(
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            MdiIcons.chatQuestion,
                            color: Colors.black,
                          ),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 210, 210, 210),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        trailing: Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ),
                      margin: EdgeInsets.only(top: 5, bottom: 5),
                    ),
                  ],
                ),
              ],
            ),
            height: size.height / 1.8,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                )),
          ),
        ],
      ),
    );
  }
}

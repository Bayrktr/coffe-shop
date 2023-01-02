import 'package:coffe_ui/WidgetTree.dart';
import 'package:coffe_ui/home_main_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class settingpages extends StatefulWidget {
  settingpages({Key});

  @override
  _RootPageState createState() => new _RootPageState();
}

class _RootPageState extends State<settingpages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => mainpage()));
            },
            padding: EdgeInsets.all(15),
            splashRadius: 25,
            icon: Container(
              child: Icon(Icons.arrow_back),
              padding: EdgeInsets.only(top: 4),
              margin: EdgeInsets.only(bottom: 3),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white24.withOpacity(0.4),
                    spreadRadius: 10,
                    blurRadius: 0,
                    offset: Offset(0, 5), // changes position of shadow
                  ),
                ],
              ),
            )),
      ),
      backgroundColor: Color.fromARGB(255, 255, 172, 172),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 20),
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: [
                    Container(
                      child: ListTile(
                          trailing: Icon(Icons.arrow_forward_ios_rounded),
                          title: Text(
                            "About",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text("Learn more about Akıllı Menum"),
                          leading: Container(
                            decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(5)),
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.question_mark_sharp,
                              color: Colors.black,
                              size: 30,
                            ),
                          )),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom:
                                  BorderSide(color: Colors.black26, width: 1))),
                    ),
                    ListTile(
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                        title: Text(
                          "Send Feedback",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text("Give your feedback about Akıllı Menum"),
                        leading: Container(
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(5)),
                          padding: EdgeInsets.all(10),
                          child: Icon(
                            MdiIcons.chat,
                            color: Colors.black,
                            size: 30,
                          ),
                        )),
                  ],
                )),
            Column(
              children: [
                Align(
                  child: Padding(
                    child: Text(
                      "Account",
                      style: GoogleFonts.abel(
                          fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    padding: EdgeInsets.only(left: 10),
                  ),
                  alignment: Alignment.topLeft,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      ListTile(
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                        title: Text(
                          "Sign Out",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        leading: Icon(
                          Icons.exit_to_app,
                          color: Colors.black,
                          size: 25,
                        ),
                        onTap: () async {
                          //Auth().signOut();
                        },
                      ),
                      Container(
                        height: 1,
                        color: Colors.black26,
                      ),
                      ListTile(
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                        title: Text(
                          "Change Password",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        leading: Icon(
                          MdiIcons.lock,
                          color: Colors.black,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                )
              ],
            ),
            Column(
              children: [
                Align(
                  child: Padding(
                    child: Text(
                      "Misc",
                      style: GoogleFonts.abel(
                          fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    padding: EdgeInsets.only(left: 10),
                  ),
                  alignment: Alignment.topLeft,
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      ListTile(
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                        title: Text(
                          "Terms of Services",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        leading: Icon(
                          MdiIcons.file,
                          color: Colors.black,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

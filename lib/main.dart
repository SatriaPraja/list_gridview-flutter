import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:list_gridview/constant.dart';
import 'gridview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kBackground,
        textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme.apply())
      ),
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Center(
        child: Column(
            mainAxisAlignment:
            MainAxisAlignment.center,
            children: <Widget>[
              new Image.asset('assets/background.png',height: 370, width:370,),
              Text(
                "Hi, Welcome",
                style: TextStyle(
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 25,),

              InkWell(
                onTap: (){
                  Navigator.of(context)
                      .push(
                      MaterialPageRoute(builder: (context) => Listview())
                  );
                },
                child: Container(
                    width: 250.0,
                    height: 60.0,
                    margin: EdgeInsets.only(top: 30),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: kPrimary,

                    ),
                    child: Center(
                      child: Text(
                        "List View ->",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: kBackground,
                        ),
                      ),
                    ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.of(context)
                      .push(
                      MaterialPageRoute(builder: (context) => Gridview())
                  );
                },
                child: Container(
                  width: 250.0,
                  height: 60.0,
                  margin: EdgeInsets.only(top: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: kPrimary,

                  ),
                  child: Center(
                    child: Text(
                      "Grid View ->",
                      style: TextStyle(
                        fontSize: 18.0,
                        color: kBackground,
                      ),
                    ),
                  ),
                ),
              )
            ]
        ),
      ),
    );
  }
}

class Listview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double height=MediaQuery.of(context).size.height;
    final double width=MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50)
              ),
              color: kBackground,
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 70,
                  left: 0,
                  child: Container(
                    height: 80,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      )
                    ),
                  ),
                ),
                Positioned(
                  top: 90,
                  left: 20,
                  child: Text(
                    "List View",
                    style: TextStyle(
                      fontSize: 30,
                      color: kBackground,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: height*0.03,),
          Container(
            height: 160,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 20,
                  child: Material(
                    child: Container(
                      height: 150.0,
                      width: width*0.9,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(0.0),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            offset: new Offset(10.0, 10.0),
                            blurRadius: 20.0,
                            spreadRadius: 4.0
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 5,
                  left: 30,
                  child: Card(
                    elevation: 10.0,
                    shadowColor: Colors.grey.withOpacity(0.5),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    child: Container(
                      height: 130,
                      width: 130,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/profile.png'),
                        )
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  left: 175,
                  child: Container(
                    height: 150,
                    width: 180,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Nama Lengkap",
                          style: TextStyle(
                            fontSize: 18,
                            color: kBackground,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          "Satria Duta Praja",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold
                          ),
                        ),
                        Divider(color: Colors.black,),
                        Text(
                          "Pelajar yang nolep",
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.bold
                          ),
                        ),

                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10,),
                  height: 90,
                  padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: kBackground,
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(50),
                      ),
                      boxShadow: [
                        new BoxShadow(
                          color: kBackground.withOpacity(0.3),
                          offset: new Offset(-10.0, 10.0),
                          blurRadius: 20.0,
                          spreadRadius: 4.0,
                        )
                      ]
                    ),
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 10,

                    ),
                    child: Column(
                      children: <Widget>[
                        new ListTile(
                          title: Text(
                            "Kelas XII RPL 6/02",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          trailing: Icon(Icons.class_),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10,),
                  height: 90,
                  padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: kBackground,
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(50),
                        ),
                        boxShadow: [
                          new BoxShadow(
                            color: kBackground.withOpacity(0.3),
                            offset: new Offset(-10.0, 10.0),
                            blurRadius: 20.0,
                            spreadRadius: 4.0,
                          )
                        ]
                    ),
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 10,

                    ),
                    child: Column(
                      children: <Widget>[
                        new ListTile(
                          title: Text(
                            "SMK Telkom Purwokerto",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          trailing: Icon(Icons.work),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10,),
                  height: 90,
                  padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: kBackground,
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(50),
                        ),
                        boxShadow: [
                          new BoxShadow(
                            color: kBackground.withOpacity(0.3),
                            offset: new Offset(-10.0, 10.0),
                            blurRadius: 20.0,
                            spreadRadius: 4.0,
                          )
                        ]
                    ),
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 10,

                    ),
                    child: Column(
                      children: <Widget>[
                        new ListTile(
                          title: Text(
                            "081228622810",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          trailing: Icon(Icons.phone),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10,),
                  height: 90,
                  padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: kBackground,
                        borderRadius: const BorderRadius.only(
                          bottomRight: Radius.circular(50),
                        ),
                        boxShadow: [
                          new BoxShadow(
                            color: kBackground.withOpacity(0.3),
                            offset: new Offset(-10.0, 10.0),
                            blurRadius: 20.0,
                            spreadRadius: 4.0,
                          )
                        ]
                    ),
                    padding: const EdgeInsets.only(
                      left: 10,
                      top: 10,

                    ),
                    child: Column(
                      children: <Widget>[
                        new ListTile(
                          title: Text(
                            "Banyumas, Jawa Tengah",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          trailing: Icon(Icons.home),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Gridview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          Container(
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50)
              ),
              color: kPrimary,
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 40,
                  left: 10,
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/profile2.png'),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 80,
                  child: Text(
                    "Satria Duta Praja",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Positioned(
                  top: 70,
                  left:80,
                  child: Text(
                    "3103119173",
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 30),

          gridviewapps()
        ],
      ),
    );
  }
}






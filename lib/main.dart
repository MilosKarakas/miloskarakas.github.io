import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'miloskarakas',
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 17, 49, 49),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedLanguage = 0;
  String _name = "Каракаш Милош";
  String _centerText = "Израда у току.";

  @override
  Widget build(BuildContext context) {

    if(_selectedLanguage != 0){
      _name = "Karakaš Miloš";

      if(_selectedLanguage == 1)
        _centerText = "Izrada u toku.";
      else
        _centerText = "Work in progress.";
    }
    else {
      _name = "Каракаш Милош";
      _centerText = "Израда у току.";
    }

    return Stack(
      children: <Widget>[
        Image.asset(
          "lib/background.jpg",
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          fit: BoxFit.fill,
        ),
        Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Text(
                _name,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700
                ),
              ),
              centerTitle: true,
              actions: <Widget>[
                GestureDetector(
                  child: Container(
                    width: 40,
                    height: 40,
                    child: Center(
                      child: Text(
                        "АБВ",
                        style: TextStyle(
                            color: (_selectedLanguage==0)?Colors.white:Color(0x88e7eaee),
                            fontWeight: FontWeight.w700,
                            fontSize: 12
                        ),
                      ),
                    ),
                    margin: EdgeInsets.all(6),
                  ),
                  onTap: (){
                    setState(() {
                      _selectedLanguage=0;
                    });
                  },
                ),
                GestureDetector(
                  child: Container(
                    width: 40,
                    height: 40,
                    child: Center(
                      child: Text(
                        "ABC",
                        style: TextStyle(
                            color: (_selectedLanguage==1)?Colors.white:Color(0x88e7eaee),
                            fontWeight: FontWeight.w700,
                            fontSize: 12
                        ),
                      ),
                    ),
                    margin: EdgeInsets.all(6),
                  ),
                  onTap: (){
                    setState(() {
                      _selectedLanguage=1;
                    });
                  },
                ),
                GestureDetector(
                  child: Container(
                    width: 40,
                    height: 40,
                    child: Center(
                      child: Text(
                        "ENG",
                        style: TextStyle(
                            color: (_selectedLanguage==2)?Colors.white:Color(0x88e7eaee),
                            fontWeight: FontWeight.w700,
                            fontSize: 12
                        ),
                      ),
                    ),
                    margin: EdgeInsets.only(top: 6, bottom: 6, left: 6, right: 12),
                  ),
                  onTap: (){
                    setState(() {
                      _selectedLanguage=2;
                    });
                  },
                )
              ],
            ),
            body:
            Center(
              child: Text(
                _centerText,
                style: TextStyle(
                    color: Color.fromARGB(127, 255, 255, 255),
                    fontSize: 40,
                    fontWeight: FontWeight.w800
                ),
              ),
            )
        )
      ],
    );
  }
}

/*
elevation: 0,
title: Container(
width: double.infinity,
child: Text(
_name,
style: TextStyle(
color: Colors.white,
fontSize: 16,
fontWeight: FontWeight.w700
),
),
),
titleSpacing: 12,
actions: <Widget>
[
GestureDetector(
child: Container(
width: 40,
height: 40,
child: Center(
child: Text(
"АБВ",
style: TextStyle(
color: (_selectedLanguage==0)?Colors.white:Color(0x88e7eaee),
fontWeight: FontWeight.w700,
fontSize: 12
),
),
),
margin: EdgeInsets.all(6),
),
onTap: (){
setState(() {
_selectedLanguage=0;
});
},
),
GestureDetector(
child: Container(
width: 40,
height: 40,
child: Center(
child: Text(
"ABC",
style: TextStyle(
color: (_selectedLanguage==1)?Colors.white:Color(0x88e7eaee),
fontWeight: FontWeight.w700,
fontSize: 12
),
),
),
margin: EdgeInsets.all(6),
),
onTap: (){
setState(() {
_selectedLanguage=1;
});
},
),
GestureDetector(
child: Container(
width: 40,
height: 40,
child: Center(
child: Text(
"ENG",
style: TextStyle(
color: (_selectedLanguage==2)?Colors.white:Color(0x88e7eaee),
fontWeight: FontWeight.w700,
fontSize: 12
),
),
),
margin: EdgeInsets.only(top: 6, bottom: 6, left: 6, right: 12),
),
onTap: (){
setState(() {
_selectedLanguage=2;
});
},
)
],*/
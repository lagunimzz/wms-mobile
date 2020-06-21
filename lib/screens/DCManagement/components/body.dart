import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: myBoxDecoration(),
        margin: const EdgeInsets.all(20.0),
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              child: Text(
                "ขั้นตอนง่ายๆในการเปิดคลัง",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                  shadows: [
                    Shadow(
                      blurRadius: 3.0,
                      color: Colors.black26,
                      offset: Offset(0.5, 1.0),
                    ),
                  ],
                  foreground: Paint()..color = Colors.blue[800],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: Row(
                children: <Widget>[
                  Container(
                    // Circle 1
                    child: ClipOval(
                      child: Material(
                        color: Colors.pinkAccent[200], // button color
                        shadowColor: Colors.black26,
                        child: InkWell(
                          splashColor: Colors.red, // inkwell color
                          child: SizedBox(
                              width: 50,
                              height: 50,
                              child: Center(
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()..color = Colors.white,
                                  ),
                                ),
                              )),
                          onTap: () => print("button 1 pressed"),
                        ),
                      ),
                    ),
                  ), //Circle 1
                  InkWell(
                    onTap: () => print("Card 1 pressed"),
                    child: new Card(
                      color: Colors.pinkAccent[100],
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              "กำหนดพื้นที่จัดเก็บ (Zone)         ",
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                foreground: Paint()..color = Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ), //card1
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: Row(
                children: <Widget>[
                  Container(
                    // Circle 1
                    child: ClipOval(
                      child: Material(
                        color: Colors.pinkAccent[200], // button color
                        shadowColor: Colors.black26,
                        child: InkWell(
                          splashColor: Colors.red, // inkwell color
                          child: SizedBox(
                              width: 50,
                              height: 50,
                              child: Center(
                                child: Text(
                                  "2",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                    foreground: Paint()..color = Colors.white,
                                  ),
                                ),
                              )),
                          onTap: () => print("button 2 pressed"),
                        ),
                      ),
                    ),
                  ), //Circle 1
                  InkWell(
                    onTap: () => print("Card 2 pressed"),
                    child: new Card(
                      color: Colors.pinkAccent[100],
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          children: <Widget>[
                            SizedBox(
                              width: 5.0,
                            ),
                            Text(
                              "กำหนดอุปกรณ์ในการจัดสินค้า ",
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                foreground: Paint()..color = Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ), //Card2,
          ],
        ),
      ),
    );
  }

  BoxDecoration myBoxDecoration() {
    return new BoxDecoration(
        image: new DecorationImage(
          fit: BoxFit.cover,
          colorFilter: new ColorFilter.mode(
              Colors.black.withOpacity(0.2), BlendMode.dstATop),
          image: new AssetImage(
            'images/warehouse.jpg',
          ),
        ),
        border: Border.all(
            color: Colors.black26, //  <--- border color
            width: 1.0),
        borderRadius:
            BorderRadius.all(Radius.circular(10.0) //   <--- border radius here
                ),
        color: Colors.lightBlue[200]);
  }

  BoxDecoration ShadowDecoration() {
    return BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.pinkAccent[200],
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 3.0,
            spreadRadius: 1.0,
            offset: Offset(0.0, 1.5),
          ),
        ]);
  }
}

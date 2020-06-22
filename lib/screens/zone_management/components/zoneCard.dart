import 'package:flutter/material.dart';
import 'package:wmsmobile/screens/zone_management/cardObject.dart';
//import 'package:getflutter/getflutter.dart';

class ZoneCard extends StatefulWidget {

  CardObject cardObject;

  ZoneCard({Key key, @required this.cardObject}) : super(key : key);

  @override
  _ZoneCardState createState() => _ZoneCardState();
}

class _ZoneCardState extends State<ZoneCard> {
  @override
  Widget build(BuildContext context) {
    return new Card(
      child: new Container(
//        margin: EdgeInsets.all(9),
//        padding: EdgeInsets.all(6),
        child: new Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
              new Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(5),
                    width: 120,
                    height: 80,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/wms_main_image.png'),
                      ),
                      borderRadius: BorderRadius.all(Radius.circular(8.0)),
                    )
                  )
                ],
              ),
              new Column(
                children: <Widget>[
                  new Column(
                    children: <Widget>[
                      Text(
                          widget.cardObject.zone,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900
                        ),
                      ),
                      Text(
                        widget.cardObject.zone,
                        style: TextStyle(
                            fontWeight: FontWeight.w300
                        ),
                      )
                    ],
                  )
                ],
              ),
              new Column(
                children: <Widget>[

                ],
              ),
//            GFImageOverlay(
//                height: 50,
//                width: 50,
//                shape: BoxShape.rectangle,
//                image:AssetImage('images/wms_main_image.png')
//            ),
//            new Padding(padding: EdgeInsets.all(8)),
//            new Text(widget.cardObject.zone)
          ],
        ),
      ),
    );
  }
}

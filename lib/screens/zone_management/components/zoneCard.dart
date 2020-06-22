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
//          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
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
            ),
            SizedBox(width: 5),
            new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  widget.cardObject.zone,
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                  ),
                ),
                Text(
                  widget.cardObject.zoneDescription,
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

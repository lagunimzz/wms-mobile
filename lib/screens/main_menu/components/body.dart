import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          color: Theme.of(context).accentColor,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 39,
              vertical: 18,
            ),
            child: Container(
              child: Image.asset('images/wms_main_image.png'),
            ),
          ),
        ),
        Wrap(
          alignment: WrapAlignment.start,
          children: [
            FlatButton(
              padding: EdgeInsets.all(7),
              onPressed: () => Navigator.pushNamed(context, '/Management'),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'images/warehouse_icon.png',
                  ),
                  Text(
                    'จัดการคลังสินค้า',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            FlatButton(
              padding: EdgeInsets.all(7),
              onPressed: () => print('click!'),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'images/warehouse_icon.png',
                  ),
                  Text(
                    'จัดการคลังสินค้า',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            FlatButton(
              padding: EdgeInsets.all(7),
              onPressed: () => Navigator.pushNamed(context, "/ZoneMain"),
              child: Column(
                children: <Widget>[
                  Image.asset(
                    'images/warehouse_icon.png',
                  ),
                  Text(
                    'จัดการ Zone',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

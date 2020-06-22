import 'package:flutter/material.dart';
import 'package:wmsmobile/screens/zone_management/cardObject.dart';
import 'package:wmsmobile/screens/zone_management/components/zoneCard.dart';

class BodyMain extends StatefulWidget {
  @override
  _BodyMainState createState() => _BodyMainState();
}

class _BodyMainState extends State<BodyMain> {

    List<CardObject> zoneList = [
      CardObject(zone: "Zone : 1",zoneDescription: "เครื่องสำอาง"),
      CardObject(zone: "Zone : 2",zoneDescription: "เครื่องสำอาง"),
      CardObject(zone: "Zone : 3",zoneDescription: "เครื่องสำอาง"),
      CardObject(zone: "Zone : 4",zoneDescription: "เครื่องสำอาง"),
      CardObject(zone: "Zone : 5",zoneDescription: "เครื่องสำอาง"),
      CardObject(zone: "Zone : 6",zoneDescription: "เครื่องสำอาง"),
      CardObject(zone: "Zone : 7",zoneDescription: "เครื่องสำอาง"),
      CardObject(zone: "Zone : 8",zoneDescription: "เครื่องสำอาง"),
      CardObject(zone: "Zone : 9",zoneDescription: "เครื่องสำอาง"),
    ];

//  final List<Object> zoneList = List<Object>.generate(5, (index) => CardObject(
//      zone: "Zone : ${++index}",
//      zoneDescription: "Des",
//      zoneImage: "Image",
//      productImage: "Image"
//  ));

//  final List<String> zoneList = List<String>.generate(5, (index) => "Zone: ${++index}");
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: ListView.builder(
        itemCount: zoneList.length,
        itemBuilder: (BuildContext context, int index) => ZoneCard(cardObject: zoneList[index]),
//        scrollDirection: Axis.horizontal,
      )
    );
  }

}

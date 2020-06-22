import 'package:flutter/material.dart';

class BodyAdd extends StatefulWidget {
  @override
  _BodyAddState createState() => _BodyAddState();
}

class _BodyAddState extends State<BodyAdd> {

  final formKey = GlobalKey<FormState>();

  String _zoneName, _productType;
  String _defaultProductType;

  List<String> _productTypeList = List<String>.generate(4, (index) => "List : ${++index}");

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child:
        Padding(
          padding: EdgeInsets.all(20),
          child: Form(
            key: formKey,
            child: Column(
              children: buildInput(),
            ),
          ),
        ),
    );
  }

  List<Widget> buildInput(){
    List<Widget> textFields = [];
  
    textFields.add(
        TextFormField(
          style: TextStyle(fontSize: 18),
//          decoration: buildTextStyle("HELLO"),
          decoration: const InputDecoration(
            labelText: "Zone Name",
            hintText: 'Zone Name',
            hintStyle: TextStyle(color: Colors.grey)
          ),
          onSaved: (value) => _zoneName = value,
        )
    );
    textFields.add(SizedBox(height: 20));
    textFields.add(
        DropdownButton(
          items: _productTypeList.map((value) => DropdownMenuItem(
            child: Text(value, style: TextStyle(color: Colors.black)),
            value: value,
          )).toList(),
          onChanged: (value){
            setState(() {
              _defaultProductType = value;
            });
          },
          value: _defaultProductType,
          isExpanded: true,
          hint: Text("Product Type", style: TextStyle(color: Colors.black)),
        )
    );

    return textFields;
  }

//  InputDecoration buildTextStyle(String hint){
//    return InputDecoration(
//        hintText: hint,
//        hintStyle: TextStyle(color: Colors.grey),
//        filled: true,
//        fillColor: Colors.white10,
//        focusColor: Colors.amber,
//        focusedBorder: OutlineInputBorder(
//            borderSide: BorderSide(
//                color: Colors.black,
//                width: 1
//            )
//        ),
//        enabledBorder: OutlineInputBorder(
//            borderRadius: BorderRadius.all(Radius.circular(8.0)),
//            borderSide: BorderSide(
//                color: Colors.black,
//                width: 1
//            )
//        ),
//        contentPadding: const EdgeInsets.only(left: 14, bottom: 10, top: 10)
//    );
//  }

}



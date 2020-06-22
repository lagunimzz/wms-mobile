import 'dart:io';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProductTypeAdd extends StatefulWidget {
  @override
  _ProductTypeAddState createState() => _ProductTypeAddState();
}

class _ProductTypeAddState extends State<ProductTypeAdd> {
  final _formKey = GlobalKey<FormState>();
  final picker = ImagePicker();
  final _addItem = TextEditingController();
  File _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("เพิ่มประเภทสินค้า"),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            child: Form(
              key: _formKey,
              child: Column(
                children: <Widget>[inputBox(), uploadImage(), submitBtn()],
              ),
            ),
          ),
        ));
  }

  Widget inputBox() {
    return TextFormField(
      controller: _addItem,
      decoration: const InputDecoration(
          hintText: 'ชื่อประเภทสินค้า',
          hintStyle: TextStyle(color: Colors.grey)),
      validator: (value) {
        if (value.isEmpty) {
          return 'กรุณาระบุชื่อประเภทสินค้า';
        }
        return null;
      },
    );
  }

  Widget uploadImage() {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _image == null
                  ? Text('No image selected.')
                  : Image.file(
                      _image,
                      width: 300,
                    )
            ],
          ),
          RaisedButton(
            onPressed: getImage,
            child: const Text('อัพโหลดรูปภาพ', style: TextStyle(fontSize: 20)),
            color: Colors.blue,
            textColor: Colors.white,
          )
        ],
      ),
    );
  }

  Widget submitBtn() {
    return SizedBox(
        width: double.infinity, // match_parent
        child: RaisedButton(
          onPressed: onPress,
          child: const Text('บันทึก', style: TextStyle(fontSize: 20)),
          color: Colors.blue,
          textColor: Colors.white,
        ));
  }

  Future getImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.camera);

    setState(() {
      _image = File(pickedFile.path);
    });
  }

  Future<void> _showMyDialog(title, text, goBack) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(text),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('ตกลง'),
              onPressed: () {
                Navigator.of(context).pop();
                if (goBack) {
                  Navigator.pop(context);
                }
              },
            ),
          ],
        );
      },
    );
  }

  onPress() {
    if (_formKey.currentState.validate()) {
      if (_image == null) {
        _showMyDialog(
            "กรุณาเลือกรูปภาพ", "กรุณาเลือกรูปภาพประเภทสินค้า", false);
      } else {
        String base64Image = base64Encode(_image.readAsBytesSync());

        // Call API for upload
        print(_addItem.text);
        print("$base64Image");
        _showMyDialog(
            "บันทึกสำเร็จ", "ทำการบันทึกประเภทสินค้าเรียบร้อยแล้ว", true);
      }
    }
  }
}

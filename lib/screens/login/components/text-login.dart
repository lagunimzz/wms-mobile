import 'package:flutter/material.dart';

class TextLogin extends StatefulWidget {
  @override
  // TODO: implement createState
  _TextLoginState createState() => _TextLoginState();
}


class _TextLoginState extends State<TextLogin> {

  final TextEditingController _emailFilter = new TextEditingController();
  final TextEditingController _passwordFilter = new TextEditingController();
  @override
  void initState() {
    super.initState();

    // example2Bloc = Example2Bloc();
  }

  @override
  void dispose() {
    // example2Bloc.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _buildTextFields(_emailFilter,_passwordFilter);

  }
  Widget _buildTextFields(TextEditingController _emailFilter,TextEditingController _passwordFilter) {
    return new Container(
      child: new Column(
        children: <Widget>[
          new Container(
            child: new TextField(
              controller: _emailFilter,
              decoration: new InputDecoration(
                  labelText: 'Email'
              ),
            ),
          ),
          new Container(
            child: new TextField(
              controller: _passwordFilter,
              decoration: new InputDecoration(
                  labelText: 'Password'
              ),
              obscureText: true,
            ),
          )
        ],
      ),
    );
  }
}

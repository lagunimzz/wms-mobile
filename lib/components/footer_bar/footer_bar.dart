import 'package:flutter/material.dart';

class FooterBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          title: Text('Search'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_box),
          title: Text('Add'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat),
          title: Text('Message'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          title: Text('User'),
        ),
      ],
    );
  }
}

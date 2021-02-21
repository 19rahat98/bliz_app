import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home, color: Colors.grey,),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.description, color: Colors.grey,),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_circle, color: Colors.grey,),
          label: 'Business',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.mail_outline, color: Colors.grey,),
          label: 'School',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline, color: Colors.grey,),
          label: 'School',
        ),
      ],
    );
  }
}

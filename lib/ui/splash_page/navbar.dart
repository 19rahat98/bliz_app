import 'package:flutter/material.dart';

import 'package:bliz/ui/add_item_screen.dart';
import 'package:bliz/ui/categories.dart';
import 'package:bliz/ui/message_screen.dart';
import 'package:bliz/ui/orders.dart';
import 'package:bliz/ui/user_screen.dart';

class MainNavigation extends StatefulWidget {
  MainNavigation({Key key, this.item}) : super(key: key);
  final int item;

  @override
  _MainNavigationState createState() {
    return _MainNavigationState();
  }
}

class _MainNavigationState extends State<MainNavigation> {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  ///On change tab bottom menu
  void _onItemTapped({int index}) async {
    setState(() {
      _selectedIndex = index;
    });
  }

  ///List bottom menu
  List<BottomNavigationBarItem> _bottomBarItem(BuildContext context) {
    return [
      BottomNavigationBarItem(
        icon: Padding(padding: EdgeInsets.only(bottom: 5),child: Icon(Icons.home_filled)),
        label: "Bliz.kz",
      ),
      BottomNavigationBarItem(
        icon: Padding(padding: EdgeInsets.only(bottom: 5),child: Icon(Icons.library_books_sharp, size: 20,)),
        label: "Заявки",
      ),
      BottomNavigationBarItem(
        icon: Container(margin: EdgeInsets.only(bottom: 5),decoration: BoxDecoration(shape: BoxShape.circle, color: Color(0xff008EFF)), child: Icon(Icons.add, color: Colors.white,)),
        label: "Добавить",
      ),
      BottomNavigationBarItem(
        icon: Padding(padding: EdgeInsets.only(bottom: 5),child: Icon(Icons.mail)),
        label: "Сообщения",
      ),
      BottomNavigationBarItem(
        icon: Padding(padding: EdgeInsets.only(bottom: 5),child: Icon(Icons.person_outlined)),
        label: "Кабинет",
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: <Widget>[AddItemScreen(), Orders(), Categories(), MessageScreen(), UserScreen()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Color(0xff008EFF),
        unselectedItemColor: Color(0xFFA2A9B2),
        selectedFontSize: 14,
        iconSize: 18,
        elevation: 10,
        unselectedFontSize: 14,
        items: _bottomBarItem(context),
        currentIndex: _selectedIndex,
        showUnselectedLabels: true,
        onTap: (index) {
          _onItemTapped(index: index);
        },
      ),
    );
  }
}

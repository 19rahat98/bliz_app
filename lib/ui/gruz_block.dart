import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class gruzBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    // double h = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        leading: null,
        titleSpacing: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.arrow_back_ios_outlined),
              onPressed: () {},
              iconSize: 20,
            ),
            Text('Назад', style: TextStyle(fontSize: 14),),
            Expanded(
              child: Center(child: Text('Мое предложение')),
            )
          ],
        ),
        automaticallyImplyLeading: false,

      ),
      drawer: Drawer(
          // child: _buildDrawer(),
          ),
      body: Container(
        color: Colors.orange,
      ),
    );
  }
}

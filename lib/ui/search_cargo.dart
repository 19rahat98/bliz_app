import 'package:flutter/material.dart';

class searchCargo extends StatefulWidget {
  @override
  _searchCargoState createState() => _searchCargoState();
}

class _searchCargoState extends State<searchCargo> {
  String dropdownValue = 'One';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Column(
          children: [
            Container(
              child: Column(
                children: [
                  DropdownButton(
                    value: dropdownValue,
                    icon: Icon(Icons.arrow_forward_ios),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: Colors.deepPurple),
                    items: <String>['One', 'Two', 'Free', 'Four']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:bliz/ui/add_transport.dart';
import 'package:flutter/material.dart';

import 'package:bliz/ui/add_cargo.dart';
import 'package:bliz/ui/add_vehicle.dart';
import 'package:bliz/ui/find_cargo.dart';
import 'package:bliz/ui/add_storage_screen.dart';

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor:Color(0xff008EFF),
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text('Добавить объявление', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
        /*actions: [
          Container(margin: EdgeInsets.only(right: 15),child: Icon(Icons.close)),
        ],*/
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Center(
                  child: Column(
                    children: [
                      Text('Выберите категорию', style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold)),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        'Выберите раздел, в котором вы хотите разместить объявление.',
                        style: TextStyle(color: Colors.grey, fontSize: 14,),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                children: [
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddCargoScreen()),
                      );
                    },
                    child: Container(
                      width: w * 0.85,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.inbox_rounded,
                                color: Colors.blue,
                                size: 30.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Грузы',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.navigate_next,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    textColor: Colors.black,
                    color: Colors.white,
                    elevation: 0.0,
                    padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                  ),
                ],
              ),
              Divider(
                thickness: 1.5,
              ),
              Row(
                children: [
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddTransportScreen()),
                      );
                    },
                    child: Container(
                      width: w * 0.85,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.directions_car,
                                color: Colors.blue,
                                size: 30.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Транспорт',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.navigate_next,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    textColor: Colors.black,
                    color: Colors.white,
                    elevation: 0.0,
                    padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                  ),
                ],
              ),
              Divider(
                thickness: 1.5,
              ),
              Row(
                children: [
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FindCargo()),
                      );
                    },
                    child: Container(
                      width: w * 0.85,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.timeline,
                                color: Colors.blue,
                                size: 30.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Аукцион',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.navigate_next,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    textColor: Colors.black,
                    color: Colors.white,
                    elevation: 0.0,
                    padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                  ),
                ],
              ),
              Divider(
                thickness: 1.5,
              ),
              Row(
                children: [
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddStorageScreen()),
                      );
                    },
                    child: Container(
                      width: w * 0.85,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.storage,
                                color: Colors.blue,
                                size: 30.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Склады',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.navigate_next,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    textColor: Colors.black,
                    color: Colors.white,
                    elevation: 0.0,
                    padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                  ),
                ],
              ),
              Divider(
                thickness: 1.5,
              ),
              Row(
                children: [
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AddVehicleScreen()),
                      );
                    },
                    child: Container(
                      width: w * 0.85,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.car_rental,
                                color: Colors.blue,
                                size: 30.0,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text(
                                'Техника',
                                style: TextStyle(
                                  fontSize: 16,
                                ),
                              ),
                            ],
                          ),
                          Icon(
                            Icons.navigate_next,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    textColor: Colors.black,
                    color: Colors.white,
                    elevation: 0.0,
                    padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                  ),
                ],
              ),
              Divider(
                thickness: 1.5,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:bliz/ui/sale.dart';
import 'package:flutter/material.dart';

class TechnicCategories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        leading: Row(
          children: [
            IconButton(
                icon: Icon(
              Icons.arrow_back_ios_outlined,
              size: 20,
              color: Colors.white,
            ), onPressed: () {
                Navigator.pop(context);
            },),
          ],
        ),
        title: Text(
          'Спецтехника',
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Sale()),
                      );
                    },
                    child: Container(
                      width: w * 0.89,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Землеройная',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '320',
                                style: TextStyle(
                                    color: Color(0xffA2A9B2),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                              Icon(
                                Icons.navigate_next,
                                color: Colors.grey,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    textColor: Colors.black,
                    color: Colors.white,
                    elevation: 0.0,
                    padding:
                    EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                  ),
                ],
              ),
              Divider(
                endIndent: 20,
                indent: 20,
                thickness: 1.5,
              ), Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: () {},
                    child: Container(
                      width: w * 0.89,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Строительная',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '1 240',
                                style: TextStyle(
                                    color: Color(0xffA2A9B2),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                              Icon(
                                Icons.navigate_next,
                                color: Colors.grey,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    textColor: Colors.black,
                    color: Colors.white,
                    elevation: 0.0,
                    padding:
                    EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                  ),
                ],
              ),
              Divider(
                endIndent: 20,
                indent: 20,
                thickness: 1.5,
              ), Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: () {},
                    child: Container(
                      width: w * 0.89,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Бетонные работы',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '511',
                                style: TextStyle(
                                    color: Color(0xffA2A9B2),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                              Icon(
                                Icons.navigate_next,
                                color: Colors.grey,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    textColor: Colors.black,
                    color: Colors.white,
                    elevation: 0.0,
                    padding:
                    EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                  ),
                ],
              ),
              Divider(
                endIndent: 20,
                indent: 20,
                thickness: 1.5,
              ), Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: () {},
                    child: Container(
                      width: w * 0.89,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Грузоперевозки',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '32',
                                style: TextStyle(
                                    color: Color(0xffA2A9B2),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                              Icon(
                                Icons.navigate_next,
                                color: Colors.grey,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    textColor: Colors.black,
                    color: Colors.white,
                    elevation: 0.0,
                    padding:
                    EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                  ),
                ],
              ),
              Divider(
                endIndent: 20,
                indent: 20,
                thickness: 1.5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RaisedButton(
                    onPressed: () {},
                    child: Container(
                      width: w * 0.89,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Коммунальная',
                                style: TextStyle(
                                    fontSize: 17, fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                '88',
                                style: TextStyle(
                                    color: Color(0xffA2A9B2),
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400),
                              ),
                              Icon(
                                Icons.navigate_next,
                                color: Colors.grey,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    textColor: Colors.black,
                    color: Colors.white,
                    elevation: 0.0,
                    padding:
                    EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                  ),
                ],
              ),
              Divider(
                endIndent: 20,
                indent: 20,
                thickness: 1.5,
              ),


            ],
          ),
        ),
      ),
    );
  }
}

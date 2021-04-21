import 'package:bliz/ui/messages_page.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff008EFF),
        centerTitle: true,
        title: Text(
          'Сообщения',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MessagesPage()),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              height: 85,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    child: CircleAvatar(
                      radius: 40.0,
                    ),
                  ),
                  Container(
                    width: w * 0.6,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: w * 0.55,
                            child: Text(
                              'Ольга, ТОО «Logistics»',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff20273D),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 5),
                            width: w * 0.55,
                            child: Text(
                              'Добрый день! По поводу вашего предложения, мы можем снизить…',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Color(0xffA2A9B2),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '14:30',
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff008EFF)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              color: Color(0xff008EFF),
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                              child: Text(
                            '3',
                            style: TextStyle(color: Colors.white),
                          )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Divider(
            thickness: 1.2,
            indent: 20.0,
            endIndent: 20.0,
            height: 0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MessagesPage()),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              height: 85,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    child: CircleAvatar(
                      radius: 40.0,
                    ),
                  ),
                  Container(
                    width: w * 0.6,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: w * 0.55,
                            child: Text(
                              'Ольга, ТОО «Logistics»',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff20273D),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 5),
                            width: w * 0.55,
                            child: Text(
                              'Добрый день! По поводу вашего предложения, мы можем снизить…',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Color(0xffA2A9B2),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '14:30',
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff008EFF)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 10),
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              color: Color(0xff008EFF),
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                              child: Text(
                            '3',
                            style: TextStyle(color: Colors.white),
                          )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Divider(
            thickness: 1.2,
            indent: 20.0,
            endIndent: 20.0,
            height: 0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MessagesPage()),
              );
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              height: 85,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 45,
                    width: 45,
                    child: CircleAvatar(
                      radius: 40.0,
                    ),
                  ),
                  Container(
                    width: w * 0.6,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: w * 0.55,
                            child: Text(
                              'Ольга, ТОО «Logistics»',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff20273D),
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 5),
                            width: w * 0.55,
                            child: Text(
                              'Добрый день! По поводу вашего предложения, мы можем снизить…',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: Color(0xffA2A9B2),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '14:30',
                          style:
                              TextStyle(fontSize: 12, color: Color(0xff008EFF)),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5),
                          width: 20,
                          height: 20,
                          decoration: BoxDecoration(
                              color: Color(0xff008EFF),
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                              child: Text(
                            '3',
                            style: TextStyle(color: Colors.white),
                          )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Divider(
            thickness: 1.2,
            indent: 20.0,
            endIndent: 20.0,
            height: 0,
          ),
        ],
      ),
    );
  }
}

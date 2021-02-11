import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'order_second_page.dart';

class Orders extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: MaterialApp(
        home: Scaffold(
          backgroundColor: Color(0xffF0F4F8),
          appBar: AppBar(
            bottom: TabBar(
              onTap: (index) {
                // Tab index when user select it, it start from zero
              },
              tabs: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    'В работе',
                    style: TextStyle(fontSize: 13),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      'Предложения',
                      style: TextStyle(fontSize: 13),
                    )),
                Padding(
                  padding: const EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    'Архив',
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              ],
            ),
            centerTitle: true,
            title: Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text('Мои завяки'),
            ),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20.0, left: 16, bottom: 8),
                      child: Text(
                        'Я ИСПОЛНИТЕЛЬ (4)'.toUpperCase(),
                        style: TextStyle(
                            color: Color(0xff20273D).withOpacity(0.6),
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      //TODO n
                      color: Colors.white,
                      padding: EdgeInsets.only(top: 10.0, right: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: 8.0, right: 5.0, left: 5.0),
                            height: 10.0,
                            width: 10.0,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      // textBaseline: TextBaseline.alphabetic,
                                      // mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        //TODO n
                                        Text(
                                          'Нур-Султан',
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          size: 17.0,
                                          color: Colors.blue,
                                        ),
                                        //TODO n
                                        Text(
                                          'Алматы',
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5.0),
                                      decoration: BoxDecoration(
                                        color:
                                            Color(0xff008EFF).withOpacity(0.2),
                                        borderRadius:
                                            BorderRadius.circular(2.0),
                                      ),
                                      child: Text(
                                        'груз в пути'.toUpperCase(),
                                        style: TextStyle(
                                            color: Color(0xff008EFF),
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //TODO n
                                    Text(
                                      'Водитель: А. Аскаров',
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          '165 000 т',
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text('без НДС',
                                            style:
                                                TextStyle(color: Colors.grey))
                                      ],
                                    )
                                  ],
                                ),
                                //TODO n
                                Wrap(
                                    direction: Axis.vertical,
                                    spacing: 5.0,
                                    children: [
                                      Text('115 тн, 260 м³, Авто Тент'),
                                      Text('14 июн, Хим. продукты, безопасные'),
                                      Text(
                                        'ТОО «ОУСА Альянс»',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12.0),
                                      ),
                                    ]),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  children: [
                                    Text('Осталось: '),
                                    Text('~ 6 ч 45 мин, 320 км',
                                        style:
                                            TextStyle(color: Color(0xff008EFF)))
                                  ],
                                ),
                                SizedBox(
                                  height: 15,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      //TODO n
                      margin: EdgeInsets.only(top: 1),
                      color: Colors.white,
                      padding: EdgeInsets.only(top: 10.0, right: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: 8.0, right: 5.0, left: 5.0),
                            height: 10.0,
                            width: 10.0,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      // textBaseline: TextBaseline.alphabetic,
                                      // mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        //TODO n
                                        Text(
                                          'Нур-Султан',
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          size: 17.0,
                                          color: Colors.blue,
                                        ),
                                        //TODO n
                                        Text(
                                          'Алматы',
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5.0),
                                      decoration: BoxDecoration(
                                        color:
                                            Color(0xff008EFF).withOpacity(0.2),
                                        borderRadius:
                                            BorderRadius.circular(2.0),
                                      ),
                                      child: Text(
                                        'груз в пути'.toUpperCase(),
                                        style: TextStyle(
                                            color: Color(0xff008EFF),
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //TODO n
                                    Text(
                                      'Водитель: Б. Сериков (найм)',
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          '165 000 т',
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text('без НДС',
                                            style:
                                                TextStyle(color: Colors.grey))
                                      ],
                                    )
                                  ],
                                ),
                                //TODO n
                                Wrap(
                                    direction: Axis.vertical,
                                    spacing: 5.0,
                                    children: [
                                      Text('115 тн, 260 м³, Авто Тент'),
                                      Text('14 июн, Хим. продукты, безопасные'),
                                      Text(
                                        'ТОО «ОУСА Альянс»',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12.0),
                                      ),
                                    ]),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Row(
                                  children: [
                                    Text('Осталось: '),
                                    Text('~ 6 ч 45 мин, 320 км',
                                        style:
                                            TextStyle(color: Color(0xff008EFF)))
                                  ],
                                ),
                                SizedBox(
                                  height: 8,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      //TODO n
                      margin: EdgeInsets.only(top: 1),
                      color: Color(0xffF1FFF9),
                      padding: EdgeInsets.only(top: 10.0, right: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: 8.0, right: 5.0, left: 5.0),
                            height: 10.0,
                            width: 10.0,
                            decoration: BoxDecoration(
                              color: Color(0xff00B261),
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      // textBaseline: TextBaseline.alphabetic,
                                      // mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        //TODO n
                                        Text(
                                          'Нур-Султан',
                                          style: TextStyle(
                                              color: Color(0xff00B261),
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          size: 17.0,
                                          color: Color(0xff00B261),
                                        ),
                                        //TODO n
                                        Text(
                                          'Алматы',
                                          style: TextStyle(
                                              color: Color(0xff00B261),
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5.0),
                                      decoration: BoxDecoration(
                                        color:
                                            Color(0xff43CC8E).withOpacity(0.2),
                                        borderRadius:
                                            BorderRadius.circular(2.0),
                                      ),
                                      child: Text(
                                        'груз в пути'.toUpperCase(),
                                        style: TextStyle(
                                            color: Color(0xff43CC8E),
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //TODO n
                                    Text(
                                      'Водитель: Б. Сериков (найм)',
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          '165 000 т',
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text('без НДС',
                                            style:
                                                TextStyle(color: Colors.grey))
                                      ],
                                    )
                                  ],
                                ),
                                //TODO n
                                Wrap(
                                    direction: Axis.vertical,
                                    spacing: 5.0,
                                    children: [
                                      Text('115 тн, 260 м³, Авто Тент'),
                                      Text('14 июн, Хим. продукты, безопасные'),
                                      Text(
                                        'ТОО «ОУСА Альянс»',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12.0),
                                      ),
                                    ]),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  'Доставлено: сегодня в 15:30',
                                  style: TextStyle(
                                      color: Color(0xff00B261),
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 8,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20.0, left: 16, bottom: 8),
                      child: Text(
                        'Я заказчик (4)'.toUpperCase(),
                        style: TextStyle(
                            color: Color(0xff20273D).withOpacity(0.6),
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      //TODO n
                      padding: EdgeInsets.only(top: 10.0, right: 10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                                top: 8.0, right: 5.0, left: 5.0),
                            height: 10.0,
                            width: 10.0,
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      // textBaseline: TextBaseline.alphabetic,
                                      // mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        //TODO n
                                        Text(
                                          'Нур-Султан',
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          size: 17.0,
                                          color: Colors.blue,
                                        ),
                                        //TODO n
                                        Text(
                                          'Алматы',
                                          style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(5.0),
                                      decoration: BoxDecoration(
                                        color:
                                            Color(0xff008EFF).withOpacity(0.2),
                                        borderRadius:
                                            BorderRadius.circular(2.0),
                                      ),
                                      child: Text(
                                        'ЖДЕТ ПОГРУЗКИ'.toUpperCase(),
                                        style: TextStyle(
                                            color: Color(0xff008EFF),
                                            fontSize: 12.0,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    //TODO n
                                    Text(
                                      'Водитель: А. Аскаров',
                                      style: TextStyle(
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Column(
                                      children: [
                                        Text(
                                          '165 000 т',
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text('без НДС',
                                            style:
                                                TextStyle(color: Colors.grey))
                                      ],
                                    )
                                  ],
                                ),
                                //TODO n
                                Wrap(
                                    direction: Axis.vertical,
                                    spacing: 5.0,
                                    children: [
                                      Text('115 тн, 260 м³, Авто Тент'),
                                      Text('14 июн, Хим. продукты, безопасные'),
                                      Text(
                                        'ТОО «ОУСА Альянс»',
                                        style: TextStyle(
                                            color: Colors.grey, fontSize: 12.0),
                                      ),
                                    ]),
                                SizedBox(
                                  height: 5.0,
                                ),
                                //TODO n
                                Container(
                                  width: 350.0,
                                  height: 40.0,
                                  child: OutlineButton(
                                    onPressed: () {},
                                    child: Text(
                                      'Указать адрес погрузки',
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                    color: Colors.blue,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20.0),
                                    ),
                                    borderSide: BorderSide(color: Colors.blue),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 25.0),
                                  ),
                                ),

                                Divider(
                                  thickness: 1.5,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              OrderSecond(),
              Center(
                  child: Text(
                "3",
                style: TextStyle(fontSize: 40),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

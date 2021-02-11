import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
import 'package:flutter/rendering.dart';

class OrderSecond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
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
            padding: EdgeInsets.only(top: 10.0, right: 15.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: w * 0.65,
                      margin: EdgeInsets.only(left: 5, top: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 10.0,
                                width: 10.0,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFEA35),
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
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
                                              color: Color(0xff20273D),
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          size: 17.0,
                                          color: Color(0xff20273D),
                                        ),
                                        //TODO n
                                        Text(
                                          'Алматы',
                                          style: TextStyle(
                                              color: Color(0xff20273D),
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 20),
                            child: Wrap(
                                clipBehavior: Clip.hardEdge,
                                direction: Axis.vertical,
                                spacing: 5.0,
                                children: [
                                  Text('115 тн, 260 м³, Авто Тент'),
                                  Text('14 июн, Овощи и фрукты'),
                                ]),
                          ),

                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          width: w * 0.25,
                          height: 70,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Color(0xffDFE2E6)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 25,
                                width: w * 0.25,
                                decoration: BoxDecoration(
                                  color: Color(0xffFFF389),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      topLeft: Radius.circular(5)),
                                ),
                                child: Center(
                                    child: Text(
                                  'ОЖИДАЕТ',
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff20273D).withOpacity(0.6)),
                                )),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 3),
                                child: Text(
                                  'ВАША ЦЕНА:',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff20273D).withOpacity(0.6)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(
                                  '200 000 ₸',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff20273D)),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 25),
                      child: Text(
                        'ТОО «ОУСА Альянс»',
                        style: TextStyle(color: Colors.grey, fontSize: 12.0),
                      ),
                    ),
                    Container(
                      child: Text(
                        'вчера 15:30',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xffA2A9B2)
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,)
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:1),
            color: Colors.white,
            padding: EdgeInsets.only(top: 10.0, right: 15.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: w * 0.65,
                      margin: EdgeInsets.only(left: 5, top: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 10.0,
                                width: 10.0,
                                decoration: BoxDecoration(
                                  color: Color(0xffDFE2E5),
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
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
                                              color: Color(0xff20273D),
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          size: 17.0,
                                          color: Color(0xff20273D),
                                        ),
                                        //TODO n
                                        Text(
                                          'Алматы',
                                          style: TextStyle(
                                              color: Color(0xff20273D),
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 20),
                            child: Wrap(
                                clipBehavior: Clip.hardEdge,
                                direction: Axis.vertical,
                                spacing: 5.0,
                                children: [
                                  Text('115 тн, 260 м³, Авто Тент'),
                                  Text('14 июн, Овощи и фрукты'),
                                ]),
                          ),

                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          width: w * 0.25,
                          height: 70,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Color(0xffDFE2E6)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 25,
                                width: w * 0.25,
                                decoration: BoxDecoration(
                                  color: Color(0xffDFE2E5),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      topLeft: Radius.circular(5)),
                                ),
                                child: Center(
                                    child: Text(
                                      'ОЖИДАЕТ',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff20273D).withOpacity(0.6)),
                                    )),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 3),
                                child: Text(
                                  'ВАША ЦЕНА:',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff20273D).withOpacity(0.6)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(
                                  '200 000 ₸',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff20273D)),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 25),
                      child: Text(
                        'ТОО «ОУСА Альянс»',
                        style: TextStyle(color: Colors.grey, fontSize: 12.0),
                      ),
                    ),
                    Container(
                      child: Text(
                        'вчера 15:30',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xffA2A9B2)
                        ),
                      ),
                    ),
                  ],
                ),
                Bubble(
                  radius: Radius.circular(20),
                    color: Color(0xffDFE2E6),
                  padding: const BubbleEdges.symmetric(vertical: 10, horizontal: 15),
                  margin: BubbleEdges.only(top: 15),
                  alignment: Alignment.center,
                  nip: BubbleNip.rightTop,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '''Причина отказа:''',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Color(0xff20273D).withOpacity(0.3), fontSize: 12),
                      ),
                      SizedBox(height: 3),
                      Text(
                        '''Клиент выбрал другое предложение''',
                        textAlign: TextAlign.left,
                        style: TextStyle(color: Color(0xff20273D).withOpacity(0.8), fontSize: 14),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15,)

              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top:1),
            color: Colors.white,
            padding: EdgeInsets.only(top: 10.0, right: 15.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: w * 0.65,
                      margin: EdgeInsets.only(left: 5, top: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 10.0,
                                width: 10.0,
                                decoration: BoxDecoration(
                                  color: Color(0xffDFE2E5),
                                  borderRadius: BorderRadius.circular(50.0),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 10.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
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
                                              color: Color(0xff20273D),
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          size: 17.0,
                                          color: Color(0xff20273D),
                                        ),
                                        //TODO n
                                        Text(
                                          'Алматы',
                                          style: TextStyle(
                                              color: Color(0xff20273D),
                                              fontSize: 17.0,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10, left: 20),
                            child: Wrap(
                                clipBehavior: Clip.hardEdge,
                                direction: Axis.vertical,
                                spacing: 5.0,
                                children: [
                                  Text('115 тн, 260 м³, Авто Тент'),
                                  Text('14 июн, Овощи и фрукты'),
                                ]),
                          ),

                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Container(
                          width: w * 0.25,
                          height: 70,
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Color(0xffDFE2E6)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 25,
                                width: w * 0.25,
                                decoration: BoxDecoration(
                                  color: Color(0xffDFE2E5),
                                  borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(5),
                                      topLeft: Radius.circular(5)),
                                ),
                                child: Center(
                                    child: Text(
                                      'ОЖИДАЕТ',
                                      style: TextStyle(
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          color: Color(0xff20273D).withOpacity(0.6)),
                                    )),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 3),
                                child: Text(
                                  'ВАША ЦЕНА:',
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff20273D).withOpacity(0.6)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(
                                  '200 000 ₸',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff20273D)),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 25),
                      child: Text(
                        'ТОО «ОУСА Альянс»',
                        style: TextStyle(color: Colors.grey, fontSize: 12.0),
                      ),
                    ),
                    Container(
                      child: Text(
                        'вчера 15:30',
                        style: TextStyle(
                            fontSize: 12,
                            color: Color(0xffA2A9B2)
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
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
            padding: EdgeInsets.only(top: 10.0, right: 15.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 8.0, right: 5.0, left: 5.0),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                              color: Color(0xff008EFF).withOpacity(0.2),
                              borderRadius: BorderRadius.circular(2.0),
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //TODO n
                          Text(
                            'Водитель: А. Аскаров',
                            style: TextStyle(
                                fontSize: 14.0, fontWeight: FontWeight.w500),
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
                                  style: TextStyle(color: Colors.grey))
                            ],
                          )
                        ],
                      ),
                      //TODO n
                      Wrap(direction: Axis.vertical, spacing: 5.0, children: [
                        Text('115 тн, 260 м³, Авто Тент'),
                        Text('14 июн, Хим. продукты, безопасные'),
                        Text(
                          'ТОО «ОУСА Альянс»',
                          style: TextStyle(color: Colors.grey, fontSize: 12.0),
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
                          padding: EdgeInsets.symmetric(horizontal: 25.0),
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
    );
  }
}

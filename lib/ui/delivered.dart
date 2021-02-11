import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Delivered extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffF0F4F8),
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(
          Icons.arrow_back_ios_outlined,
          color: Colors.white,
        )),
        title: Text(
          'Заявка №000151',
          style: TextStyle(fontSize: 17),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff25BA76),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Color(0xff00B261).withOpacity(0.2),
                  borderRadius: BorderRadius.circular(2.0),
                ),
                child: Text(
                  'груз доставлен'.toUpperCase(),
                  style: TextStyle(
                      color: Color(0xff00B261),
                      fontSize: 12.0,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Фрукты, клубника 22 тн / 86 м³',
                    style:
                        TextStyle(fontSize: 21.0, fontWeight: FontWeight.w600),
                  ),
                  Text('Нур-Султан - Алматы, 14 июня',
                      style: TextStyle(
                        fontSize: 15.0,
                      ))
                ],
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 20, top: 20, bottom: 10),
                  child: Text(
                    'водитель груза:'.toUpperCase(),
                    style: TextStyle(
                        color: Color(0xffA2A9B2),
                        fontSize: 13.0,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20),
                  height: 60,
                  width: w,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 20.0,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'А. Аскаров',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0),
                          ),
                          Text('Сотрудник',
                              style:
                                  TextStyle(fontSize: 13.0, color: Colors.grey))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'статус перевозки:'.toUpperCase(),
                    style: TextStyle(
                        color: Color(0xffA2A9B2),
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              padding: const EdgeInsets.only(top: 20),
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  color: Color(0xff00B261), width: 2)),
                          child: Center(
                            child: Text(
                              '1',
                              style: TextStyle(
                                  color: Color(0xff00B261),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            'ПОГРУЗКА ЗАВЕРШЕНА'.toUpperCase(),
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff00B261),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 25,
                          height: 85,
                          child: VerticalDivider(
                            color: Color(0xff00B261),
                            thickness: 2,
                            width: 20,
                            indent: 5,
                            endIndent: 5,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20, top: 5),
                          child: Wrap(
                            direction: Axis.vertical,
                            spacing: 5.0,
                            children: [
                              Text(
                                'Дата погрузки:',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Color(0xffA2A9B2),
                                ),
                              ),
                              //TODO n
                              Text(
                                '14 июня в 12:30',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text('Показать адрес'),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  color: Color(0xff00B261), width: 2)),
                          child: Center(
                            child: Text(
                              '2',
                              style: TextStyle(
                                  color: Color(0xff00B261),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            'ГРУЗ В ПУТИ'.toUpperCase(),
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff00B261),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 25,
                          height: 85,
                          child: VerticalDivider(
                            color: Color(0xff00B261),
                            thickness: 2,
                            width: 20,
                            indent: 5,
                            endIndent: 5,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20, top: 5),
                          child: Wrap(
                            direction: Axis.vertical,
                            spacing: 5.0,
                            children: [
                              Text(
                                'Время в пути:',
                                style: TextStyle(
                                    fontSize: 14.0, color: Color(0xffA2A9B2)),
                              ),
                              //TODO n
                              Text(
                                '9 ч 35 мин',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w500),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.map_outlined,
                                    color: Colors.grey,
                                  ),
                                  Text('Показать маршрут'),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 25,
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(
                                  color: Color(0xff00B261), width: 2)),
                          child: Center(
                            child: Text(
                              '3',
                              style: TextStyle(
                                  color: Color(0xff00B261),
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 20),
                          child: Text(
                            'ГРУЗ ДОСТАВЛЕН'.toUpperCase(),
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xff00B261),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 5),
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 25,
                        ),
                        width: 250.0,
                        child: Text(
                          'Поздравляем! Вы доставили груз! Свяжитесь с заказчиком для последующих действий.',
                          style: TextStyle(
                              fontSize: 14.0, color: Color(0xffA2A9B2)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Информация о грузе:'.toUpperCase(),
                    style: TextStyle(
                        color: Color(0xffA2A9B2),
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: const EdgeInsets.only(top: 20, left: 10),
              margin: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xff008EFF)),
                        child: Center(
                          child: Text(
                            'A',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          'Нур-Султан',
                          style: TextStyle(
                              fontSize: 17,
                              color: Color(0xff20273D),
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 25,
                        child: VerticalDivider(
                          color: Color(0xff008EFF),
                          thickness: 2,
                          width: 20,
                          indent: 5,
                          endIndent: 5,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Wrap(
                          direction: Axis.vertical,
                          spacing: 5.0,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Казахстан, Акмолинская область',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: Color(0xffA2A9B2),
                                  fontWeight: FontWeight.w400),
                            ),
                            //TODO n
                            Text(
                              '14 июня',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400,
                                color: Color(0xff20273D),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xff008EFF)),
                        child: Center(
                          child: Text(
                            'B',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Text(
                          'Алматы',
                          style: TextStyle(
                              fontSize: 17,
                              color: Color(0xff20273D),
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        height: 50,
                        width: 25,
                        child: VerticalDivider(
                          color: Colors.white,
                          thickness: 2,
                          width: 20,
                          indent: 5,
                          endIndent: 5,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        child: Wrap(
                          direction: Axis.vertical,
                          spacing: 5.0,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Казахстан, Алматинская область',
                              style: TextStyle(
                                  fontSize: 14.0,
                                  color: Color(0xffA2A9B2),
                                  fontWeight: FontWeight.w400),
                            ),
                            //TODO n
                            Text(
                              '~620 км',
                              style: TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff008EFF)),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  OutlineButton(
                    onPressed: () {},
                    child: Text(
                      'Подробно о грузе',
                      style: TextStyle(color: Colors.blue),
                    ),
                    color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    borderSide: BorderSide(color: Colors.blue),
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.0, vertical: 15),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'СТОИМОСТЬ ПЕРЕВОЗКИ:'.toUpperCase(),
                    style: TextStyle(
                        color: Color(0xffA2A9B2),
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: const EdgeInsets.only(top: 25, left: 20),
              width: w,
              margin: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.blue, width: 2)),
                    child: Center(
                      child: Text(
                        '₸',
                        style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 14),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                    child: Wrap(
                      direction: Axis.vertical,
                      spacing: 5.0,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Стоимость:',
                          style:
                              TextStyle(fontSize: 14, color: Color(0xffA2A9B2)),
                        ),
                        Text('200 000 ₸',
                            style: TextStyle(
                                fontSize: 18, color: Color(0xff20273D))),
                        Text(
                          'без НДС, наличными',
                          style:
                              TextStyle(fontSize: 14, color: Color(0xffA2A9B2)),
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0, left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Контакты:'.toUpperCase(),
                    style: TextStyle(
                        color: Color(0xffA2A9B2),
                        fontSize: 13.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
                padding: const EdgeInsets.only(top: 20, left: 10),
                width: w,
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          child: Image.network(''),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff43CC8E),
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff43CC8E),
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff43CC8E),
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Color(0xff43CC8E),
                                    size: 15,
                                  ),
                                  Icon(
                                    Icons.star_half_outlined,
                                    color: Color(0xff43CC8E),
                                    size: 15,
                                  )
                                ],
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(
                                  "ТОО «ОУСА Альянс»",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff20273D)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Text(
                                  "Жанболат А.С.",
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff20273D)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(
                                  "Водитель",
                                  style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xffA2A9B2)),
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 35,
                          height: 35,
                          child: Icon(
                            Icons.phone,
                            size: 20,
                            color: Color(0xffA2A9B2),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.only(top: 5),
                                child: Text(
                                  "+7 702 360 70 20",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff20273D)),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(top: 10),
                                child: Text(
                                  "+7 702 360 70 20",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff20273D)),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          width: 35,
                          height: 35,
                          child: Icon(
                            Icons.mail_outline,
                            size: 20,
                            color: Color(0xffA2A9B2),
                          ),
                        ),
                        Container(
                          height: 35,
                          margin: EdgeInsets.only(left: 10),
                          child: Center(
                            child: Text(
                                " aisulu@ousa-al.kz",
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blue),
                              ),
                          ),
                        )
                      ],
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 150,
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color(0xff008EFF),
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: Center(
                              child: Text(
                                'НАПИСАТЬ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 150,
                            margin: EdgeInsets.only(right: 10),
                            height: 50,
                            decoration: BoxDecoration(
                                color: Color(0xff04CC71),
                                borderRadius: BorderRadius.circular(50)
                            ),
                            child: Center(
                              child: Text(
                                'ПОЗВОНИТЬ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
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
    );
  }
}

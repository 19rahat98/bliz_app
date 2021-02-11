import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    // double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffF0F4F8),
      appBar: AppBar(
        leadingWidth: w * 0.25,
        leading: Row(
          children: [
            Container(
              width: 30,
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_outlined,
                    color: Colors.white,
                    size: 20,
                  )),
            ),
            Text(
              'Назад',
              style: TextStyle(fontSize: 17),
            )
          ],
        ),
        title: Text(
          'Заявка №000151',
          style: TextStyle(fontSize: 17),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff008EFF),
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
                  color: Color(0xffDEF0FF),
                  borderRadius: BorderRadius.circular(2.0),
                ),
                child: Text(
                  'В РАБОТЕ: ОЖИДАЕТ ПОГРУЗКИ'.toUpperCase(),
                  style: TextStyle(
                      color: Color(0xff008EFF),
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, left: 20),
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
                        color: Color(0xff20273D).withOpacity(0.6),
                        fontSize: 13.0,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, right: 10),
                  height: 60,
                  width: w,
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
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
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16.0),
                              ),
                              Text('Сотрудник',
                                  style: TextStyle(
                                      fontSize: 13.0, color: Colors.grey))
                            ],
                          )
                        ],
                      ),
                      Container(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xffA2A9B2),
                          size: 15.0,
                        ),
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
                        color: Color(0xff20273D).withOpacity(0.6),
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
                                  color: Color(0xff008EFF), width: 2)),
                          child: Center(
                            child: Text(
                              '1',
                              style: TextStyle(
                                  color: Color(0xff008EFF),
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
                                color: Color(0xff20273D),
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
                          height: 230,
                          child: VerticalDivider(
                            color: Color(0xff008EFF),
                            thickness: 2,
                            width: 20,
                            indent: 5,
                            endIndent: 5,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 20,
                          ),
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
                                '14 июня',
                                style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Адрес:',
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Color(0xffA2A9B2),
                                ),
                              ),
                              Container(
                                width: w * 0.7,
                                child: Text(
                                    'Алматы, ул. Розыбакиева 117А склад «ТОО Баян Сулу» №115. Как приедете, позвоните, чтобы открыли шлагбаум.'),
                              ),
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 15.0),
                                width: w * 0.7,
                                height: 40.0,
                                child: OutlineButton(
                                  onPressed: () {},
                                  //TODO n
                                  child: Text(
                                    'Погрузку завершил',
                                    style: TextStyle(
                                        color: Theme.of(context).primaryColor),
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  borderSide: BorderSide(
                                      color: Theme.of(context).primaryColor),
                                  highlightedBorderColor:
                                      Theme.of(context).primaryColor,
                                ),
                              )
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
                                  color: Color(0xffA2A9B2).withOpacity(0.4),
                                  width: 2)),
                          child: Center(
                            child: Text(
                              '2',
                              style: TextStyle(
                                  color: Color(0xffA2A9B2),
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
                                color: Color(0xff3E455B).withOpacity(0.56),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 25,
                          height: 65,
                          child: VerticalDivider(
                            color: Color(0xffA2A9B2).withOpacity(0.4),
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
                              Container(
                                width: w * 0.6,
                                child: Text(
                                  'Нажмите кнопку выше «Погрузку завершил», чтобы перейти в новый статус.',
                                  style: TextStyle(
                                      fontSize: 14.0, color: Color(0xffA2A9B2)),
                                ),
                              ),
                              //TODO n
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
                                  color: Color(0xffA2A9B2).withOpacity(0.4),
                                  width: 2)),
                          child: Center(
                            child: Text(
                              '3',
                              style: TextStyle(
                                  color: Color(0xff3E455B).withOpacity(0.56),
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
                                color: Color(0xff3E455B).withOpacity(0.56),
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: w * 0.8,
                      margin: EdgeInsets.only(left: 20, top: 5),
                      child: Container(
                        margin: EdgeInsets.only(
                          left: 25,
                        ),
                        width: 250.0,
                        child: Text(
                          'Как только завершите грузоперевозку, нажмите на «Груз доставил», чтобы перейти в новый статус.',
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
                    // color: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    borderSide: BorderSide(color: Colors.blue),
                    padding:
                        EdgeInsets.symmetric(horizontal: 25.0, vertical: 10),
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
              padding: const EdgeInsets.only(top: 25, left: 10, right: 10),
              width: w,
              margin: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        // color: Colors.red,
                        alignment: Alignment.topCenter,
                        width: 25,
                        height: 25,
                        child: Container(
                          width: 18,
                          height: 18,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              border: Border.all(color: Colors.blue, width: 2)),
                          child: Center(
                            child: Text(
                              '₸',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20, bottom: 10),
                        child: Wrap(
                          direction: Axis.vertical,
                          spacing: 5.0,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Стоимость:',
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xffA2A9B2)),
                            ),
                            Text('200 000 ₸',
                                style: TextStyle(
                                    fontSize: 18, color: Color(0xff20273D))),
                            Text(
                              'без НДС, наличными',
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xffA2A9B2)),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Divider(
                    thickness: 1.5,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 15.0),
                    width: w * 0.8,
                    height: 50.0,
                    child: OutlineButton(
                      onPressed: () {},
                      //TODO n
                      child: Text(
                        'Отказаться от заявки',
                        style: TextStyle(color: Color(0xffFF0202)),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      borderSide: BorderSide(color: Color(0xffFF0202)),
                      highlightedBorderColor: Color(0xffFF0202),
                      // splashColor: Colors.red,
                      // hoverColor: Colors.white,
                      // focusColor: Colors.white,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                      child: Text(
                    'Внимание! Отказаться от заявки, можно только пока вы не совершили погрузку!',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Color(0xff20273D).withOpacity(0.5)),
                  ))
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
                                "Айсулу А.Л.",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xff20273D)),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5),
                              child: Text(
                                "Экспедитор",
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
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                            child: Text(
                              'НАПИСАТЬ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          width: 150,
                          margin: EdgeInsets.only(right: 10),
                          height: 50,
                          decoration: BoxDecoration(
                              color: Color(0xff04CC71),
                              borderRadius: BorderRadius.circular(50)),
                          child: Center(
                            child: Text(
                              'ПОЗВОНИТЬ',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
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

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FindCargo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff008EFF),
        centerTitle: true,
        title: Text(
          '203 груза',
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.normal, color: Colors.white),
        ),
        leading: IconButton(
          iconSize: 20,
          icon: Icon(
            Icons.arrow_back_ios_sharp,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          /*onPressed: () {
                Navigator.pop(context);
              },*/
        ),
        actions: [
          Container(
              padding: EdgeInsets.only(right: 0),
              child: Center(child: Text('Фильтр'))),
          IconButton(
            iconSize: 20,
            icon: Icon(
              Icons.filter_list,
              color: Colors.white,
            ),
            /*onPressed: () {
                Navigator.pop(context);
              },*/
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 50,
              margin: const EdgeInsets.symmetric(vertical: 10),
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 15,
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 5),
                        padding: const EdgeInsets.only(
                          left: 13.0,
                          right: 13.0,
                        ),
                        height: 35.0,
                        decoration: BoxDecoration(
                          color: Color(0xffE8F7FF),
                          borderRadius: BorderRadius.circular(25.0),
                          border: Border.all(
                            color: Color(0xff236896).withOpacity(0.25),
                            width: 1,
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Center(
                              child: Text(
                                'Дата выгрузки: 14 июн',
                                style: TextStyle(
                                    fontSize: 12.0,
                                    color: Color(0xff236896),
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.close_sharp,
                              color: Color(0xff20618C),
                              size: 14,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 5),
                        padding: const EdgeInsets.only(
                          left: 13.0,
                          right: 13.0,
                        ),
                        height: 35.0,
                        decoration: BoxDecoration(
                          color: Color(0xffE8F7FF),
                          borderRadius: BorderRadius.circular(25.0),
                          border: Border.all(
                            color: Color(0xff236896).withOpacity(0.25),
                            width: 1,
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Center(
                              child: Text(
                                'Дата выгрузки: 14 июн',
                                style: TextStyle(
                                    fontSize: 12.0,
                                    color: Color(0xff236896),
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.close_sharp,
                              color: Color(0xff20618C),
                              size: 14,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 5),
                        padding: const EdgeInsets.only(
                          left: 13.0,
                          right: 13.0,
                        ),
                        height: 35.0,
                        decoration: BoxDecoration(
                          color: Color(0xffE8F7FF),
                          borderRadius: BorderRadius.circular(25.0),
                          border: Border.all(
                            color: Color(0xff236896).withOpacity(0.25),
                            width: 1,
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Center(
                              child: Text(
                                'Дата выгрузки: 14 июн',
                                style: TextStyle(
                                    fontSize: 12.0,
                                    color: Color(0xff236896),
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.close_sharp,
                              color: Color(0xff20618C),
                              size: 14,
                            )
                          ],
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(right: 5),
                        padding: const EdgeInsets.only(
                          left: 13.0,
                          right: 13.0,
                        ),
                        height: 35.0,
                        decoration: BoxDecoration(
                          color: Color(0xffE8F7FF),
                          borderRadius: BorderRadius.circular(25.0),
                          border: Border.all(
                            color: Color(0xff236896).withOpacity(0.25),
                            width: 1,
                          ),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Center(
                              child: Text(
                                'Дата выгрузки: 14 июн',
                                style: TextStyle(
                                    fontSize: 12.0,
                                    color: Color(0xff236896),
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.close_sharp,
                              color: Color(0xff20618C),
                              size: 14,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      child: Stack(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            width: w * 0.95,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: Color(0xff9650FF),
                                width: 2,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(horizontal: 15),
                                    width: w * 0.90,
                                    color: Colors.white,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Нур-Султан',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87),
                                            ),
                                            Container(
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 3),
                                                child: Icon(
                                                  Icons.arrow_forward_rounded,
                                                  size: 18,
                                                )),
                                            Text(
                                              'Алматы',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(top: 3),
                                          child: Text(
                                            '620 км',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w300,
                                              color: Color(0xff008EFF),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: const EdgeInsets.only(top: 10),
                                                  child: Text(
                                                    '115 тн, 260 м³, Авто Тент',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w300,
                                                      color: Color(0xff20273D),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: const EdgeInsets.only(top: 3),
                                                  child: Text(
                                                    '14 июн, Фрукты, клубника',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w300,
                                                      color: Color(0xff20273D),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Align(
                                              child: SvgPicture.asset('assets/Shape.svg'),
                                            ),
                                            //Icon(Icons.star_border_outlined, size: 30,)
                                          ],
                                        ),

                                        Container(
                                          margin: const EdgeInsets.only(top: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    size: 15,
                                                    color: Color(0xff43CC8E),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 15,
                                                    color: Color(0xff43CC8E),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 15,
                                                    color: Color(0xff43CC8E),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 15,
                                                    color: Color(0xff43CC8E),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 15,
                                                    color: Color(0xff43CC8E),
                                                  ),
                                                  Container(
                                                    margin: const EdgeInsets.only(
                                                        left: 5),
                                                    child: Text(
                                                      'ТОО «ОУСА Альянс»',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        color: Color(0xffA2A9B2),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    left: 5),
                                                child: Text(
                                                  'изм. 16:40',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xffA2A9B2),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Divider()
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(horizontal: 15),
                                    width: w * 0.90,
                                    color: Colors.white,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Нур-Султан',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87),
                                            ),
                                            Container(
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 3),
                                                child: Icon(
                                                  Icons.arrow_forward_rounded,
                                                  size: 18,
                                                )),
                                            Text(
                                              'Алматы',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(top: 3),
                                          child: Text(
                                            '620 км',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w300,
                                              color: Color(0xff008EFF),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: const EdgeInsets.only(top: 10),
                                                  child: Text(
                                                    '115 тн, 260 м³, Авто Тент',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w300,
                                                      color: Color(0xff20273D),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: const EdgeInsets.only(top: 3),
                                                  child: Text(
                                                    '14 июн, Фрукты, клубника',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w300,
                                                      color: Color(0xff20273D),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Align(
                                              child: SvgPicture.asset('assets/Shape.svg'),
                                            ),
                                            //Icon(Icons.star_border_outlined, size: 30,)
                                          ],
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(top: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    size: 15,
                                                    color: Color(0xff43CC8E),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 15,
                                                    color: Color(0xff43CC8E),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 15,
                                                    color: Color(0xff43CC8E),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 15,
                                                    color: Color(0xff43CC8E),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 15,
                                                    color: Color(0xff43CC8E),
                                                  ),
                                                  Container(
                                                    margin: const EdgeInsets.only(
                                                        left: 5),
                                                    child: Text(
                                                      'ТОО «ОУСА Альянс»',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                        FontWeight.w400,
                                                        color: Color(0xffA2A9B2),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    left: 5),
                                                child: Text(
                                                  'изм. 16:40',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xffA2A9B2),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Divider()
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(horizontal: 15),
                                    width: w * 0.90,
                                    color: Colors.white,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Нур-Султан',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87),
                                            ),
                                            Container(
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 3),
                                                child: Icon(
                                                  Icons.arrow_forward_rounded,
                                                  size: 18,
                                                )),
                                            Text(
                                              'Алматы',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(top: 3),
                                          child: Text(
                                            '620 км',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w300,
                                              color: Color(0xff008EFF),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: const EdgeInsets.only(top: 10),
                                                  child: Text(
                                                    '115 тн, 260 м³, Авто Тент',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w300,
                                                      color: Color(0xff20273D),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: const EdgeInsets.only(top: 3),
                                                  child: Text(
                                                    '14 июн, Фрукты, клубника',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w300,
                                                      color: Color(0xff20273D),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Align(
                                              child: SvgPicture.asset('assets/Shape.svg'),
                                            ),
                                            //Icon(Icons.star_border_outlined, size: 30,)
                                          ],
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(top: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    size: 15,
                                                    color: Color(0xff43CC8E),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 15,
                                                    color: Color(0xff43CC8E),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 15,
                                                    color: Color(0xff43CC8E),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 15,
                                                    color: Color(0xff43CC8E),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 15,
                                                    color: Color(0xff43CC8E),
                                                  ),
                                                  Container(
                                                    margin: const EdgeInsets.only(
                                                        left: 5),
                                                    child: Text(
                                                      'ТОО «ОУСА Альянс»',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                        FontWeight.w400,
                                                        color: Color(0xffA2A9B2),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    left: 5),
                                                child: Text(
                                                  'изм. 16:40',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xffA2A9B2),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Divider()
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(horizontal: 15),
                                    width: w * 0.90,
                                    color: Colors.white,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Нур-Султан',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87),
                                            ),
                                            Container(
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 3),
                                                child: Icon(
                                                  Icons.arrow_forward_rounded,
                                                  size: 18,
                                                )),
                                            Text(
                                              'Алматы',
                                              style: TextStyle(
                                                  fontSize: 17,
                                                  fontWeight: FontWeight.w500,
                                                  color: Colors.black87),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(top: 3),
                                          child: Text(
                                            '620 км',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w300,
                                              color: Color(0xff008EFF),
                                            ),
                                          ),
                                        ),
                                        Row(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  margin: const EdgeInsets.only(top: 10),
                                                  child: Text(
                                                    '115 тн, 260 м³, Авто Тент',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w300,
                                                      color: Color(0xff20273D),
                                                    ),
                                                  ),
                                                ),
                                                Container(
                                                  margin: const EdgeInsets.only(top: 3),
                                                  child: Text(
                                                    '14 июн, Фрукты, клубника',
                                                    style: TextStyle(
                                                      fontSize: 14,
                                                      fontWeight: FontWeight.w300,
                                                      color: Color(0xff20273D),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Align(
                                              child: SvgPicture.asset('assets/Shape.svg'),
                                            ),
                                            //Icon(Icons.star_border_outlined, size: 30,)
                                          ],
                                        ),
                                        Container(
                                          margin: const EdgeInsets.only(top: 10),
                                          child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.start,
                                                children: [
                                                  Icon(
                                                    Icons.star,
                                                    size: 15,
                                                    color: Color(0xff43CC8E),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 15,
                                                    color: Color(0xff43CC8E),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 15,
                                                    color: Color(0xff43CC8E),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 15,
                                                    color: Color(0xff43CC8E),
                                                  ),
                                                  Icon(
                                                    Icons.star,
                                                    size: 15,
                                                    color: Color(0xff43CC8E),
                                                  ),
                                                  Container(
                                                    margin: const EdgeInsets.only(
                                                        left: 5),
                                                    child: Text(
                                                      'ТОО «ОУСА Альянс»',
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        fontWeight:
                                                        FontWeight.w400,
                                                        color: Color(0xffA2A9B2),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Container(
                                                margin: const EdgeInsets.only(
                                                    left: 5),
                                                child: Text(
                                                  'изм. 16:40',
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w400,
                                                    color: Color(0xffA2A9B2),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Divider()
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 10,
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 5),
                              color: Colors.white,
                              height: 20,
                              child: Center(
                                child: Text(
                                  'Топ-предложения',
                                  style: TextStyle(
                                      color: Color(0xff9650FF),
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        width: w * 0.90,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Нур-Султан',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black87),
                                ),
                                Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 3),
                                    child: Icon(
                                      Icons.arrow_forward_rounded,
                                      size: 18,
                                    )),
                                Text(
                                  'Алматы',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black87),
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 3),
                              child: Text(
                                '620 км',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff008EFF),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(top: 10),
                                      child: Text(
                                        '115 тн, 260 м³, Авто Тент',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                          color: Color(0xff20273D),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 3),
                                      child: Text(
                                        '14 июн, Фрукты, клубника',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                          color: Color(0xff20273D),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  child: SvgPicture.asset('assets/Shape.svg'),
                                ),
                                //Icon(Icons.star_border_outlined, size: 30,)
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Color(0xff43CC8E),
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Color(0xff43CC8E),
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Color(0xff43CC8E),
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Color(0xff43CC8E),
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Color(0xff43CC8E),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 5),
                                        child: Text(
                                          'ТОО «ОУСА Альянс»',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight:
                                            FontWeight.w400,
                                            color: Color(0xffA2A9B2),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 5),
                                    child: Text(
                                      'изм. 16:40',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffA2A9B2),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider()
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        width: w * 0.90,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Нур-Султан',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black87),
                                ),
                                Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 3),
                                    child: Icon(
                                      Icons.arrow_forward_rounded,
                                      size: 18,
                                    )),
                                Text(
                                  'Алматы',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black87),
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 3),
                              child: Text(
                                '620 км',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff008EFF),
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(top: 10),
                                      child: Text(
                                        '115 тн, 260 м³, Авто Тент',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                          color: Color(0xff20273D),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(top: 3),
                                      child: Text(
                                        '14 июн, Фрукты, клубника',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w300,
                                          color: Color(0xff20273D),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Align(
                                  child: SvgPicture.asset('assets/Shape.svg'),
                                ),
                                //Icon(Icons.star_border_outlined, size: 30,)
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Color(0xff43CC8E),
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Color(0xff43CC8E),
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Color(0xff43CC8E),
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Color(0xff43CC8E),
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Color(0xff43CC8E),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 5),
                                        child: Text(
                                          'ТОО «ОУСА Альянс»',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight:
                                            FontWeight.w400,
                                            color: Color(0xffA2A9B2),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 5),
                                    child: Text(
                                      'изм. 16:40',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffA2A9B2),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider()
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Container(
                        margin: const EdgeInsets.symmetric(horizontal: 15),
                        width: w * 0.90,
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment:
                          CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Нур-Султан',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black87),
                                ),
                                Container(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 3),
                                    child: Icon(
                                      Icons.arrow_forward_rounded,
                                      size: 18,
                                    )),
                                Text(
                                  'Алматы',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black87),
                                ),
                              ],
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 3),
                              child: Text(
                                '620 км',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff008EFF),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: Text(
                                '115 тн, 260 м³, Авто Тент',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff20273D),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 3),
                              child: Text(
                                '14 июн, Фрукты, клубника',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                  color: Color(0xff20273D),
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(top: 10),
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Color(0xff43CC8E),
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Color(0xff43CC8E),
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Color(0xff43CC8E),
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Color(0xff43CC8E),
                                      ),
                                      Icon(
                                        Icons.star,
                                        size: 15,
                                        color: Color(0xff43CC8E),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(
                                            left: 5),
                                        child: Text(
                                          'ТОО «ОУСА Альянс»',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight:
                                            FontWeight.w400,
                                            color: Color(0xffA2A9B2),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    margin: const EdgeInsets.only(
                                        left: 5),
                                    child: Text(
                                      'изм. 16:40',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0xffA2A9B2),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider()
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Sale extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //TODO n
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_outlined,
            color: Colors.white,
            size: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Эсковаторы'),
        actions: [
          IconButton(icon: Icon(Icons.star_border), onPressed: () {}),
          IconButton(icon: Icon(Icons.ios_share), onPressed: () {}),
        ],
      ),
      body: Container(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: Colors.red,
                    height: 250,
                    child: Stack(
                      children: [
                        Container(
                          height: 250,
                          child: Image.network(
                            'https://obj.altapress.ru/picture/564641/900x.jpg',
                            fit: BoxFit.fill
                          ),
                        ),
                        Positioned(
                          bottom: 15,
                          right: 20,
                          child: Container(
                            width: 60,
                            height: 25,
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(5)
                            ),
                            child: Center(
                              child: Text('1 из 8', style: TextStyle(
                                fontSize: 13,
                                color: Color(0xffFEFEFE).withOpacity(0.7),
                                fontWeight: FontWeight.bold
                              ),),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Экскаватор-погрузчик JCB',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold)),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            '8 000 ₸/час',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    indent: 20,
                    endIndent: 20,
                    thickness: 1.5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Год выпуска',
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14.0),
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text('Мобильность',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 14.0)),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text('Вид привода',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 14.0)),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text('Емкость ковша',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 14.0)),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text('Глубина копания',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 14.0)),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text('Ширина ковша',
                                style: TextStyle(
                                    color: Colors.grey, fontSize: 14.0))
                          ],
                        ),
                        SizedBox(
                          width: 30.0,
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('2014'),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text('Колесный'),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text('Механический'),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text('60 т'),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text('3.2 м'),
                              SizedBox(
                                height: 15.0,
                              ),
                              Text('60 см')
                            ])
                      ],
                    ),
                  ),
                  Divider(
                    indent: 20,
                    endIndent: 20,
                    thickness: 1.5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20.0, vertical: 10.0),
                    child: Text(
                      'Работаю только утром и днем. Звоните  или пишите на WhatsApp.',
                      style: TextStyle(
                          fontSize: 14, fontWeight: FontWeight.normal),
                    ),
                  ),
                  Divider(
                    indent: 20,
                    endIndent: 20,
                    thickness: 1.5,
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                          SizedBox(height: 15,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                width: 35,
                                height: 35,
                                child: Icon(
                                  Icons.phone,
                                  size: 25,
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
                        ],
                      )
                  ),
                  SizedBox(height: 50,)
                ],
              ),
            ),
            Positioned(
                bottom: MediaQuery.of(context).size.height * 0.03,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 150,
                        height: 50,
                        alignment: Alignment.bottomRight,
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
                        height: 50,
                        alignment: Alignment.bottomLeft,
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
              ),
          ],
        ),
      ),

      /* bottomSheet: Row(
        children: [Text('sss'), Text('sss')],
      ),*/
    );
  }
}

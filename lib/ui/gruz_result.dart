import 'package:flutter/material.dart';

class GruzResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leadingWidth: 75,
        leading: Row(
          children: [
            Container(
              // color: Colors.red,
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
            Text('Назад')
          ],
        ),
        title: Text('203 груза'),
        actions: [
          Row(
            children: [
              Text('Фильтр'),
              IconButton(
                icon: Icon(
                  Icons.filter_list,
                  color: Colors.white,
                  size: 30,
                ),
                onPressed: (){
                  print('press');
                },
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.9,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          width: MediaQuery.of(context).size.width * 0.6,
                          child: RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Нур-Султан',
                                  style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                                WidgetSpan(
                                  child: Icon(
                                    Icons.arrow_forward,
                                    size: 17.0,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Алматы',
                                  style: TextStyle(
                                      fontSize: 17.0,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black),
                                ),
                                TextSpan(text: '  '),
                                TextSpan(
                                  text: '620 км',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blue,
                                  ),
                                ),
                              ],
                            ),
                          )),
                      Column(
                        children: [
                          Text(
                            '165 000 т',
                            style: TextStyle(
                                fontSize: 14.0, fontWeight: FontWeight.w600),
                          ),
                          Text('без НДС',
                              style:
                                  TextStyle(fontSize: 12.0, color: Colors.grey))
                        ],
                      )
                    ],
                  ),
                  //TODO n
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Wrap(direction: Axis.vertical, spacing: 2.0, children: [
                        Text('115 тн, 260 м³, Авто Тент'),
                        Text('14 июн, Хим. продукты, безопасные'),
                      ]),
                      Container(
                        child: Icon(
                          Icons.star_border_rounded,
                          color: Colors.grey,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xff43CC8E),
                            size: 20,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xff43CC8E),
                            size: 20,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xff43CC8E),
                            size: 20,
                          ),
                          Icon(
                            Icons.star,
                            color: Color(0xff43CC8E),
                            size: 20,
                          ),
                          Icon(
                            Icons.star_half_outlined,
                            color: Color(0xff43CC8E),
                            size: 20,
                          ),
                          Text(
                            'ТОО «ОУСА Альянс»',
                            style:
                                TextStyle(color: Colors.grey, fontSize: 12.0),
                          ),
                        ],
                      ),
                      Text(
                        'изм. 16:40 ',
                        style: TextStyle(color: Colors.grey, fontSize: 12.0),
                      )
                    ],
                  ),
                  Divider(
                    thickness: 1.0,
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

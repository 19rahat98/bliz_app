import 'package:flutter/material.dart';

class AddItemScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Color(0xff008EFF),
        centerTitle: true,
        title: Text(
          'BLIZ.KZ',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 8,
          ),
          Container(
            height: 60,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  //margin: EdgeInsets.only(left: 10),
                  width: 60,
                  height: 60,
                  child: Icon(
                    Icons.indeterminate_check_box_sharp,
                    color: Color(0xff008EFF),
                    size: 20,
                  ),
                ),
                Container(
                  width: w * 0.65,
                  height: 60,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Грузы',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff20273D),
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'поиск груза и транспорта',
                        style:
                            TextStyle(fontSize: 13, color: Color(0xffA2A9B2)),
                      ),
                    ],
                  ),
                ),
                Container(
                  //margin: EdgeInsets.only(right: 10),
                  width: 60,
                  height: 60,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1,
          ),
          Container(
            height: 60,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  //margin: EdgeInsets.only(left: 10),
                  width: 60,
                  height: 60,
                  child: Icon(
                    Icons.indeterminate_check_box_sharp,
                    color: Color(0xff008EFF),
                    size: 20,
                  ),
                ),
                Container(
                  width: w * 0.65,
                  height: 60,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Транспорт',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff20273D),
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'поиск груза и транспорта',
                        style:
                            TextStyle(fontSize: 13, color: Color(0xffA2A9B2)),
                      ),
                    ],
                  ),
                ),
                Container(
                  //margin: EdgeInsets.only(right: 10),
                  width: 60,
                  height: 60,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1,
          ),
          Container(
            height: 60,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  //margin: EdgeInsets.only(left: 10),
                  width: 60,
                  height: 60,
                  child: Icon(
                    Icons.indeterminate_check_box_sharp,
                    color: Color(0xff008EFF),
                    size: 20,
                  ),
                ),
                Container(
                  width: w * 0.65,
                  height: 60,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Аукцион',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff20273D),
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Торги за грузы',
                        style:
                            TextStyle(fontSize: 13, color: Color(0xffA2A9B2)),
                      ),
                    ],
                  ),
                ),
                Container(
                  //margin: EdgeInsets.only(right: 10),
                  width: 60,
                  height: 60,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1,
          ),
          Container(
            height: 60,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  //margin: EdgeInsets.only(left: 10),
                  width: 60,
                  height: 60,
                  child: Icon(
                    Icons.indeterminate_check_box_sharp,
                    color: Color(0xff008EFF),
                    size: 20,
                  ),
                ),
                Container(
                  width: w * 0.65,
                  height: 60,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Склады',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff20273D),
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '560 предложений',
                        style:
                            TextStyle(fontSize: 13, color: Color(0xffA2A9B2)),
                      ),
                    ],
                  ),
                ),
                Container(
                  //margin: EdgeInsets.only(right: 10),
                  width: 60,
                  height: 60,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 1,
          ),
          Container(
            height: 60,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  //margin: EdgeInsets.only(left: 10),
                  width: 60,
                  height: 60,
                  child: Icon(
                    Icons.indeterminate_check_box_sharp,
                    color: Color(0xff008EFF),
                    size: 20,
                  ),
                ),
                Container(
                  width: w * 0.65,
                  height: 60,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Спецтехника',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff20273D),
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        '960 предложений',
                        style:
                            TextStyle(fontSize: 13, color: Color(0xffA2A9B2)),
                      ),
                    ],
                  ),
                ),
                Container(
                  //margin: EdgeInsets.only(right: 10),
                  width: 60,
                  height: 60,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            margin: EdgeInsets.only(left: 20),
            height: 30,
            child: Text(
              'ПОЛЕЗНЫЕ ВИДЖЕТЫ',
              style: TextStyle(fontSize: 13, color: Color(0xffA2A9B2)),
            ),
          ),
          Container(
            height: 60,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  //margin: EdgeInsets.only(left: 10),
                  width: 60,
                  height: 60,
                  child: Icon(
                    Icons.indeterminate_check_box_sharp,
                    color: Color(0xff008EFF),
                    size: 20,
                  ),
                ),
                Container(
                  width: w * 0.65,
                  height: 60,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Расчет расстояний',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff20273D),
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'длина маршрута и время в пути',
                        style:
                        TextStyle(fontSize: 13, color: Color(0xffA2A9B2)),
                      ),
                    ],
                  ),
                ),
                Container(
                  //margin: EdgeInsets.only(right: 10),
                  width: 60,
                  height: 60,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 1,),
          Container(
            height: 60,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  //margin: EdgeInsets.only(left: 10),
                  width: 60,
                  height: 60,
                  child: Icon(
                    Icons.indeterminate_check_box_sharp,
                    color: Color(0xff008EFF),
                    size: 20,
                  ),
                ),
                Container(
                  width: w * 0.65,
                  height: 60,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Проверка компаний',
                        style: TextStyle(
                            fontSize: 18,
                            color: Color(0xff20273D),
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'проверка юр. лиц по всему миру',
                        style:
                        TextStyle(fontSize: 13, color: Color(0xffA2A9B2)),
                      ),
                    ],
                  ),
                ),
                Container(
                  //margin: EdgeInsets.only(right: 10),
                  width: 60,
                  height: 60,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Colors.grey[500],
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

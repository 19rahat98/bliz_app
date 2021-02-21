import 'package:flutter/material.dart';

class FindCargoFilters extends StatefulWidget {
  @override
  _FindCargoFiltersState createState() => _FindCargoFiltersState();
}

class _FindCargoFiltersState extends State<FindCargoFilters> {
  String _cityNameFrom = 'Алматы, Казахстан';
  String _cityNameTo = 'Атырау, Казахстан';
  String _vehicleType = 'Любой';
  String _paymentType = 'Любая';
  String _dateShipping = 'С сегодняшнего дня';
  final _priceFrom = TextEditingController();
  final _priceTo = TextEditingController();

  @override
  void dispose() {
    _priceFrom.dispose();
    _priceTo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffF0F4F8),
      appBar: AppBar(
        backgroundColor: Color(0xff008EFF),
        centerTitle: true,
        title: Text(
          'Поиск грузов',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        leadingWidth: 80,
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
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: w,
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'Откуда',
                        style: TextStyle(
                            color: Color(0xffA2A9B2),
                            fontSize: 13,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    Container(
                      width: w,
                      height: 60,
                      child: DropdownButton<String>(
                        value: _cityNameFrom,
                        isExpanded: true,
                        icon: Icon(Icons.arrow_forward_ios),
                        iconSize: 12,
                        elevation: 4,
                        style: TextStyle(color: Colors.black87),
                        underline: Container(
                          height: 1,
                          color: Color(0xffDFE2E5),
                        ),
                        dropdownColor: Colors.white,
                        onChanged: (String newValue) {
                          setState(() {
                            _cityNameFrom = newValue;
                          });
                        },
                        items: <String>[
                          'Алматы, Казахстан',
                          'Атырау, Казахстан',
                          'Астана, Казахстан',
                          'Актау, Казахстан'
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                  fontSize: 17, color: Color(0xff20273D)),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Куда',
                        style: TextStyle(
                            color: Color(0xffA2A9B2),
                            fontSize: 13,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    DropdownButtonHideUnderline(
                      child: Container(
                        width: w,
                        child: DropdownButton<String>(
                          value: _cityNameTo,
                          isExpanded: true,
                          icon: Icon(Icons.arrow_forward_ios),
                          iconSize: 12,
                          elevation: 4,
                          style: TextStyle(color: Colors.black87),
                          dropdownColor: Colors.white,
                          onChanged: (String newValue) {
                            setState(() {
                              _cityNameTo = newValue;
                            });
                          },
                          items: <String>[
                            'Алматы, Казахстан',
                            'Атырау, Казахстан',
                            'Астана, Казахстан',
                            'Актау, Казахстан'
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                    fontSize: 17, color: Color(0xff20273D)),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: w,
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'Транспорт',
                        style: TextStyle(
                            color: Color(0xffA2A9B2),
                            fontSize: 13,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    Container(
                      width: w,
                      margin: EdgeInsets.only(bottom: 10),

                      height: 60,
                      child: DropdownButton<String>(
                        value: _vehicleType,
                        isExpanded: true,
                        icon: Icon(Icons.arrow_forward_ios),
                        iconSize: 12,
                        elevation: 4,
                        style: TextStyle(color: Colors.black87),
                        underline: Container(
                          height: 1,
                          color: Color(0xffDFE2E5),
                        ),
                        dropdownColor: Colors.white,
                        onChanged: (String newValue) {
                          setState(() {
                            _vehicleType = newValue;
                          });
                        },
                        items: <String>[
                          'Любой',
                          'Любой2',
                          'Любой3',
                          'Любой4',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                  fontSize: 17, color: Color(0xff20273D)),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Объем, м3',
                        style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff20273D).withOpacity(0.5)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 15),
                      decoration: BoxDecoration(
                          border:
                          Border.all(width: 1, color: Color(0xffDFE2E5)),
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            width: w * 0.45,
                            child: TextField(
                              controller: _priceFrom,
                              decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  hintText: "от"),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: VerticalDivider(
                              color: Color(0xffDFE2E5),
                              thickness: 1,
                              width: 2,
                              indent: 5,
                              endIndent: 5,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            width: w * 0.45,
                            child: TextField(
                              controller: _priceTo,
                              decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  hintText: "от"),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Text(
                        'Вес, тн',
                        style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff20273D).withOpacity(0.5)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 5),
                      decoration: BoxDecoration(
                          border:
                          Border.all(width: 1, color: Color(0xffDFE2E5)),
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            width: w * 0.45,
                            child: TextField(
                              controller: _priceFrom,
                              decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  hintText: "от"),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: VerticalDivider(
                              color: Color(0xffDFE2E5),
                              thickness: 1,
                              width: 2,
                              indent: 5,
                              endIndent: 5,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            width: w * 0.45,
                            child: TextField(
                              controller: _priceTo,
                              decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  hintText: "от"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: w,
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'Откуда',
                        style: TextStyle(
                            color: Color(0xffA2A9B2),
                            fontSize: 13,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    Container(
                      width: w,
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                          itemHeight: 50.0,
                          value: _dateShipping,
                          isExpanded: true,
                          icon: Icon(Icons.arrow_forward_ios),
                          iconSize: 12,
                          elevation: 4,
                          style: TextStyle(color: Colors.black87),
                          underline: Container(
                            height: 1,
                            color: Color(0xffDFE2E5),
                          ),
                          dropdownColor: Colors.white,
                          onChanged: (String newValue) {
                            setState(() {
                              _dateShipping = newValue;
                            });
                          },
                          items: <String>[
                            'С сегодняшнего дня',
                            'С сегодняшнего дня2',
                            'С сегодняшнего дня3',
                            'С сегодняшнего дня4',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: TextStyle(
                                    fontSize: 17, color: Color(0xff20273D)),
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: w,
                margin: EdgeInsets.only(bottom: 10),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'Форма оплаты',
                        style: TextStyle(
                            color: Color(0xffA2A9B2),
                            fontSize: 13,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                    Container(
                      width: w,
                      margin: EdgeInsets.only(bottom: 10),
                      child: DropdownButton<String>(
                        itemHeight: 50.0,
                        value: _paymentType,
                        isExpanded: true,
                        icon: Icon(Icons.arrow_forward_ios),
                        iconSize: 12,
                        elevation: 4,
                        style: TextStyle(color: Colors.black87),
                        underline: Container(
                          height: 1,
                          color: Color(0xffDFE2E5),
                        ),
                        dropdownColor: Colors.white,
                        onChanged: (String newValue) {
                          setState(() {
                            _paymentType = newValue;
                          });
                        },
                        items: <String>[
                          'Любая',
                          'Любая2',
                          'Любая3',
                          'Любая4',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(
                                  fontSize: 17, color: Color(0xff20273D)),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    Container(
                      child: Text(
                        'Стоимость перевозки, тг',
                        style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff20273D).withOpacity(0.5)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5, bottom: 5),
                      decoration: BoxDecoration(
                          border:
                          Border.all(width: 1, color: Color(0xffDFE2E5)),
                          borderRadius: BorderRadius.circular(5)),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            width: w * 0.45,
                            child: TextField(
                              controller: _priceFrom,
                              decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  hintText: "от"),
                            ),
                          ),
                          Container(
                            height: 40,
                            child: VerticalDivider(
                              color: Color(0xffDFE2E5),
                              thickness: 1,
                              width: 2,
                              indent: 5,
                              endIndent: 5,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            width: w * 0.45,
                            child: TextField(
                              controller: _priceTo,
                              decoration: new InputDecoration(
                                  border: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  errorBorder: InputBorder.none,
                                  disabledBorder: InputBorder.none,
                                  hintText: "от"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: w * 0.9,
                height: 50,
                child: FlatButton(
                  onPressed: () {},
                  child: Text(
                    'НАЙТИ ГРУЗЫ',
                    style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  color: Colors.blue,
                  padding: EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

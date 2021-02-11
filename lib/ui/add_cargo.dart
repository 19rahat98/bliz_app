import 'package:flutter/material.dart';

class AddCargo extends StatefulWidget {
  @override
  _AddCargoState createState() => _AddCargoState();
}

class _AddCargoState extends State<AddCargo> {
  String _cityNameFrom;
  String _cityNameTo;
  String _shippingDate;
  String _typeVehicle = 'Любой';
  String _typePayment = 'Любой';
  final _widthFrom = TextEditingController();
  final _widthTo = TextEditingController();
  final _priceFrom = TextEditingController();
  final _priceTo = TextEditingController();

  @override
  void dispose() {
    _widthFrom.dispose();
    _widthTo.dispose();
    _priceFrom.dispose();
    _priceTo.dispose();
    super.dispose();
  }

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
          'Добавить груз',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        leadingWidth: w*0.25,
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
        actions: [
          Container(
              margin: EdgeInsets.only(right: 15), child: Icon(Icons.close)),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Text(
                      'Добавить груз',
                      style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff20273D)),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 5),
                      alignment: Alignment.center,
                      width: w * 0.6,
                      child: Text(
                        'Заполните всю необходимую информацию о вашем грузе.',
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal,
                            color: Color(0xffA2A9B2)),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        'Откуда',
                        style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff20273D).withOpacity(0.5)),
                      ),
                    ),
                    Container(
                      width: w,
                      height: 60,
                      margin: EdgeInsets.only(bottom: 15),
                      child: DropdownButton<String>(
                        hint: Text(
                          'Откуда',
                          style:
                              TextStyle(fontSize: 17, color: Color(0xffA2A9B2)),
                        ),
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
                        items: <String>['Алматы', 'Астана', 'Акутау', 'Атырау']
                            .map<DropdownMenuItem<String>>((String value) {
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
                            fontSize: 13,
                            color: Color(0xff20273D).withOpacity(0.5)),
                      ),
                    ),
                    Container(
                      width: w,
                      height: 60,
                      margin: EdgeInsets.only(bottom: 15),
                      child: DropdownButton<String>(
                        hint: Text(
                          'Куда',
                          style:
                              TextStyle(fontSize: 17, color: Color(0xffA2A9B2)),
                        ),
                        value: _cityNameTo,
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
                            _cityNameTo = newValue;
                          });
                        },
                        items: <String>['Алматы', 'Астана', 'Акутау', 'Атырау']
                            .map<DropdownMenuItem<String>>((String value) {
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
                        'Дата погрузки',
                        style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff20273D).withOpacity(0.5)),
                      ),
                    ),
                    Container(
                      width: w,
                      height: 60,
                      margin: EdgeInsets.only(bottom: 15),
                      child: DropdownButton<String>(
                        hint: Text(
                          'Выберите дату',
                          style:
                              TextStyle(fontSize: 17, color: Color(0xffA2A9B2)),
                        ),
                        value: _shippingDate,
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
                            _shippingDate = newValue;
                          });
                        },
                        items: <String>['Алматы', 'Астана', 'Акутау', 'Атырау']
                            .map<DropdownMenuItem<String>>((String value) {
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
                        'Нужен транспорт',
                        style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff20273D).withOpacity(0.5)),
                      ),
                    ),
                    Container(
                      width: w,
                      height: 60,
                      margin: EdgeInsets.only(bottom: 15),
                      child: DropdownButton<String>(
                        /*hint: Text(
                          'Выберите дату',
                          style:
                          TextStyle(fontSize: 17, color: Color(0xffA2A9B2)),
                        ),*/
                        value: _typeVehicle,
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
                            _typeVehicle = newValue;
                          });
                        },
                        items: <String>['Любой', 'Любой2', 'Любой3', 'Любой4']
                            .map<DropdownMenuItem<String>>((String value) {
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
                        'Вес, тн',
                        style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff20273D).withOpacity(0.5)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5,bottom: 10),
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.only(left: 10),
                            width: w * 0.45,
                            child: TextField(
                              controller: _widthFrom,
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
                              controller: _widthTo,
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
                        'Объем, м3',
                        style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff20273D).withOpacity(0.5)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 5,bottom: 20),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Color(0xffDFE2E5)),
                        borderRadius: BorderRadius.circular(5)
                      ),
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
                                  hintText: "от",
                              contentPadding: EdgeInsets.symmetric(vertical: 1)),
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
                        'Форма оплаты',
                        style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff20273D).withOpacity(0.5)),
                      ),
                    ),
                    Container(
                      width: w,
                      height: 60,
                      margin: EdgeInsets.only(bottom: 15),
                      child: DropdownButton<String>(
                        /*hint: Text(
                          'Выберите дату',
                          style:
                          TextStyle(fontSize: 17, color: Color(0xffA2A9B2)),
                        ),*/
                        value: _typeVehicle,
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
                            _typePayment = newValue;
                          });
                        },
                        items: <String>['Любой', 'Любой2', 'Любой3', 'Любой4']
                            .map<DropdownMenuItem<String>>((String value) {
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
                      margin: EdgeInsets.only(top: 5,bottom: 30),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Color(0xffDFE2E5)),
                          borderRadius: BorderRadius.circular(5)
                      ),
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
                      width: w * 0.9,
                      height: 50,
                      child: FlatButton(
                        onPressed: () {},
                        child: Text(
                          'Подробно о грузе',
                          style: TextStyle(color: Colors.white),
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
              )
            ],
          ),
        ),
      ),
    );
  }
}

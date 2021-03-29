import 'dart:io';

import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:bliz/ui/published.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:bliz/ui/Widgets/empty_page.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'package:bliz/logic_block/blocs/bloc.dart';
import 'package:bliz/logic_block/models/city_model.dart';
import 'package:bliz/logic_block/models/more_models.dart';
import 'package:bliz/logic_block/providers/special_machinery_provider.dart';

class AddVehicleScreen extends StatefulWidget {
  @override
  _AddVehicleScreenState createState() => _AddVehicleScreenState();
}

class _AddVehicleScreenState extends State<AddVehicleScreen> {
  int _cityNameFrom;
  int _typeVehicle;
  int _typeCurrency;
  int _type_equipment_rent;
  File _image;


  final _widthFrom = TextEditingController();
  final _widthTo = TextEditingController();
  final _netFrom = TextEditingController();
  final _netTo = TextEditingController();
  final _year = TextEditingController();
  final _name = TextEditingController();
  final _address = TextEditingController();
  final _price = TextEditingController();
  final _power = TextEditingController();
  final _description = TextEditingController();


  Future _getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = image;
    });
  }


  _addNewSpecialMachinery() {
    BlocProvider.of<AddSpecialMachineryBloc>(context).add(
      AddSpecialMachinery(
          typeEquipment: _type_equipment_rent,
          categoryId: 1,
          name: _name.text,
          cityId: 'ChIJq8vFFn1ugzgRdm2YrY9mRD0',
          address: _address.text,
          net: _netFrom.text,
          year: _year.text,
          typeBlade: 1,
          power: _power.text,
          height: 23,
          width: _widthTo.text,
          rise: 3,
          deep: 32,
          price: _price.text,
          currency: _typeCurrency,
          equipmentRent: _type_equipment_rent,
          description: _description.text,
          images: _image,
      ),
    );
  }

  Future<void> _showMessage(String message) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'cargo',
          ),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  message,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text(
                'close',
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    _widthFrom.dispose();
    _widthTo.dispose();
    _netFrom.dispose();
    _netTo.dispose();
    _name.dispose();
    _year.dispose();
    _address.dispose();
    _price.dispose();
    _power.dispose();
    _description.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    initializeDateFormatting();
    final SpecialMachineryProvider smProv =
        Provider.of<SpecialMachineryProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff008EFF),
        centerTitle: true,
        title: Text(
          'Добавить спец технику',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
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
        actions: [
          Container(
              margin: EdgeInsets.only(right: 15), child: Icon(Icons.close)),
        ],
      ),
      body: FutureBuilder<bool>(
          future: smProv.getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.none)
              return Center(child: CircularProgressIndicator());
            else if (snapshot.hasError || snapshot.data == false)
              return Center(
                  child: emptyPage(Icons.error_outline, 'Something is wrong'));
            else if (snapshot.data == true) {
              return SingleChildScrollView(
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
                              'Добавить спец технику',
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
                                'Заполните всю необходимую информацию о вашей спец технике',
                                textAlign: TextAlign.center,
                                maxLines: 3,
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: Color(0xffA2A9B2)),
                              ),
                            )
                          ],
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'Название',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xff20273D).withOpacity(0.5)),
                            ),
                          ),
                          Container(
                            width: w,
                            height: 60,
                            margin: EdgeInsets.only(bottom: 15),
                            child: TextFormField(
                              controller: _name,
                              decoration: InputDecoration(
                                  hintText: "Укажите название спец техники",
                                  hintStyle: TextStyle(color: Color(0xffA2A9B2))),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              child: Text(
                                'Город',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff20273D).withOpacity(0.5)),
                              ),
                            ),
                            Container(
                              width: w,
                              height: 60,
                              margin: EdgeInsets.only(bottom: 15),
                              child: DropdownButton<int>(
                                hint: Text(
                                  'Город',
                                  style: TextStyle(
                                      fontSize: 17, color: Color(0xffA2A9B2)),
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
                                onChanged: (int newValue) {
                                  setState(() {
                                    _cityNameFrom = newValue;
                                  });
                                },
                                items: smProv.cityData.map((CityData map) {
                                  return DropdownMenuItem<int>(
                                    value: map.id,
                                    child: new Text(
                                      map.name,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Color(0xff20273D)),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    'Адрес',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xff20273D).withOpacity(0.5)),
                                  ),
                                ),
                                Container(
                                  width: w,
                                  height: 60,
                                  margin: EdgeInsets.only(bottom: 15),
                                  child: TextFormField(
                                    controller: _address,
                                    decoration: InputDecoration(
                                        hintText: "Укажите адрес",
                                        hintStyle:
                                            TextStyle(color: Color(0xffA2A9B2))),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    'Вес',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xff20273D).withOpacity(0.5)),
                                  ),
                                ),
                                Container(
                                  width: w,
                                  height: 60,
                                  margin: EdgeInsets.only(bottom: 15),
                                  child: TextFormField(
                                    controller: _year,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        hintText: "Укажите массу техники",
                                        hintStyle:
                                            TextStyle(color: Color(0xffA2A9B2))),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    'Мощность',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xff20273D).withOpacity(0.5),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: w,
                                  height: 60,
                                  margin: EdgeInsets.only(bottom: 15),
                                  child: TextFormField(
                                    controller: _power,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        hintText: "Укажите мощность техники",
                                        hintStyle:
                                            TextStyle(color: Color(0xffA2A9B2))),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    'Описание',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xff20273D).withOpacity(0.5),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: w,
                                  height: 60,
                                  margin: EdgeInsets.only(bottom: 15),
                                  child: TextFormField(
                                    controller: _description,
                                    decoration: InputDecoration(
                                        hintText: "Укажите описание техники",
                                        hintStyle:
                                            TextStyle(color: Color(0xffA2A9B2))),
                                  ),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    'Нужен транспорт',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color:
                                            Color(0xff20273D).withOpacity(0.5)),
                                  ),
                                ),
                                Container(
                                  width: w,
                                  alignment: Alignment.centerLeft,
                                  //margin: EdgeInsets.only(bottom: 10),
                                  height: 40,
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<int>(
                                      hint: Text(
                                        'Укажите тип транспорта',
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Color(0xffA2A9B2)),
                                      ),
                                      value: _typeVehicle,
                                      isExpanded: true,
                                      isDense: true,
                                      icon: Icon(Icons.arrow_forward_ios),
                                      iconSize: 12,
                                      elevation: 4,
                                      style: TextStyle(color: Colors.black87),
                                      dropdownColor: Colors.white,
                                      onChanged: (int newValue) {
                                        setState(() {
                                          _typeVehicle = newValue;
                                        });
                                      },
                                      items: smProv.equipmentType
                                          .map((UniversalModel map) {
                                        return DropdownMenuItem<int>(
                                          value: map.id,
                                          child: new Text(
                                            map.name,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Color(0xff20273D)),
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: Color(0xffDFE2E5),
                                  height: 0,
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    'Тип аренды',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color:
                                        Color(0xff20273D).withOpacity(0.5)),
                                  ),
                                ),
                                Container(
                                  width: w,
                                  alignment: Alignment.centerLeft,
                                  //margin: EdgeInsets.only(bottom: 10),
                                  height: 40,
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<int>(
                                      hint: Text(
                                        'Укажите тип аренды',
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Color(0xffA2A9B2)),
                                      ),
                                      value: _type_equipment_rent,
                                      isExpanded: true,
                                      isDense: true,
                                      icon: Icon(Icons.arrow_forward_ios),
                                      iconSize: 12,
                                      elevation: 4,
                                      style: TextStyle(color: Colors.black87),
                                      dropdownColor: Colors.white,
                                      onChanged: (int newValue) {
                                        setState(() {
                                          _type_equipment_rent = newValue;
                                        });
                                      },
                                      items: smProv.equipmentRentType
                                          .map((UniversalModel map) {
                                        return DropdownMenuItem<int>(
                                          value: map.id,
                                          child: new Text(
                                            map.name,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Color(0xff20273D)),
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: Color(0xffDFE2E5),
                                  height: 0,
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 10),
                                  child: Text(
                                    'Вес, тн',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xff20273D).withOpacity(0.5)),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 5, bottom: 16),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 1, color: Color(0xffDFE2E5)),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(left: 10),
                                        width: w * 0.45,
                                        child: TextField(
                                          controller: _netFrom,
                                          keyboardType: TextInputType.number,
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
                                          controller: _netTo,
                                          keyboardType: TextInputType.number,
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
                            Container(
                              child: Text(
                                'Объем, м3',
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Color(0xff20273D).withOpacity(0.5)),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 5, bottom: 16),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: Color(0xffDFE2E5)),
                                  borderRadius: BorderRadius.circular(5)),
                              child: Row(
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 10),
                                    width: w * 0.45,
                                    child: TextField(
                                      controller: _widthFrom,
                                      keyboardType: TextInputType.number,
                                      decoration: new InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          hintText: "от",
                                          contentPadding: EdgeInsets.symmetric(
                                              vertical: 1)),
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
                                      keyboardType: TextInputType.number,
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
                            /*Container(
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
                              child: DropdownButton<int>(
                                hint: Text(
                                  'Укажите тип оплаты',
                                  style: TextStyle(
                                      fontSize: 17, color: Color(0xffA2A9B2)),
                                ),
                                value: _typePayment,
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
                                onChanged: (int newValue) {
                                  setState(() {
                                    _typePayment = newValue;
                                  });
                                },
                                items:
                                  smProv.paymentTypeList.map((Payment map) {
                                  return DropdownMenuItem<int>(
                                    value: map.id,
                                    child: new Text(
                                      map.name,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Color(0xff20273D)),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),*/
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    'Валюта',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color:
                                        Color(0xff20273D).withOpacity(0.5)),
                                  ),
                                ),
                                Container(
                                  width: w,
                                  alignment: Alignment.centerLeft,
                                  //margin: EdgeInsets.only(bottom: 10),
                                  height: 40,
                                  child: DropdownButtonHideUnderline(
                                    child: DropdownButton<int>(
                                      hint: Text(
                                        'Укажите тип валюты',
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: Color(0xffA2A9B2)),
                                      ),
                                      value: _typeCurrency,
                                      isExpanded: true,
                                      isDense: true,
                                      icon: Icon(Icons.arrow_forward_ios),
                                      iconSize: 12,
                                      elevation: 4,
                                      style: TextStyle(color: Colors.black87),
                                      dropdownColor: Colors.white,
                                      onChanged: (int newValue) {
                                        setState(() {
                                          _typeCurrency = newValue;
                                        });
                                      },
                                      items: smProv.currencyTypeList
                                          .map((Currency map) {
                                        return DropdownMenuItem<int>(
                                          value: map.id,
                                          child: new Text(
                                            map.name,
                                            overflow: TextOverflow.ellipsis,
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Color(0xff20273D)),
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                                Divider(
                                  color: Color(0xffDFE2E5),
                                  height: 0,
                                ),
                                SizedBox(height: 10,),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  child: Text(
                                    'Цена, тг',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xff20273D).withOpacity(0.5)),
                                  ),
                                ),
                                Container(
                                  width: w,
                                  height: 60,
                                  margin: EdgeInsets.only(bottom: 15),
                                  child: TextFormField(
                                    controller: _price,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                        hintText: "Укажите цену",
                                        hintStyle:
                                            TextStyle(color: Color(0xffA2A9B2))),
                                  ),
                                ),
                              ],
                            ),
                            InkWell(
                              onTap: (){
                                 _getImage();
                              },
                              child: Container(
                                alignment: Alignment.center,
                                margin: EdgeInsets.only(bottom: 10),
                                child: Text("Pick images"),
                              ),
                            ),
                            BlocBuilder<AddSpecialMachineryBloc, SpecialMachineryState>(
                              builder: (context, register) {
                                return BlocListener<AddSpecialMachineryBloc,
                                    SpecialMachineryState>(
                                  listener: (context, state) {
                                    if (state is InitialAddASpecialMachineryState ||
                                        state is AddSpecialMachineryLoading) {
                                      return Center(
                                        child: CircularProgressIndicator(),
                                      );
                                    } else if (state is AddSpecialMachineryFail) {
                                      _showMessage(
                                        state.code,
                                      );
                                    } else if (state is AddingSpecialMachinerySuccess) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Published()),
                                      );
                                    }
                                  },
                                  child: Container(
                                    width: w * 0.9,
                                    height: 50,
                                    child: FlatButton(
                                      onPressed: () {
                                        _addNewSpecialMachinery();
                                      },
                                      child: Text(
                                        'ДОБАВИТЬ ОБЪЯВЛЕНИЕ',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                      ),
                                      color: Colors.blue,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 25.0, vertical: 10.0),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              );
            } else
              return Center(child: CircularProgressIndicator());
          }),
    );
  }
}

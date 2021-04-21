import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';

import 'package:bliz/ui/published.dart';
import 'package:bliz/ui/Widgets/empty_page.dart';
import 'package:bliz/logic_block/blocs/bloc.dart';
import 'package:bliz/logic_block/models/city_model.dart';
import 'package:bliz/logic_block/models/more_models.dart';
import 'package:bliz/logic_block/blocs/add_cargo_bloc/add_cargo_bloc.dart';
import 'package:bliz/logic_block/blocs/add_cargo_bloc/add_cargo_event.dart';
import 'package:bliz/logic_block/blocs/add_cargo_bloc/add_cargo_state.dart';

class AddTransportScreen extends StatefulWidget {
  @override
  _AddTransportScreenState createState() => _AddTransportScreenState();
}

class _AddTransportScreenState extends State<AddTransportScreen> {

  String _cityNameFrom;
  String _cityNameTo;
  String _shippingDate;
  int _typeVehicle;
  int _typePayment;
  String _loadingDateTimeString = 'Выберите дату';
  String _endDateTimeString = 'Выберите дату';
  bool _loadingDateChosen = false;
  bool _endDateChosen = false;
  final _name = TextEditingController();
  final _widthFrom = TextEditingController();
  final _widthTo = TextEditingController();
  final _netTo = TextEditingController();
  final _netFrom = TextEditingController();
  final _priceFrom = TextEditingController();
  final _priceTo = TextEditingController();

  _addNewCargo() {
    BlocProvider.of<AddCargoBloc>(context).add(
      AddCargo(
        categoryId: 2,
        subCategoryId: 1,
        title: _name.text,
        from: 'ChIJMQzHr3HMSkERlMR0p2xNoiY',
        toOrder: 'ChIJq8vFFn1ugzgRdm2YrY9mRD0',
        volume: _widthFrom.text,
        net: _netFrom.text,
        startDate: _loadingDateTimeString,
        endDate: '21.02.21',
        documents: '1,2',
        price: 1232,
        paymentType: _typePayment,
        priceType: _priceFrom.text,
        toCityString: _cityNameTo,
        fromString: _cityNameFrom,
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
    _priceFrom.dispose();
    _priceTo.dispose();
    super.dispose();
  }

  @override
  void initState() {
    BlocProvider.of<CargoAdditionalInfoBloc>(context).add(GetCargoInfo());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    initializeDateFormatting();
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Color(0xff008EFF),
        centerTitle: true,
        title: Text(
          'Добавить транспорт',
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        ),
        leadingWidth: w * 0.25,
        leading: InkWell(
          onTap: () => Navigator.pop(context),
          child: Row(
            children: [
              Container(
                width: 30,
                child: Icon(
                  Icons.arrow_back_ios_outlined,
                  color: Colors.white,
                  size: 20,
                ),
              ),
              Text(
                'Назад',
                style: TextStyle(fontSize: 17),
              )
            ],
          ),
        ),
        actions: [
          Container(
              margin: EdgeInsets.only(right: 15), child: Icon(Icons.close)),
        ],
      ),
      body: BlocBuilder<CargoAdditionalInfoBloc, CargoAdditionalInfoState>(
        builder: (context, stateCargo) {
          if (stateCargo is InitialCargoAdditionalInfoState || stateCargo is CargoAdditionalInfoLoading)
            return Center(child: CircularProgressIndicator());
          else if (stateCargo is CargoAdditionalInfoFail)
            return Center(
                child: emptyPage(Icons.error_outline, stateCargo.code));
          else if (stateCargo is CargoAdditionalInfoSuccess) {
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
                            'Добавить транспорт',
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
                              'Заполните всю необходимую информацию о вашем транспорте.',
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
                                      hintText: "Укажите название груза",
                                      hintStyle: TextStyle(color: Color(0xffA2A9B2))),
                                ),
                              ),
                            ],
                          ),
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
                              onChanged: (String newValue) {
                                _cityNameFrom = newValue;
                              },
                              items: stateCargo.cityData.map((CityData map) {
                                return DropdownMenuItem<String>(
                                  value: map.name,
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
                                style: TextStyle(
                                    fontSize: 17, color: Color(0xffA2A9B2)),
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
                                _cityNameTo = newValue;
                              },
                              items: stateCargo.cityData.map((CityData map) {
                                return DropdownMenuItem<String>(
                                  value: map.name,
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
                            height: 50,
                            margin: EdgeInsets.only(bottom: 15),
                            child: InkWell(
                              onTap: () {
                                DatePicker.showDatePicker(context,
                                    showTitleActions: true,
                                    minTime: DateTime.now(),
                                    maxTime: DateTime(2030, 1, 1),
                                    onConfirm: (date) {
                                      print('confirm $date');
                                      setState(() {
                                        _loadingDateTimeString =
                                            DateFormat.yMMMd('ru').format(date);
                                        _loadingDateChosen = true;
                                      });
                                    },
                                    currentTime: DateTime.now(),
                                    locale: LocaleType.ru);
                              },
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    _loadingDateTimeString,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: _loadingDateChosen == true
                                          ? Color(0xff20273D)
                                          : Color(0xffA2A9B2),
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 12,
                                    color: Colors.black.withOpacity(0.7),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            child: Text(
                              'Дата выгрузки',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xff20273D).withOpacity(0.5)),
                            ),
                          ),
                          Container(
                            width: w,
                            height: 50,
                            margin: EdgeInsets.only(bottom: 15),
                            child: InkWell(
                              onTap: () {
                                DatePicker.showDatePicker(context,
                                    showTitleActions: true,
                                    minTime: DateTime.now(),
                                    maxTime: DateTime(2030, 1, 1),
                                    onConfirm: (date) {
                                      print('confirm $date');
                                      setState(() {
                                        _endDateTimeString =
                                            DateFormat.yMMMd('ru').format(date);
                                        _endDateChosen = true;
                                      });
                                    },
                                    currentTime: DateTime.now(),
                                    locale: LocaleType.ru);
                              },
                              child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    _endDateTimeString,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 17,
                                      color: _endDateChosen == true
                                          ? Color(0xff20273D)
                                          : Color(0xffA2A9B2),
                                    ),
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    size: 12,
                                    color: Colors.black.withOpacity(0.7),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                                alignment: Alignment.centerLeft,
                                //margin: EdgeInsets.only(bottom: 10),
                                height: 40,
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<int>(
                                    hint: Text(
                                      'Укажите тип транспорта',
                                      style: TextStyle(
                                          fontSize: 17, color: Color(0xffA2A9B2)),
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
                                      _typeVehicle = newValue;
                                    },
                                    items: stateCargo.postLoadingList
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
                            ],
                          ),
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
                                    controller: _widthFrom,
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
                                    controller: _netFrom,
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
                                _typePayment = newValue;
                              },
                              items:
                              stateCargo.paymentTypeList.map((UniversalModel map) {
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
                          Container(
                            child: Text(
                              'Стоимость перевозки, тг',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xff20273D).withOpacity(0.5)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 5, bottom: 30),
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
                                    controller: _priceFrom,
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
                                    controller: _priceTo,
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
                          BlocListener<AddCargoBloc,
                              AddCargoState>(
                            listener: (context, state) {
                              if (state is InitialAddACargoState ||
                                  state is AddCargoLoading) {
                                return Center(
                                  child: CircularProgressIndicator(),
                                );
                              } else if (state is AddCargoFail) {
                                print('asdasdasdadsasdsad');
                                _showMessage(
                                  state.code,
                                );
                              } else if (state is AddCargoSuccess) {
                                /*final snackBar = SnackBar(
                                          content: Text(
                                            'success',
                                          ),
                                          action: SnackBarAction(
                                            label: 'sign_in',
                                            onPressed: () {
                                              print('clase');
                                            },
                                          ),
                                        );
                                        Scaffold.of(context)
                                            .showSnackBar(snackBar);*/
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Published()),
                                );
                              }
                            },
                            child: Container(
                              width: w * 0.9,
                              height: 50,
                              child: FlatButton(
                                onPressed: () {
                                  _addNewCargo();
                                },
                                child: Text(
                                  'ДОБАВИТЬ ОБЪЯВЛЕНИЕ',
                                  style: TextStyle(color: Colors.white),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                color: Colors.blue,
                                padding: EdgeInsets.symmetric(
                                    horizontal: 25.0, vertical: 10.0),
                              ),
                            ),
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
        },
      ),
    );
  }
}

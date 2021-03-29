import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'package:bliz/ui/login.dart';
import 'package:bliz/ui/Widgets/empty_page.dart';
import 'package:bliz/ui/registration_second.dart';
import 'package:bliz/logic_block/models/more_models.dart';
import 'package:bliz/logic_block/providers/company_data_provider.dart';

class RegistrationFirst extends StatefulWidget {
  @override
  _RegistrationFirstState createState() => _RegistrationFirstState();
}

class _RegistrationFirstState extends State<RegistrationFirst> {

  int _companyType = 1;
  bool _signInType = false;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController _companyNameController = TextEditingController();
  TextEditingController _companyBinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final CompanyDataProvider companyDataProvider =
        Provider.of<CompanyDataProvider>(context, listen: false);
    return Scaffold(
      backgroundColor: Colors.white,
      body: FutureBuilder<bool>(
          future: companyDataProvider.getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.none)
              return Center(child: CircularProgressIndicator());
            else if (snapshot.hasError || snapshot.data == false)
              return Center(
                  child: emptyPage(Icons.error_outline, 'Something is wrong'));
            else if (snapshot.data == true) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 50),
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              'Регистрация',
                              style: TextStyle(
                                  fontSize: 23, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Введите информацию для начала регистрации',
                              style: TextStyle(color: Colors.grey),
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      height: 50,
                      margin: EdgeInsets.symmetric(vertical: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            flex: 2,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(8),
                                    topLeft: Radius.circular(8)),
                                color: Color(0xff008EFF),
                              ),
                              child: Center(
                                child: Text(
                                  'Юр. лицам',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 2,
                            child: InkWell(
                              onTap: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            RegistrationSecond()));
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                      bottomRight: Radius.circular(8),
                                      topRight: Radius.circular(8)),
                                  border: Border.all(
                                      width: 1, color: Color(0xffDADEE6)),
                                  color: Colors.white,
                                ),
                                child: Center(
                                  child: Text(
                                    'Физ. лицам',
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Row(
                          children: [
                            Flexible(
                              flex: 3,
                              child: Container(
                                height: 50,
                                margin: EdgeInsets.only(left: 20, right: 8),
                                padding: EdgeInsets.symmetric(horizontal: 6),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    width: 1,
                                    color: Colors.grey[400],
                                  ),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: DropdownButtonHideUnderline(
                                  child: DropdownButton<int>(
                                    hint: Text(
                                      'Укажите тип транспорта',
                                      style: TextStyle(
                                          fontSize: 17,
                                          color: Color(0xffA2A9B2)),
                                    ),
                                    value: _companyType,
                                    isExpanded: true,
                                    isDense: true,
                                    icon: Icon(Icons.keyboard_arrow_down_rounded),
                                    iconSize: 24,
                                    elevation: 4,
                                    style: TextStyle(color: Colors.black87),
                                    dropdownColor: Colors.white,
                                    onChanged: (int newValue) {
                                      setState(() {
                                        _companyType = newValue;
                                      });
                                    },
                                    items: companyDataProvider.companyType
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
                            ),
                            Flexible(
                              flex: 6,
                              child: Container(
                                height: 50,
                                margin: EdgeInsets.only(right: 20),
                                child: TextField(
                                  controller: _companyNameController,
                                  decoration: new InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: new BorderSide(
                                            color: Colors.grey[400], width: 1)),
                                    focusedBorder: InputBorder.none,
                                    hintText: "Название компании",
                                    hintStyle:
                                        TextStyle(color: Colors.grey[400]),
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 10),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Form(
                          autovalidate: true,
                          key: formKey,
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 5),
                            child: TextFormField(
                              controller: _companyBinController,
                              decoration: new InputDecoration(
                                enabledBorder: OutlineInputBorder(
                                    borderSide: new BorderSide(
                                        color: Colors.grey[400], width: 1)),
                                focusedBorder: InputBorder.none,
                                hintText: "Налоговый номер компании/БИН",
                                hintStyle: TextStyle(color: Colors.grey[400]),
                                contentPadding: EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                              ),
                              validator: MultiValidator([
                                RequiredValidator(errorText: "Required"),
                                EmailValidator(errorText: "Not A Valid Email"),
                              ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            width: 300,
                            child: RaisedButton(
                              color: Colors.blue,
                              child: Text(
                                'Перейти на второй шаг',
                                style: TextStyle(color: Colors.white),
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            RegistrationSecond()));
                              },
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Text.rich(
                        TextSpan(
                          text: 'Зарегистрированы? ',
                          children: <InlineSpan>[
                            TextSpan(
                              text: 'Войти',
                              style: TextStyle(color: Colors.blue),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  print('Terms and Conditions Single Tap');
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Login()),
                                  );
                                },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
            return Center(child: CircularProgressIndicator());
          }),
    );
  }
}

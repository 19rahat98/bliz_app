import 'package:bliz/ui/registration_first.dart';
import 'package:bliz/ui/registration_second.dart';
import 'package:bliz/ui/splash_page/navbar.dart';
import 'package:bliz/ui/user_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'package:bliz/logic_block/blocs/bloc.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _signInType = false;
  TextEditingController _userPhoneNumber = TextEditingController();
  TextEditingController _userPassword = TextEditingController();

  _singIn() {
    BlocProvider.of<LoginBloc>(context).add(
      OnLogin(
        userPhoneNumber: _userPhoneNumber.text,
        password: _userPassword.text,
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
            'sign_up',
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: _signInType
          ? SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            'Вход',
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Введите ваши данные для входа',
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
                              setState(() {
                                _signInType = false;
                              });
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
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _userPhoneNumber,
                          keyboardType: TextInputType.number,
                          decoration: new InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: new BorderSide(
                                    color: Colors.grey[400], width: 1)),
                            focusedBorder: InputBorder.none,
                            hintText: "БИН компании",
                            hintStyle: TextStyle(color: Colors.grey[400]),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Form(
                          autovalidate: true,
                          child: Container(
                            child: TextFormField(
                                controller: _userPassword,
                                obscureText: true,
                                //onChanged: (val) => password = val,
                                decoration: new InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: new BorderSide(
                                          color: Colors.grey[400], width: 1)),
                                  focusedBorder: InputBorder.none,
                                  hintText: "Введите пароль",
                                  hintStyle: TextStyle(color: Colors.grey[400]),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  suffixIcon:
                                      Icon(Icons.remove_red_eye_outlined),
                                ),
                                validator: MultiValidator([
                                  RequiredValidator(
                                      errorText: 'password is required'),
                                  MinLengthValidator(6, errorText: "too short"),
                                  // PatternValidator(r'(?=.*?[#?!@$%^&*-])', errorText: 'passwords must have at least one special character')
                                ])),
                          ),
                        ),
                      ],
                    ),
                  ),
                  BlocBuilder<LoginBloc, LoginState>(
                    builder: (context, register) {
                      return BlocListener<LoginBloc, LoginState>(
                          listener: (context, state) {
                            if (state is LoginLoading) {
                              return Center(
                                child: CircularProgressIndicator(),
                              );
                            } else if (state is LoginFail) {
                              _showMessage(
                                state.code,
                              );
                            } else if (state is LoginSuccess) {
                              print("asdasd");
                              final snackBar = SnackBar(
                                content: Text(
                                  'register_success',
                                ),
                                action: SnackBarAction(
                                  label: 'sign_in',
                                  onPressed: () {
                                    //Navigator.pop(context);
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return UserScreen();
                                          },
                                          fullscreenDialog: true,
                                        ));
                                  },
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                              return Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return UserScreen();
                                    },
                                    fullscreenDialog: true,
                                  ));
                            }
                          },
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  width: 350,
                                  child: RaisedButton(
                                    color: Colors.blue,
                                    child: Text(
                                      'Войти в аккаунт',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onPressed: () {
                                      _singIn();
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                      );
                    },
                  ),
                  Container(
                    child: Text.rich(
                        TextSpan(text: 'Нет аккаунта? ', children: <InlineSpan>[
                      TextSpan(
                        text: 'Зарегестрируйтесь',
                        style: TextStyle(color: Colors.blue),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            print('Terms and Conditions Single Tap');
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => RegistrationSecond()),
                            );
                          },
                      )
                    ])),
                  ),
                ],
              ),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    child: Center(
                      child: Column(
                        children: [
                          Text(
                            'Вход',
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Введите ваши данные для входа',
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
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                _signInType = true;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(8),
                                    bottomLeft: Radius.circular(8)),
                                border: Border.all(
                                    width: 1, color: Color(0xffDADEE6)),
                                color: Colors.white,
                              ),
                              child: Center(
                                child: Text('Юр. лицам'),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(8),
                                  bottomRight: Radius.circular(8)),
                              color: Color(0xff008EFF),
                            ),
                            child: Center(
                              child: Text(
                                'Физ. лицам',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _userPhoneNumber,
                          keyboardType: TextInputType.number,
                          decoration: new InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: new BorderSide(
                                    color: Colors.grey[400], width: 1)),
                            focusedBorder: InputBorder.none,
                            hintText: "Номер телефона",
                            hintStyle: TextStyle(color: Colors.grey[400]),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 10),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Form(
                          autovalidate: true,
                          child: Container(
                            child: TextFormField(
                                controller: _userPassword,
                                obscureText: true,
                                //onChanged: (val) => password = val,
                                decoration: new InputDecoration(
                                  enabledBorder: OutlineInputBorder(
                                      borderSide: new BorderSide(
                                          color: Colors.grey[400], width: 1)),
                                  focusedBorder: InputBorder.none,
                                  hintText: "Введите пароль",
                                  hintStyle: TextStyle(color: Colors.grey[400]),
                                  contentPadding: EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  suffixIcon:
                                      Icon(Icons.remove_red_eye_outlined),
                                ),
                                validator: MultiValidator([
                                  RequiredValidator(
                                      errorText: 'password is required'),
                                  MinLengthValidator(6, errorText: "too short"),
                                  // PatternValidator(r'(?=.*?[#?!@$%^&*-])', errorText: 'passwords must have at least one special character')
                                ])),
                          ),
                        ),
                      ],
                    ),
                  ),
                  BlocBuilder<LoginBloc, LoginState>(
                    builder: (context, register) {
                      return BlocListener<LoginBloc, LoginState>(
                          listener: (context, state) {
                            if (state is LoginLoading) {
                              return Center(
                                child: CircularProgressIndicator(),
                              );
                            } else if (state is LoginFail) {
                              _showMessage(
                                state.code,
                              );
                            } else if (state is LoginSuccess) {
                              final snackBar = SnackBar(
                                content: Text(
                                  'register_success',
                                ),
                                action: SnackBarAction(
                                  label: 'sign_in',
                                  onPressed: () {
                                    //Navigator.pop(context);
                                   /* Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) {
                                            return UserScreen();
                                          },
                                          fullscreenDialog: true,
                                        ));*/
                                  },
                                ),
                              );
                              Scaffold.of(context).showSnackBar(snackBar);
                              return Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return MainNavigation();
                                    },
                                    fullscreenDialog: true,
                                  ));
                            }
                          },
                          child: Container(
                            child: Column(
                              children: [
                                Container(
                                  width: 350,
                                  child: RaisedButton(
                                    color: Colors.blue,
                                    child: Text(
                                      'Войти в аккаунт',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    onPressed: () {
                                      _singIn();
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ));
                    },
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 26),
                    child: Text.rich(
                      TextSpan(
                        text: 'Нет аккаунта? ',
                        children: <InlineSpan>[
                          TextSpan(
                            text: 'Зарегестрируйтесь',
                            style: TextStyle(color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                print('Terms and Conditions Single Tap');
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          RegistrationFirst()),
                                );
                              },
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

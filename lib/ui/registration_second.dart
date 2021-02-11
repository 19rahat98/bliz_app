import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:form_field_validator/form_field_validator.dart';

import 'package:bliz/ui/user_screen.dart';
import 'package:bliz/logic_block/blocs/bloc.dart';

class RegistrationSecond extends StatefulWidget {
  @override
  _RegistrationSecondState createState() => _RegistrationSecondState();
}

class _RegistrationSecondState extends State<RegistrationSecond> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController _userFullName = TextEditingController();
  TextEditingController _userEmail = TextEditingController();
  TextEditingController _userPhoneNumber = TextEditingController();
  TextEditingController _userPassword = TextEditingController();

  @override
  void initState() {
    //userFullName.addListener(() {});
    super.initState();
  }

  _singUp() {
    BlocProvider.of<AuthenticationBloc>(context).add(
      OnRegister(
        userFullName: _userFullName.text,
        userEmail: _userEmail.text,
        userPassword: _userPassword.text,
        userPhoneNumber: _userPhoneNumber.text,
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

  void validate() {
    if (formKey.currentState.validate()) {
      print("Validated");
    } else {
      print("Not validated");
    }
  }

  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: TextField(
                    controller: _userFullName,
                    decoration: new InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: new BorderSide(
                              color: Colors.grey[400], width: 1)),
                      focusedBorder: InputBorder.none,
                      hintText: "ФИО",
                      hintStyle: TextStyle(color: Colors.grey[400]),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    ),
                  ),
                ),
                Form(
                  autovalidate: true,
                  key: formKey,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: TextFormField(
                      controller: _userEmail,
                      decoration: new InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: new BorderSide(
                                color: Colors.grey[400], width: 1)),
                        focusedBorder: InputBorder.none,
                        hintText: "Эл.адрес",
                        hintStyle: TextStyle(color: Colors.grey[400]),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      ),
                      validator: MultiValidator([
                        RequiredValidator(errorText: "Required"),
                        EmailValidator(errorText: "Not A Valid Email"),
                      ]),
                      // validator: (value) {
                      //   if (value.isEmpty) {
                      //     return "Required";
                      //   } else {
                      //     return null;
                      //   }
                      // },
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: TextFormField(
                    controller: _userPhoneNumber,
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: new BorderSide(
                              color: Colors.grey[400], width: 1)),
                      focusedBorder: InputBorder.none,
                      hintText: "Номер телефона",
                      hintStyle: TextStyle(color: Colors.grey[400]),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Column(
              children: [
                Form(
                  autovalidate: true,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: TextFormField(
                        controller: _userPassword,
                        obscureText: true,
                        onChanged: (val) {
                          password = val;
                          print(password);
                        },
                        decoration: new InputDecoration(
                          enabledBorder: OutlineInputBorder(
                              borderSide: new BorderSide(
                                  color: Colors.grey[400], width: 1)),
                          focusedBorder: InputBorder.none,
                          hintText: "Введите пароль",
                          hintStyle: TextStyle(color: Colors.grey[400]),
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                          suffixIcon: Icon(Icons.remove_red_eye_outlined),
                        ),
                        validator: MultiValidator([
                          RequiredValidator(errorText: 'password is required'),
                          MinLengthValidator(6, errorText: "too short"),
                          // PatternValidator(r'(?=.*?[#?!@$%^&*-])', errorText: 'passwords must have at least one special character')
                        ])),
                  ),
                ),
                Form(
                  autovalidate: true,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                    child: TextFormField(
                      obscureText: true,
                      decoration: new InputDecoration(
                        enabledBorder: OutlineInputBorder(
                            borderSide: new BorderSide(
                                color: Colors.grey[400], width: 1)),
                        focusedBorder: InputBorder.none,
                        hintText: "Повторите пароль",
                        hintStyle: TextStyle(color: Colors.grey[400]),
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                        suffixIcon: Icon(Icons.remove_red_eye_outlined),
                      ),
                      validator: (val) =>
                          MatchValidator(errorText: 'passwords do not match')
                              .validateMatch(val, password),
                    ),
                  ),
                ),
              ],
            ),
          ),

          BlocBuilder<AuthenticationBloc, AuthenticationState>(
            builder: (context, register) {
              return BlocListener<AuthenticationBloc, AuthenticationState>(
                listener: (context, state) {
                  if (state is AuthenticationFail) {
                    _showMessage(
                      state.code,
                    );
                  }
                  else if (state is AuthenticationSuccess) {
                    final snackBar = SnackBar(
                      content: Text(
                          'register_success',
                      ),
                      action: SnackBarAction(
                        label: 'sign_in',
                        onPressed: () {
                          //Navigator.pop(context);
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return UserScreen();
                            },
                            fullscreenDialog: true,
                          ));
                        },
                      ),
                    );
                    Scaffold.of(context).showSnackBar(snackBar);
                    return Navigator.push(context, MaterialPageRoute(
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
                        width: 300,
                        child: RaisedButton(
                          color: Colors.blue,
                          child: Text(
                            'Регистрация',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: (){
                            validate();
                            _singUp();
                          },
                        ),
                      )
                    ],
                  ),
                )
              );
            },
          ),

        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
            child: Center(
              child: Column(
                children: [
                  Text(
                    'Вход',
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Введите ваши данные для входа',
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
          ),
          Container(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: Column(
              children: [

                TextFormField(
                  keyboardType: TextInputType.number,
                  decoration: new InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                            new BorderSide(color: Colors.grey[400], width: 1)),
                    focusedBorder: InputBorder.none,
                    hintText: "Номер телефона",
                    hintStyle: TextStyle(color: Colors.grey[400]),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  ),
                ),
                SizedBox(height: 20,),
                Form(
                  autovalidate: true,
                  child: Container(
                    child: TextFormField(
                        obscureText: true,
                        onChanged: (val) => password = val,
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
              ],
            ),
          ),
          Container(
            width: 350,
            child: RaisedButton(
              color: Colors.blue,
              child: Text(
                'Войти в аккаунт',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: (){},
            ),
          ),
          Container(),
        ],
      ),
    );
  }
}

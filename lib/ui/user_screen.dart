import 'package:bliz/logic_block/blocs/bloc.dart';
import 'package:bliz/logic_block/blocs/user_data_bloc/udata_bloc.dart';
import 'package:bliz/logic_block/blocs/user_data_bloc/udata_event.dart';
import 'package:bliz/logic_block/blocs/user_data_bloc/udata_state.dart';
import 'package:bliz/ui/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

class UserScreen extends StatefulWidget {
  @override
  _UserScreenState createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  TextEditingController _textPasswordController = TextEditingController();

  Future<void> _displayTextInputDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('TextField in Dialog'),
            content: TextField(
              controller: _textPasswordController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Text Field in Dialog"),
            ),
            actions: <Widget>[
              FlatButton(
                color: Colors.red,
                textColor: Colors.white,
                child: Text('CANCEL'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              FlatButton(
                color: Colors.green,
                textColor: Colors.white,
                child: Text('OK'),
                onPressed: () {
                  BlocProvider.of<LoginBloc>(context).add(
                    DeleteUser(_textPasswordController.text),
                  );
                },
              ),
            ],
          );
        });
  }

  @override
  void initState() {
    // TODO: implement initState
    BlocProvider.of<UserDataBloc>(context).add(
      OnLoadUserData(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Личный кабинет',
            style: Theme.of(context).textTheme.headline1),
      ),
      body: SingleChildScrollView(
        child: Container(
            child: Padding(
          padding: const EdgeInsets.only(
              top: 10.0, bottom: 5.0, right: 20.0, left: 20.0),
          child: Column(
            children: [
              BlocBuilder<UserDataBloc, UserDataState>(
                  builder: (context, snapshot) {
                if (snapshot is UserDataLoading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                } else if (snapshot is UserDataFail) {
                  return Center(
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.red,
                    ),
                  );
                } else if (snapshot is UserDataSuccess) {
                  print(snapshot.userdata.fullName);
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.09),
                          spreadRadius: 20,
                          blurRadius: 100,
                          offset: Offset(0, 4), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            CircleAvatar(
                              radius: 25.0,
                            ),
                            SizedBox(
                              width: 10.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  snapshot.userdata.fullName,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 17.0),
                                ),
                                Text(
                                    snapshot.userdata.companyDetails.first
                                        .companyName,
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.grey,
                                    ))
                              ],
                            )
                          ],
                        ),
                        Divider(
                          thickness: 1.5,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Статус:',
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontFamily: 'Pacifico'),
                                ),
                                Text(
                                  'Лимитед',
                                  style: TextStyle(color: Colors.blue),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Рейтинг:',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star_border,
                                      color: Colors.blue,
                                      size: 20.0,
                                    ),
                                    Text('5.0',
                                        style: TextStyle(color: Colors.blue))
                                  ],
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Ваш баланс:',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.attach_money,
                                      color: Colors.green,
                                      size: 20.0,
                                    ),
                                    Text('15 000',
                                        style: TextStyle(color: Colors.green))
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 300.0,
                              height: 50.0,
                              child: OutlineButton(
                                onPressed: () {
                                  BlocProvider.of<LoginBloc>(context).add(
                                    GetToken(),
                                  );
                                },
                                //TODO n
                                child: Text(
                                  'Отказать с причиной',
                                  style: TextStyle(color: Colors.green),
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                                borderSide: BorderSide(color: Colors.green),
                                highlightedBorderColor: Colors.green,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  );
                } else
                  return Container();
              }),
              SizedBox(
                height: 20.0,
              ),
              Row(
                children: [
                  RaisedButton(
                    onPressed: () {},
                    child: Container(
                      width: w * 0.85,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Мои обьявления',
                            style: TextStyle(fontSize: 16, color: Colors.blue),
                          ),
                          Icon(
                            Icons.navigate_next,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    textColor: Colors.black,
                    color: Colors.white,
                    elevation: 0.0,
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
                  ),
                ],
              ),
              Divider(
                thickness: 1.5,
              ),
              Row(
                children: [
                  RaisedButton(
                    onPressed: () {},
                    child: Container(
                      width: w * 0.85,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Профиль компании',
                              style: TextStyle(
                                fontSize: 16,
                              )),
                          Icon(
                            Icons.navigate_next,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    textColor: Colors.black,
                    color: Colors.white,
                    elevation: 0.0,
                    padding:
                        EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                  ),
                ],
              ),
              Divider(
                thickness: 1.5,
              ),
              Row(
                children: [
                  RaisedButton(
                    onPressed: () {},
                    child: Container(
                      width: w * 0.85,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Настройки',
                              style: TextStyle(
                                fontSize: 16,
                              )),
                          Icon(
                            Icons.navigate_next,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    textColor: Colors.black,
                    color: Colors.white,
                    elevation: 0.0,
                    padding:
                        EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                  ),
                ],
              ),
              Divider(
                thickness: 1.5,
              ),
              Row(
                children: [
                  RaisedButton(
                    onPressed: () {},
                    child: Container(
                      width: w * 0.85,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Уведомления',
                              style: TextStyle(
                                fontSize: 16,
                              )),
                          Icon(
                            Icons.navigate_next,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    textColor: Colors.black,
                    color: Colors.white,
                    elevation: 0.0,
                    padding:
                        EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                  ),
                ],
              ),
              Divider(
                thickness: 1.5,
              ),
              Row(
                children: [
                  RaisedButton(
                    onPressed: () {},
                    child: Container(
                      width: w * 0.85,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Сотрудники',
                              style: TextStyle(
                                fontSize: 16,
                              )),
                          Icon(
                            Icons.navigate_next,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    textColor: Colors.black,
                    color: Colors.white,
                    elevation: 0.0,
                    padding:
                        EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                  ),
                ],
              ),
              Divider(
                thickness: 1.5,
              ),
              Row(
                children: [
                  RaisedButton(
                    onPressed: () {},
                    child: Container(
                      width: w * 0.85,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Баланс и статус',
                              style: TextStyle(
                                fontSize: 16,
                              )),
                          Icon(
                            Icons.navigate_next,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    textColor: Colors.black,
                    color: Colors.white,
                    elevation: 0.0,
                    padding:
                        EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
                  ),
                ],
              ),
              Divider(
                thickness: 1.5,
              ),
              BlocBuilder<LoginBloc, LoginState>(
                builder: (context, register) {
                  return BlocListener<LoginBloc, LoginState>(
                      listener: (context, state) {
                        if (state is UserDataLoading) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        if (state is DeleteUserSuccess) {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return Login();
                            },
                          ));
                        } else if (state is LoginFail) {
                          final snackBar = SnackBar(
                            content: Text(state.code),
                            action: SnackBarAction(
                              label: 'Ок',
                              onPressed: () {
                                // Some code to undo the change.
                              },
                            ),
                          );
                          Scaffold.of(context).showSnackBar(snackBar);
                        }
                      },
                      child: Container(
                        width: 300.0,
                        height: 50.0,
                        child: OutlineButton(
                          onPressed: () {
                            _displayTextInputDialog(context);
                          },
                          //TODO n
                          child: Text(
                            'Delete',
                            style: TextStyle(color: Colors.green),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          borderSide: BorderSide(color: Colors.green),
                          highlightedBorderColor: Colors.green,
                        ),
                      ));
                },
              ),
              BlocBuilder<UserDataBloc, UserDataState>(
                builder: (context, register) {
                  return BlocListener<UserDataBloc, UserDataState>(
                      listener: (context, state) {
                        if (state is UserLogoutLoading) {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                        if (state is UserLogoutSuccess) {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return Login();
                            },
                          ));
                        } else if (state is UserLogoutFail) {
                          final snackBar = SnackBar(
                            content: Text(state.message),
                            action: SnackBarAction(
                              label: 'Ок',
                              onPressed: () {
                                // Some code to undo the change.
                              },
                            ),
                          );
                          Scaffold.of(context).showSnackBar(snackBar);
                        }
                      },
                      child: Container(
                        width: 300.0,
                        height: 50.0,
                        child: OutlineButton(
                          onPressed: () {
                            print('test');
                            BlocProvider.of<UserDataBloc>(context).add(
                              UserLogout(),
                            );
                          },
                          //TODO n
                          child: Text(
                            'Log out',
                            style: TextStyle(color: Colors.green),
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          borderSide: BorderSide(color: Colors.green),
                          highlightedBorderColor: Colors.green,
                        ),
                      ));
                },
              ),
            ],
          ),
        )),
      ),
    );
  }
}


import 'package:bliz/ui/add_cargo.dart';
import 'package:bliz/ui/login.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'logic_block/blocs/add_cargo_bloc/add_cargo_bloc.dart';
import 'logic_block/blocs/bloc.dart';
import 'logic_block/blocs/user_data_bloc/udata_bloc.dart';
import 'ui/registration_second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthenticationBloc>(
          create: (context) => AuthenticationBloc(),
        ),
        BlocProvider<LoginBloc>(
          create: (context) => LoginBloc(),
        ),
        BlocProvider<UserDataBloc>(
          create: (context) => UserDataBloc(),
        ),
        BlocProvider<AddCargoBloc>(
          create: (context) => AddCargoBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Color(0xff008EFF),
          accentColor: Color(0xffFFF389),
          buttonColor: Color(0xff04CC71),
          textTheme: TextTheme(
            headline1: GoogleFonts.ibmPlexSans(fontSize: 20, color: Colors.white),
          ),
        ),
        home: AddCargoScreen(),
      ),
    );
  }
}


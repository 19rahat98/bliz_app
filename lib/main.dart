import 'package:bliz/ui/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'logic_block/blocs/bloc.dart';

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
        home: Login(),
      ),
    );
  }
}


import 'package:bliz/ui/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bliz/logic_block/blocs/bloc.dart';
import 'package:bliz/ui/splash_page/navbar.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> with TickerProviderStateMixin{
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  nextPage(){
    var page = MainNavigation();
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => page));
  }

  @override
  void initState() {
    super.initState();
    BlocProvider.of<AuthenticationBloc>(context).add(CheckSingInUser());
    Future.delayed(Duration(milliseconds: 3000));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        body: BlocBuilder<AuthenticationBloc, AuthenticationState>(
            builder: (context, state) {
              if(state is AuthenticationBeginCheck){
                return Center(
                  child: SvgPicture.asset("assets/images/BLIZ.KZ.svg", height: 21),
                );
              }
              if(state is AuthenticationSuccess){
                return MainNavigation();
              }
              else if(state is AuthenticationFail){
                return Login();
              }
              else{
                return Center(
                  child: SvgPicture.asset("assets/images/BLIZ.KZ.svg", height: 21),
                );
              }
          }
        ));
  }
}

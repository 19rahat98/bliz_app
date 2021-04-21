import 'package:bliz/ui/orders.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:bliz/ui/login.dart';
import 'logic_block/blocs/bloc.dart';
import 'package:bliz/ui/add_vehicle.dart';
import 'package:bliz/ui/splash_page/splash_screen.dart';
import 'package:bliz/logic_block/providers/company_data_provider.dart';
import 'package:bliz/logic_block/providers/special_machinery_provider.dart';
import 'package:bliz/logic_block/providers/cargo_specifications_provider.dart';

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
        BlocProvider<CargoBloc>(
          create: (context) => CargoBloc(),
        ),
        BlocProvider<AddSpecialMachineryBloc>(
          create: (context) => AddSpecialMachineryBloc(),
        ),
        BlocProvider<AddNewStorageBloc>(
          create: (context) => AddNewStorageBloc(),
        ),
        BlocProvider<AuctionListBloc>(
          create: (context) => AuctionListBloc(),
        ),
        BlocProvider<CargoInfoBloc>(
          create: (context) => CargoInfoBloc(),
        ),
        BlocProvider<WishListBloc>(
          create: (context) => WishListBloc(),
        ),
        BlocProvider<InProgressApplicationBloc>(
          create: (context) => InProgressApplicationBloc(),
        ),
        BlocProvider<RequestCargoBloc>(
          create: (context) => RequestCargoBloc(),
        ),
        BlocProvider<CargoAdditionalInfoBloc>(
          create: (context) => CargoAdditionalInfoBloc(),
        ),
      ],
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider<CargoSpecificationsProvider>(
            create: (context) => CargoSpecificationsProvider(),
          ),
          ChangeNotifierProvider<SpecialMachineryProvider>(
            create: (context) => SpecialMachineryProvider(),
          ),
          ChangeNotifierProvider<CompanyDataProvider>(
            create: (context) => CompanyDataProvider(),
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
          home: SplashPage(),
        ),
      ),
    );
  }
}



import 'dart:async';
import 'package:bliz/logic_block/blocs/user_data_bloc/udata_event.dart';
import 'package:bliz/logic_block/blocs/user_data_bloc/udata_state.dart';
import 'package:bliz/logic_block/repository/user_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:bliz/logic_block/api/http_manager.dart';
import 'package:bliz/logic_block/models/result_api_model.dart';
import 'package:bliz/logic_block/models/user_model.dart';
import 'package:bliz/logic_block/repository/login_repository.dart';
import 'package:bloc/bloc.dart';


class UserDataBloc extends Bloc<UserDataEvent, UserDataState> {
  UserDataBloc() : super(InitialUserDataState());
  final UserDataRepository userRepository = UserDataRepository();
  Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  @override
  Stream<UserDataState> mapEventToState(event) async* {
    ///Event for login
    if (event is OnLoadUserData) {
      ///Notify loading to UI
      yield UserDataLoading();

      final SharedPreferences cp = await _prefs;

      Map<String, dynamic> params = {
        "token": cp.getString("token"),
      };

      ///Fetch API via repository
      final ResultApiModel result = await userRepository.fetchData(params);

      ///Case API fail but not have token
      if (result.success && result.data != [])  {
        final User userData = User.fromJson(result.data.first);
        try {
          yield UserDataSuccess(userdata: userData);
        } catch (error) {
          ///Notify loading to UI
          yield UserDataFail(code: error.toString());
        }

      } else {
        ///Notify loading to UI
        print(result.message);
        yield UserDataFail(code: result.message);
      }
    }


  }
}

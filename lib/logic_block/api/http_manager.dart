import 'package:bliz/logic_block/configes/logger.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;


/*Map<String, dynamic> header = {
  "device_id": Application.device.uuid,
  "device_name": Application.device.name,
  "device_model": Application.device.model,
  "device_version": Application.device.version,
  "push_token": Application.device.token,
  "type": Application.device.type
};*/

Map<String, dynamic> dioErrorHandle(DioError error) {
  UtilLogger.log("ERROR", error);
  switch (error.type) {
    case DioErrorType.RESPONSE:
      return error.response?.data;
    case DioErrorType.SEND_TIMEOUT:
    case DioErrorType.RECEIVE_TIMEOUT:
      return {"success": false, "code": "request_time_out"};

    default:
      return {"success": false, "code": "connect_to_server_fail"};
  }
}

class HTTPManager {
  BaseOptions baseOptions = BaseOptions(
    baseUrl: "https://test.money-men.kz/api",
    connectTimeout: 30000,
    receiveTimeout: 30000,
    responseType: ResponseType.json,
  );

  ///Post method
  Future<dynamic> post({
    String url,
    Map<String, dynamic> data,
    Options options,
  }) async {
    UtilLogger.log("POST URL", url);
    UtilLogger.log("DATA", data);
    Dio dio = new Dio(baseOptions);
    try {
      final response = await dio.post(
        url,
        data: data,
        options: options,
      );
      print(response.data);

      return response.data;
    } on DioError catch (error) {
      return dioErrorHandle(error);
    }
  }


  ///Get method
  Future<dynamic> get({
    String url,
    Map<String, dynamic> params,
    Options options,
  }) async {
    UtilLogger.log("GET URL", url);
    UtilLogger.log("PARAMS", params);
    Dio dio = new Dio(baseOptions);
    try {
      final response = await dio.get(
        url,
        queryParameters: params,
        options: options,

      );
      return response.data;
    } on DioError catch (error) {
      print(error);
      //return dioErrorHandle(error);
    }
  }

  factory HTTPManager() {
    return HTTPManager._internal();
  }

  HTTPManager._internal();
}

HTTPManager httpManager = HTTPManager();

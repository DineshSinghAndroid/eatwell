import 'package:dio/dio.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:fluttertoast/fluttertoast.dart';
 import '../../Models/LoginModel.dart';
import '../../Models/RegistrationModel.dart';
import '../ConnectionValidator/ConnectionValidator.dart';
import 'WebConstant.dart';

class ApiControllerAdmin {
  final Dio _dio = Dio();

  ///Login
  Future<LoginModel?> loginApiHit({
    context,
    required String url,
    required dictData,
    String? token,
  }) async {
    LoginModel? result;

    if (await ConnectionValidator().check()) {
      try {
        final response = await requestPostApi(
            context: context, url: url, dictParameter: dictData, token: token);
        if (response?.data != null && response?.statusCode == 200) {

          result = LoginModel.fromJson(response?.data);
          return result;
        } else {
          return result;
        }
      } catch (e) {
        print("Exception_main1: $e");
        return result;
      }
    } else {
      Fluttertoast.showToast(
          msg: "Please check network connection and try again!");
    }
    return result;
  }




  ///methods
  Future<Response?> requestGetForApi(
      {required context,
        String? url,
        Map<String, dynamic>? dictParameter,
        String? token}) async {
    try {
      Map<String, String> headers = {
        "Content-type": "application/json",
        "Authorization": "Bearer",
        "Connection": "Keep-Alive",
        "Keep-Alive": "timeout=5, max=1000",
        "APIKEY": 'ffrbger3425tRqvs23@HR'

      };

      //  final prefs = await SharedPreferences.getInstance();
      // String userId = prefs.getString(AppSharedPreferences.userId) ?? "";
      //  String sessionId = prefs.getString(AppSharedPreferences.sessionId) ?? "";

      print("Headers: $headers");
      print("Url:  $url");
      print("Token:  $token");
      print("DictParameter: $dictParameter");

      BaseOptions options = BaseOptions(
          baseUrl: WebApiConstantAdmin.BASE_URL,
          receiveTimeout: const Duration(seconds: 10),
          connectTimeout: const Duration(seconds: 10),
          headers: headers,
          validateStatus: (_) => true);

      _dio.options = options;
      Response response = await _dio.get(url!, queryParameters: dictParameter);
      print("Response_headers: ${response.headers}");
      print("Response_data: ${response.data}");

      checkTokenStatus(response1: response.toString());

      return response;
    } catch (error) {
      print("Exception_Main: $error");
      return null;
    }
  }


  ///Post
  Future<Response?> requestPostApi(
      {required context, String? url,Map<String, dynamic>? dictParameter, String? token})
  async {
    Dio _dio = Dio();
    try {
      Map<String, String> headers = {
        'Accept': 'application/json',
        "Content-type": "application/json",
        "Authorization": 'Bearer $token',
        "APIKEY": 'ffrbger3425tRqvs23@HR'

      };

      print("Headers: $headers");
      print("Url:  $url");
      print("Token:  $token");
      print("formData: $dictParameter");
      var formData = FormData.fromMap(dictParameter!);

      BaseOptions options = BaseOptions(
          baseUrl: WebApiConstantAdmin.BASE_URL,
          receiveTimeout: const Duration(seconds: 20),
          connectTimeout: const Duration(seconds: 20),
          headers: headers);

      _dio.options = options;
      Response response = await _dio.post(url!,
          data: formData,
          options: Options(
            followRedirects: false,
            validateStatus: (status) => true,
            headers: headers,
          ));

      print("Response: $response");

      return response;
    } catch (error) {
      print("Exception_Main: $error");
      return null;
    }
  }


  ///Multipart

  Future<Response?> requestMultipartApi(
      {required context,
      String? url,
      Map<String, dynamic>? dictParameter,
      String? token}) async {
    try {
      Map<String, String> headers = {
        // "Content-type": "application/json",
        // "Authkey": WebApiConstantAdmin.AUTH_KEY,
        "Authorization": "Bearer $token",
        "Connection": "Keep-Alive",
        "Keep-Alive": "timeout=5, max=1000",
        "APIKEY": 'ffrbger3425tRqvs23@HR'

      };

      var formData = FormData.fromMap(dictParameter!);

      print("Headers: $headers");
      print("Url:  $url");
      print("Token:  $token");
      print("formData: ${formData.fields.toString()}");

      BaseOptions options = BaseOptions(
          baseUrl: WebApiConstantAdmin.BASE_URL,
          receiveTimeout: const Duration(seconds: 20),
          connectTimeout: const Duration(seconds: 20),
          headers: headers);

      _dio.options = options;
      Response response = await _dio.post(url!,
          data: formData,
          options: Options(
            followRedirects: false,
            validateStatus: (status) => true,
            headers: headers,
          ));

      print("Response: $response");

      checkTokenStatus(
          response1: response.toString(), statusCode: response.statusCode);

      return response;
    } catch (error) {
      print("Exception_Main: $error");
      return null;
    }
  }

  ///Check Token Status
  Future<void> checkTokenStatus({required String response1, statusCode}) async {
    bool isTokenExpired =
        response1.toString().contains("Expired token") || statusCode == 401;

  }

 }

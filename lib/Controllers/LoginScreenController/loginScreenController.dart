import 'package:eatwell/Controllers/ApiController/ApiController.dart';
import 'package:eatwell/Controllers/RouteController/RouteNames.dart';
import 'package:eatwell/Views/%20BottomNavigationBar/bottom_bar_screen.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../../Models/LoginModel.dart';
import '../ApiController/WebConstant.dart';

class LoginScreenController extends GetxController {
  @override
  void onInit() {
    emailCtrl.text = "haegyseverine@yahoo.fr";
    passwordCtrl.text = "Mesbounes4!";
    // TODO: implement onInit
    super.onInit();
  }

  RxBool isLoading = false.obs;
  ApiControllerAdmin _adminApiCtrl = ApiControllerAdmin();

  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();

  void onTapLoginBtn({required BuildContext context}) {
    if (emailCtrl.text.isNotEmpty && passwordCtrl.text.isNotEmpty) {
      loginAPiHit(context: context);
    } else {
      Fluttertoast.showToast(
          msg: 'All Fields are required', gravity: ToastGravity.TOP);
    }
  }

  void onTapGoogleBtn({required BuildContext context}) {}

  void onTapNewBae({required BuildContext context}) {
    Get.toNamed(signUpScreen);
  }

  LoginModel? loginData;

  Future<LoginModel?> loginAPiHit({
    required BuildContext context,
  }) async {
    changeEmptyValue(false);
    changeLoadingValue(true);
    changeNetworkValue(false);
    changeErrorValue(false);
    update();
    Map<String, String> dictparm = {
      "login": emailCtrl.text.toString(),
      "password": passwordCtrl.text.toString(),
    };

    String url = WebApiConstantAdmin.loginUrl;

    await _adminApiCtrl
        .loginApiHit(context: context, url: url, token: '', dictData: dictparm)
        .then((result) async {
      if (result != null) {
        try {
          if (result.success == 1) {
            loginData = result;
            update();
            Fluttertoast.showToast(msg: result.message ?? "");
              goToNextScreen(data: loginData, context: context);
            print("login api   ::::::: ${result.message}");

            Fluttertoast.showToast(msg: result.message ?? "");
            changeLoadingValue(false);
          } else {
            Fluttertoast.showToast(msg: result.message ?? "");
            changeLoadingValue(false);
            changeErrorValue(true);
          }
        } catch (_) {
          print("Exception : $_");
          Fluttertoast.showToast(msg: result.message ?? "");
          changeLoadingValue(false);
          changeErrorValue(true);
        }
      } else {
        Fluttertoast.showToast(msg: result?.message ?? "");

        changeLoadingValue(false);
        changeErrorValue(true);
      }
    });
    isLoading.value = false;
    update();
  }

  void changeLoadingValue(bool value) {
    isLoading.value = value;
    update();
  }

  void changeEmptyValue(bool value) {
    isEmpty = value;
    update();
  }

  void changeNetworkValue(bool value) {
    isNetworkError = value;
    update();
  }

  void changeErrorValue(bool value) {
    isError = value;
    update();
  }

  bool isError = false;
  bool isEmpty = false;
  bool isNetworkError = false;
  bool isSuccess = false;

  void goToNextScreen({LoginModel? data, required BuildContext context}) {
    if (data?.jwt != null) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BottomNavigationBarHome(),
          ));
      print(data?.jwt.toString());
    }

    isLoading.value = false;
    update();
  }
}

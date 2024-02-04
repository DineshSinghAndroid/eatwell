import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:eatwell/Controllers/ApiController/ApiController.dart';
import 'package:eatwell/Controllers/RouteController/RouteNames.dart';
import 'package:eatwell/main.dart';

import '../../Models/RegistrationModel.dart';
import '../ApiController/WebConstant.dart';

class RegisterScreenController extends GetxController{
  bool isLoading = false;
ApiControllerAdmin _adminApiCtrl = ApiControllerAdmin();
  TextEditingController emailCtrl =TextEditingController();
  TextEditingController nameCtrl =TextEditingController();
  TextEditingController passwordCtrl =TextEditingController();

  void onTapCreateAccount({required BuildContext context}) {
     if(emailCtrl.text.isNotEmpty && nameCtrl.text.isNotEmpty && passwordCtrl.text.isNotEmpty ){
       registerApiHit();
    }
    else{
      Fluttertoast.showToast(msg: 'All Fields are required',gravity: ToastGravity.TOP);
    }
  }

  void onTapGoogleBtn({required BuildContext context}) {}

  void onTapNewBae({required BuildContext context}) {
    Get.toNamed(loginScreen);
  }


  ///register api
  RegistrationModel? loginData;

  Future<RegistrationModel?> registerApiHit({
      BuildContext ?context,
  }) async {
    changeEmptyValue(false);
    changeLoadingValue(true);
    changeNetworkValue(false);
    changeErrorValue(false);
    changeSuccessValue(false);
    Map<String, String> dictparm = {
      "name": nameCtrl.text.toString(),
      "email": emailCtrl.text.toString(),
      "password": passwordCtrl.text.toString(),
    };

    String url = WebApiConstantAdmin.registerUrl;


    isLoading =false;
    update();
  }

  void changeSuccessValue(bool value) {
    isSuccess = value;
    update();
  }

  void changeLoadingValue(bool value) {
    isLoading  = value;
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

    goToNextScreen({RegistrationModel? data}) {
    if(data?.data?.name != ''){
      userName = data?.data?.name.toString()??"";
      Get.offAndToNamed(homeScreen);
    }

    isLoading = false;
    update();  }

  RxInt missOrMr = 1.obs;
  void misOrMrTap({required int box1or2}) {
      missOrMr.value = box1or2;
      update();
  }


}
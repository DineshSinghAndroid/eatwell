import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../../../Controllers/ApiController/ApiController.dart';
import '../../../Controllers/ApiController/WebConstant.dart';
import '../../../Models/ModelRecipesList.dart';

class HomeScreenController extends GetxController{
  bool isLoading = false;

  @override
  void onInit() {
    super.onInit();
    loginAPiHit();
  }


  List foodTitleList = [
    "Cookies au chocolate",
    "Cake la farine dde mais",
    "Crumble aux pommes",
    "Aubergine girlle sauce",
    "Cremeux de lentiles ","Cookies au chocolate",
    "Cake la farine dde mais",
    "Crumble aux pommes",
    "Aubergine girlle sauce",
    "Cremeux de lentiles ","Cookies au chocolate",
    "Cake la farine dde mais",
    "Crumble aux pommes",
    "Aubergine girlle sauce",
    "Cremeux de lentiles ","Cookies au chocolate",
    "Cake la farine dde mais",
    "Crumble aux pommes",
    "Aubergine girlle sauce",
    "Cremeux de lentiles ","Cookies au chocolate",
    "Cake la farine dde mais",
    "Crumble aux pommes",
    "Aubergine girlle sauce",
    "Cremeux de lentiles ",

  ];
  ApiControllerAdmin _adminApiCtrl = ApiControllerAdmin();
  ModelRecipesList? recipeModel;

   RxDouble imageIndex = 0.0.obs;


  Future<ModelRecipesList?> loginAPiHit({
    BuildContext? context,
  }) async {
    changeEmptyValue(false);
    changeLoadingValue(true);
    changeNetworkValue(false);
    changeErrorValue(false);
    update();
    Map<String, String> dictparm = {

    };

    String url = WebApiConstantAdmin.recipesUrl;

    await _adminApiCtrl.recipesApiHit(context: context, url: url, token: '', dictData: dictparm).then((result) async {
      if (result != null) {
        try {
          if (result.success == 1) {
            recipeModel = result;
            update();
            // Fluttertoast.showToast(msg: result.message ?? "");
            //goToNextScreen(data: recipeModel, context: context);
            // print("login api   ::::::: ${result.message}");
            //
            // Fluttertoast.showToast(msg: result.message ?? "");
            changeLoadingValue(false);
          } else {
            // Fluttertoast.showToast(msg: result.message ?? "");
            changeLoadingValue(false);
            changeErrorValue(true);
          }
        } catch (_) {
          print("Exception : $_");
          // Fluttertoast.showToast(msg: result.message ?? "");
          changeLoadingValue(false);
          changeErrorValue(true);
        }
      } else {
        // Fluttertoast.showToast(msg: result?.message ?? "");

        changeLoadingValue(false);
        changeErrorValue(true);
      }
    });
    isLoading = false;
    update();
  }

  void changeLoadingValue(bool value) {
    isLoading = value;
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



}
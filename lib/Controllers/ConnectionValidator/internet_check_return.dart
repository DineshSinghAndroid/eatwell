
import 'package:fluttertoast/fluttertoast.dart';

import 'ConnectionValidator.dart';

class InternetCheck {
  static check() async {
    bool checkInternet = await ConnectionValidator().check();
    if (!checkInternet) {
      Fluttertoast.showToast(msg: "No Internet");
      return;
    }
  }

  static Future<bool> checkStatus() async {
    bool checkInternet = await ConnectionValidator().check();
    if (!checkInternet) {
      return false;
    } else {
      return true;
    }
  }
}

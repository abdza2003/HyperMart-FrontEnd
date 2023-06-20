import 'dart:io';

checkInternet() async {
  try {
    var testInternet = await InternetAddress.lookup("berneshti.yesapp.uk");

    if (testInternet.isNotEmpty || testInternet[0].address.isNotEmpty) {
      return true;
    }
  } on SocketException catch (_) {
    return false;
  }
}

import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../models/get_contact_us_model.dart';
import '../home.dart';

class ApiProvider {

  static var baseUrl = 'https://api.vardaan.ndinfotech.com/';

  static Future<dynamic> GetContactUSApi() async {
  try {
  var url = "${baseUrl}api/Common/GetSupport";
  print("API URL profile: $url");

  // Create a custom HTTP client that ignores SSL errors
  HttpClient httpClient = HttpClient()
  ..badCertificateCallback =
  (X509Certificate cert, String host, int port) => true;
  IOClient ioClient = IOClient(httpClient);

  http.Response response = await ioClient.get(Uri.parse(url));
  print("Response: ${response.body}");

  if (response.statusCode == 200) {
  var GetContactUsModel = getContactUsModelFromJson(response.body);
  return GetContactUsModel;
  } else {
  print("Error: ${response.statusCode}");
  return null;
  }
  } catch (error) {
  print("Error: $error");
  return null;
  }
  }

  static Future<http.Response?> HelpEmployeeApi(
      BuildContext context, // Added context parameter
      String PhoneNumber,
      String Reason,
      ) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    int? userId = prefs.getInt("userId");
    if (userId == null) {
      throw Exception("User ID is not saved in SharedPreferences.");
    }
    //employeeId
    var url = "${baseUrl}api/Employee/AddEmployeeHelp";
    var body = jsonEncode({
      "Employee_id": "$userId",
      "PhoneNumber": PhoneNumber,
      "Reason": Reason,
    });

    print("profile dvr update");
    print(body);

    try {
      http.Response r = await http.post(
        Uri.parse(url),
        body: body,
        headers: {
          "Content-Type": "application/json",
        },
      ).timeout(const Duration(seconds: 10));

      print(r.body);
      print("Response help  before 200: ${r.body}");

      if (r.statusCode == 200) {
        var responseData = json.decode(r.body);
        print("Response help after 200: ${r.body}");

        // Show loading dialog
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (context) {
            return Center(
              child: CircularProgressIndicator(),
            );
          },
        );
        await Future.delayed(Duration(seconds: 1));
        //Get.back();
        Get.offAll(() => HomePage());

        // Show success toast
        Fluttertoast.showToast(
          msg: "Submit Help successfully!",
          backgroundColor: Colors.green,
          textColor: Colors.white,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.CENTER,
        );
      } else if (r.statusCode == 401) {
        Fluttertoast.showToast(
          msg: "Unauthorized access. Status code: ${r.statusCode}",
          backgroundColor: Colors.red,
          textColor: Colors.white,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
        );

        Get.snackbar('Error', r.body);
      } else {
        Fluttertoast.showToast(
          msg: "Failed to send feedback. Status code: ${r.statusCode}",
          backgroundColor: Colors.red,
          textColor: Colors.white,
          toastLength: Toast.LENGTH_LONG,
          gravity: ToastGravity.BOTTOM,
        );
        Get.snackbar('Error', r.body);
      }
      return r;
    } on TimeoutException catch (_) {
      Fluttertoast.showToast(
        msg: "Network connection slow or disconnected",
        backgroundColor: Colors.red,
        textColor: Colors.white,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
      );

      return null;
    } on SocketException catch (_) {
      Fluttertoast.showToast(
        msg:
        "Network error: Unable to resolve host. Please check your internet connection.",
        backgroundColor: Colors.red,
        textColor: Colors.white,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
      );

      return null;
    } catch (error) {
      print('Network error: $error');

      Fluttertoast.showToast(
        msg: "Network error: $error",
        backgroundColor: Colors.red,
        textColor: Colors.white,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
      );

      return null;
    }
  }
}
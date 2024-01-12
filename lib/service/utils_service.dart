
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';


class Utils{
  static showToast(String msg){
    Fluttertoast.showToast(msg: msg,
    toastLength: Toast.LENGTH_SHORT,
    gravity: ToastGravity.BOTTOM,
    backgroundColor: Colors.grey,
      textColor: Colors.white,
      timeInSecForIosWeb: 1,
      fontSize: 16.0
    );
  }

  static Future<void>  makePhoneCall(String phoneNumber) async {
    final Uri launchUri=Uri(
      scheme: "tel",
        path:phoneNumber
    );
    await launchUrl(launchUri);

  }

  static Future<void> launchInBrowser(Uri url) async {
    if(await launchUrl(url,mode: LaunchMode.externalApplication)){
    }else{
     throw " Coulnd not launch $url";
    }
  }




}

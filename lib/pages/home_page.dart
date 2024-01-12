import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_bigenner/service/utils_service.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Module 6"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(onPressed: (){
            }, child: const Text("str_pacakages").tr()),
            OutlinedButton(onPressed: (){
            }, child: const Text("str_localization").tr()),
            OutlinedButton(onPressed: (){
            }, child: Text("str_local_database").tr()),
            OutlinedButton(onPressed: (){
            }, child: Text("str_networking").tr()),
            Row(
              children: [
                Expanded(child: OutlinedButton(onPressed: (){
                  context.setLocale(Locale('en','US'));
                }, child: Text("English"))),
                SizedBox(width: 10,),
                Expanded(child: OutlinedButton(onPressed: (){
                  context.setLocale(Locale('ru', 'RU'));
                }, child: Text("Russian"))),
                SizedBox(width: 10,),
                Expanded(child: OutlinedButton(onPressed: (){
                  context.setLocale(Locale('uz','UZ'));
                }, child: Text("Uzbek"))),

              ],
            )

          ],
        ),
      ),
    );
  }
}

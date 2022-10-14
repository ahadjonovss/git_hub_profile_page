import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:git_hub_api/models/infos_model.dart';
import 'package:git_hub_api/pages/profile_page_wdg.dart';


import 'package:http/http.dart' as http;

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}
AccountInfos? info;
int current_page=3;
List<Widget> pages=[
  Container(),
  Container(),
  Container(),
  profilePage(info)
];
class _MainPageState extends State<MainPage> {
  String url="https://api.github.com/users/ZayniddinMamarasulov";

  Future<AccountInfos?> getData() async{
    var response = await http.get(Uri.parse(url));

    if(response.statusCode==200){
      Map<dynamic,dynamic> json= jsonDecode(response.body) as Map<dynamic,dynamic>;
      return AccountInfos.fromJson(json);
    }
    return null;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: FutureBuilder<AccountInfos?>(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot<AccountInfos?>snapshot) {
          if(snapshot.connectionState==ConnectionState.waiting){
            return Center(child: Container(child: CircularProgressIndicator(),),);
          }
          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          }
          if(snapshot.hasData){
            info=snapshot.data;
            return pages[3];
          }
          return Container();
        }),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: current_page,
        onTap: (page){
          setState(() {
            current_page=page;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "Notification"),
          BottomNavigationBarItem(icon: Icon(Icons.explore_sharp),label: "Explore"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Profile"),
        ],
      ),

    );
  }
}

import 'package:flutter/material.dart';
import 'package:git_hub_api/pages/profile_page_wdg.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}
int current_page=3;
List<Widget> pages=[
  Container(),
  Container(),
  Container(),
  profilePage()
];
class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: pages[current_page],
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

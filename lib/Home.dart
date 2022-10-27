import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Page/HomeScreen.dart';
import 'Page/MyAccountPage.dart';
import 'Page/SchedulePage.dart';
import 'Page/SecondPage.dart';
import 'package:flutter/material.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int currentTab = 0;
  final List<Widget> screens = [
    HomeScreen(),
    SecondPage(),
    MyAccountPage(),
    SchedulePage(),
  ];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = HomeScreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: Text(
          "Citynect",
          style: TextStyle(
          color: Colors.black,
          fontSize: 30,
          )
        ),
          backgroundColor : Colors.grey.shade100,
          elevation: 0,
          actions: <Widget>[
          IconButton(
          color: Colors.grey.shade700,
              icon: Icon(FontAwesomeIcons.bell,size: 25,),
          onPressed: () {}),
            IconButton(
            color: Colors.grey,
                icon : Icon(FontAwesomeIcons.facebookMessenger,size: 25,),
     //    Icon(Icons.message,size: 30,),
          onPressed: () {}
          ),
        ],
      ),
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton:
      Container(
        height: MediaQuery.of(context).size.height*0.09,
        child: FittedBox(
          child: FloatingActionButton(
            child: Icon(Icons.add_circle_outline_sharp,size: 40,),
            onPressed: () {},
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey.shade100,
        notchMargin: 10,
        child: Container(
          height: 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:<Widget> [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    minWidth: 40,
                      onPressed: () {
                      setState(() {
                        currentScreen = HomeScreen();
                        currentTab = 0;
                      });
                      },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.home_outlined,
                          color: currentTab == 0 ? Colors.blue : Colors.grey,
                          size: 45,
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = SecondPage();
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.compass,
                          color: currentTab == 1 ? Colors.blue : Colors.grey,
                          size: 40,
                        )
                      ],
                    ),
                  ),
                  SizedBox(width:MediaQuery.of(context).size.width*0.22,),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = SchedulePage();
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.calendar,
                          color: currentTab == 2 ? Colors.blue : Colors.grey,
                          size: 40,
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen = MyAccountPage();
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          FontAwesomeIcons.circleUser,
                         // Icons.person,
                          color: currentTab == 3 ? Colors.blue : Colors.grey,
                          size: 40,
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      );
  }
}

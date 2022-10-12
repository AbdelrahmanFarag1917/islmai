import 'package:flutter/material.dart';


class HomeScreen extends StatefulWidget {
  static const String routeName= 'HomeScreen';
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  'assets/images/default_bg.png'
              ),
              fit: BoxFit.fill)),
      child: Scaffold(
        appBar: AppBar(
          title: Container(alignment: Alignment.center,
              child: Text('Islami', )),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) {
            selectedIndex = index;
            setState(() {});
          },
          showSelectedLabels: true,
          items: [
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).backgroundColor
                     ,
                label: 'Quran',
                icon: ImageIcon(AssetImage('assets/images/icon_quran.png'))),
            BottomNavigationBarItem(
                backgroundColor: Theme.of(context).backgroundColor
                ,
                label: 'Quran',
                icon: ImageIcon(AssetImage('assets/images/icon_quran.png'))),
          ],
        ),
        body: tabs[selectedIndex],
      ),
    );
  }

  List<Widget> tabs = [

  ];
}


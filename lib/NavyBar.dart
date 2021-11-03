// ignore: file_names
import 'package:flutter/material.dart';

class NavyBar extends StatefulWidget {
  const NavyBar({ Key? key }) : super(key: key);

  @override
  _NavyBarState createState() => _NavyBarState();
}

class _NavyBarState extends State<NavyBar> {
  // ignore: non_constant_identifier_names
  int_currentIndex = 0;
  PageController _pageController;

  @override
  // ignore: override_on_non_overriding_member
  void @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Nav Bar")),
      body: SizedBox.expand(
        child: PageView(
          controller: _pageController,
          onPageChanged: (index){
            setState(() => _currentIndex = index);
           },
           children: <Widget>[
             Container(
               color: Colors.blueGrey,
             ),
             Container(
               color: Colors.red
             ),
             Container(
               color: Colors.green,
             ),
             Container(
               color: Colors.blue,
             ),
           ],
          ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        SelectedIndex: _currentIndex,
        onItemSelected: (index) {
          setState(() => _currentIndex = index);
          _pageController.jumpToPage(index); 
        },
        items: <BottomNavyBarItem>[
          BottomNavigationBarItem(tittle: Text('Item 1'), icon: Icon(Icons.home)),
          BottomNavigationBarItem(tittle: Text('Item 2'), icon: Icon(Icons.apps)),
          BottomNavigationBarItem(
            tittle: Text('Item 3'), icon: Icon(Icons.chat_bubble)),
            BottomNavigationBarItem(tittle: Text('Item 4'), icon: Icon(Icons.settings)),
        ],
        },
      ),  
    );
  }
}
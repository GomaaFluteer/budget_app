// import 'package:budget_app/main_screens/home_screen.dart';
// import 'package:flutter/material.dart';

// class CreatNavigationBar extends StatefulWidget {
//     static const route = "CreatNavigationBar";

//   @override
//   _CreatNavigationBarState createState() => _CreatNavigationBarState();
// }

// class _CreatNavigationBarState extends State<CreatNavigationBar> {
//   int _selectedIndex = 0;
//   void _onItemTap(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   List<Widget> pages = <Widget>[HomeScreen()];

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 80,
//       child: BottomNavigationBar(
//         backgroundColor: Colors.white,
//         selectedItemColor: Colors.blue,
//         unselectedItemColor: Color(0xffDADCE0),
//         currentIndex: _selectedIndex,
//         selectedFontSize: 13.0,
//         onTap: _onItemTap,
//         items: [
//           BottomNavigationBarItem(
//             label: 'copy right',
//             icon: Icon(Icons.copyright_outlined)
//             ,
//           ),
//            BottomNavigationBarItem(
//             label: 'copy right',
//             icon: Icon(Icons.copyright_outlined)
//             ,
//           ),
        
//         ],
//       ),
//     );
//   }
// }
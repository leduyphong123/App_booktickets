import 'package:booktickets/screens/home_screen.dart';
import 'package:booktickets/screens/profile_screen.dart';
import 'package:booktickets/screens/search_screen.dart';
import 'package:booktickets/screens/ticket_screen.dart';
import 'package:booktickets/utils/app_style.dart';
import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
     const SearchScreen(),
     const TicketScreen(),
     const ProFileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text("my tickets"),
      // ),
      body: Center(child: _widgetOptions[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex, // giá trị index của icon
          onTap: _onItemTapped, //sử lý chạm vào
          elevation: 10,
          showSelectedLabels: false, //tắt chữ của icon
          showUnselectedLabels: false, // tắt chữ của icon
          selectedItemColor: const Color.fromARGB(
              255, 46, 46, 222), //màu biểu tượng khi click vào
          unselectedItemColor: const Color(0xFF526480), //màu tất cả icon
          type: BottomNavigationBarType.fixed, // làm icon đứng yên
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(FluentIcons.home),
                activeIcon: Icon(FluentIcons.home),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                activeIcon: Icon(Icons.search),
                label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(FluentIcons.ticket),
                activeIcon: Icon(FluentIcons.ticket),
                label: "Ticket"),
            BottomNavigationBarItem(
                icon: Icon(FluentIcons.reminder_person),
                activeIcon: Icon(FluentIcons.reminder_person),
                label: "Profile")
          ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:one_drop/screens/main_screens/today.dart';
import 'package:one_drop/screens/main_screens/faqs.dart';
import 'package:one_drop/screens/main_screens/coach.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  List pages = [
    Today(),
    Coach(),
    FAQs(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF1F1E26),
        appBar: AppBar(
          backgroundColor: const Color(0xFF37343E),
          toolbarHeight: 70,
          title: const Text(
            'Today',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: const [
            Icon(
              Icons.one_k,
              size: 40,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 10.0,
              ),
              child: Icon(
                Icons.account_box,
                size: 40,
              ),
            ),
          ],
        ),

        body: pages[_currentIndex],

        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: const Color(0xFF37343E),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.today),
              label: 'Hello',
              backgroundColor: Color(0xFF37343E),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.today),
              label: 'Hello',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.today),
              label: 'Hello',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.today),
              label: 'Hello',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.today),
              label: 'Hello',
            ),
          ],
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },
        ),
      ),
    );
  }
}

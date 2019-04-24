import 'package:coba/pages/dompet.dart';
import 'package:coba/pages/home.dart';
import 'package:coba/pages/pesanan.dart';
import 'package:coba/pages/referal.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterApp',
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  PageController pageController;
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: new PageView(
          children: <Widget>[Home(), Pesanan(), Dompet(), Referal()],
          controller: pageController,
          onPageChanged: onPageChanged,
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                IconData(0xe800, fontFamily: 'home'),
              ),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                IconData(0xf290, fontFamily: 'bag'),
              ),
              title: Text('Pesanan'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                IconData(0xe800, fontFamily: 'wallet'),
              ),
              title: Text('Dompet'),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                IconData(0xe800, fontFamily: 'present'),
              ),
              title: Text('Referral'),
            ),
          ],
          onTap: onTap,
          currentIndex: page,
          fixedColor: Colors.black,
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: this.page);
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void onTap(int index) {
    pageController.animateToPage(index,
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  void onPageChanged(int page) {
    setState(
      () {
        this.page = page;
      },
    );
  }
}
